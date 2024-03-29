#!/usr/bin/env Rscript

#
#  This file is part of the `OmnipathR` R package
#
#  Copyright
#  2018-2024
#  Saez Lab, Uniklinik RWTH Aachen, Heidelberg University
#
#  File author(s): Alberto Valdeolivas
#                  Dénes Türei (turei.denes@gmail.com)
#                  Attila Gábor
#
#  Distributed under the MIT (Expat) License.
#  See accompanying file `LICENSE` or find a copy at
#      https://directory.fsf.org/wiki/License:Expat
#
#  Website: https://r.omnipathdb.org/
#  Git repo: https://github.com/saezlab/OmnipathR
#


#' Acquire a cookie if necessary
#'
#' @param curl_verbose Logical. Perform CURL requests in verbose mode for
#'     debugging purposes.
#' @param url Character. URL to download to get the cookie.
#' @param init_url Character. An initial URL to download to get the cookie,
#'     before downloading ``url`` with the cookie.
#' @param post List: HTTP POST parameters.
#' @param payload Data to send as payload.
#' @param init_post List: HTTP POST parameters for ``init_url``.
#' @param init_payload Data to send as payload with ``init_url``.
#'
#' @importFrom magrittr %>% %T>%
#' @importFrom readr read_tsv cols
#' @importFrom curl new_handle handle_setopt curl_fetch_memory handle_cookies
#' @importFrom logger log_trace
#' @export
#'
#' @return A list with cache file path, cookies and response headers.
cookie <- function(
    url,
    init_url = NULL,
    post = NULL,
    payload = NULL,
    init_post = NULL,
    init_payload = NULL,
    curl_verbose = FALSE
){

    .slow_doctest()

    # NSE vs. R CMD check workaround
    name <- value <- login_url <- NULL

    if(is.null(init_url)) {
        init_url <- url
        init_post %<>% if_null(post)
        init_payload %<>% if_null(payload)
    }

    version <- omnipath_cache_latest_or_new(
        url = url,
        post = post,
        payload = payload,
        create = FALSE
    )

    result <- list(cache = version)

    if(is.null(version) || version$status != CACHE_STATUS$READY){

        handle <-
            new_handle() %>%
            handle_setopt(
                url = init_url,
                verbose = curl_verbose,
                followlocation = TRUE,
                httpheader = 'Content-Type: application/json;charset=utf-8',
                postfields = payload,
                post = TRUE
            )

        login_resp <- curl_fetch_memory(login_url, handle)

        token <-
            handle %>%
            handle_cookies %>%
            filter(name == 'access_token') %>%
            pull(value)

        # the token is also available in the response:
        # token <-
        #     login_resp$content %>%
        #     rawToChar %>%
        #     parse_json %>%
        #     `$`(token)

        log_trace('InBioMap token: %s', token)

    }

    # doing the actual download or reading from the cache
    archive_extractor(
        url_key = 'inbiomap',
        path = 'InBio_Map_core_2016_09_12/core.psimitab',
        reader = read_tsv,
        reader_param = list(
            col_types = cols(),
            col_names = c(
                'id_a',
                'id_b',
                'id_alt_a',
                'id_alt_b',
                'synonyms_a',
                'synonyms_b',
                'detection_methods',
                'ref_first_authors',
                'references',
                'organism_a',
                'organism_b',
                'interaction_types',
                'databases',
                'database_ids',
                'score',
                'complex_expansion'
            ),
            progress = FALSE
        ),
        curl_verbose = curl_verbose,
        # this is passed to curl::handle_setopt
        httpheader = sprintf('Cookie: access_token=%s', token),
        resource = 'InWeb InBioMap'
    ) %T>%
    load_success()

}


#' @noRd
post_payload <- function(post = NULL, payload = NULL) {

}
