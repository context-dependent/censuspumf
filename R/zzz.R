#' @importFrom haven zap_missing zap_labels as_factor
#' @importFrom dplyr mutate across where
#' @export
#' @rdname censuspumf
encode_labels <- function(d) {
  d |> haven::zap_missing() |> 
    mutate(
      across(where(is.double), haven::zap_labels), 
      across(where(is.integer), haven::as_factor)
    )
}