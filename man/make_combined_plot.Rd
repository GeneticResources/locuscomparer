% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/locuscompare.R
\name{make_combined_plot}
\alias{make_combined_plot}
\title{Generated a combined plot with two locuszoom plots and a locuscompare
plot. Each locuszoom plot represent an association study.}
\usage{
make_combined_plot(merged, title1, title2, ld, chr, snp = NULL,
  combine = TRUE, legend = TRUE, legend_position = c("bottomright",
  "topright", "topleft"), lz_ylab_linebreak = FALSE)
}
\arguments{
\item{merged}{(data.frame) An input data.frame which has the following
columns: rsid, pval1 (p-value for study 1), logp1 (p-value for study 2),
logp1 (log p-value for study 1), logp2 (log p-value for study 2), chr, pos.
See the example for `get_lead_snp()` on how to generate this data.frame.}

\item{title1}{(string) The title for the x-axis.}

\item{title2}{(string) The title for the y-axis.}

\item{ld}{(data.frame) The output from `retrieve_LD()`.}

\item{chr}{(string) Chromosome name. e.g. '22'. Notice that the name should not contain 'chr'.}

\item{snp}{(string, optional) SNP rsID. If NULL, the function will select the lead SNP. Default: NULL.}

\item{combine}{(boolean, optional) Should the three plots be combined into one plot? If FALSE, a list of
three plots will be returned. Default: TRUE.}

\item{legend}{(boolean, optional) Should the legend be shown? Default: TRUE.}

\item{legend_position}{(string, optional) Either 'bottomright','topright', or 'topleft'. Default: 'bottomright'.}

\item{lz_ylab_linebreak}{(boolean, optional) Whether to break the line of y-axis of the locuszoom plot.
If FALSE, the y-axis title and '-log10(p-value)'. will be on the same line. Default: FALSE.}
}
\description{
Generated a combined plot with two locuszoom plots and a locuscompare
plot. Each locuszoom plot represent an association study.
}
\examples{
# The data.frame `merged` comes from the example of `add_label()`.
# the data.frame `ld` comes from the example for `retrieve_LD()`.
make_combined_plot(merged, 'GWAS', 'eQTL', ld, chr)
}
