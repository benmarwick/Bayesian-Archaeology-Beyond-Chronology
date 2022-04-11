FROM rocker/binder:4.0.0
LABEL maintainer='Ben Marwick'
USER root
COPY . ${HOME}
RUN chown -R ${NB_USER} ${HOME}
USER ${NB_USER}



RUN  R --vanilla -s -e "options(repos = list(CRAN = 'http://cran.rstudio.com'));  install.packages(c('tidyverse', 'here', 'kableExtra', 'HDInterval', 'ggrepel'));"
RUN  exit 0
