#' Custom HTML fragment output format with syntax highlighting
#'
#' @export
#' @import rmarkdown
html_fragment_custom <-function(
        number_sections = FALSE,
        section_divs = TRUE,
        fig_width = 7,
        fig_height = 5,
        fig_retina = 2,
        fig_caption = TRUE,
        dev = "png",
        df_print = "default",
        mathjax = TRUE,
        includes = NULL,
        keep_md = FALSE,
        md_extensions = NULL,
        pandoc_args = NULL,
        ...
    ) {
    if (mathjax) {
        pandoc_args <- c(pandoc_args, "--mathjax")
    }

    html_document(
        number_sections = number_sections, fig_width = fig_width,
        fig_height = fig_height, fig_retina = fig_retina,
        fig_caption = fig_caption, dev = dev, df_print = df_print,
        keep_md = keep_md, md_extensions = md_extensions,
        pandoc_args = pandoc_args, includes = includes,
        mathjax = NULL, section_divs = section_divs, highlight = "pygments",
        theme = NULL, ...,
        template = rmarkdown:::pkg_file("rmd/fragment/default.html")
    )
}
