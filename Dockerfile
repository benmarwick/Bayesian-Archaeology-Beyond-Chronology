# get the base image, the rocker/verse has R, RStudio and pandoc

FROM rocker/verse:4.0.3

# required

MAINTAINER Ben Marwick <bmarwick@uw.edu>

WORKDIR /Bayesian-Archaeology-Beyond-Chronology

COPY . /Bayesian-Archaeology-Beyond-Chronology

# go into the repo directory

RUN . /etc/environment \

  && R -e "install.packages(c('here', 'kableExtra', 'HDInterval', 'ggrepel'), repos = c(CRAN = 'https://cloud.r-project.org'))" \

  # render the manuscript into a docx, you'll need to edit this if you've

  # customised the location and name of your main Rmd file

  # render the manuscript into output format:

  && R -e "rmarkdown::render('BeyondChronology.Rmd')"
