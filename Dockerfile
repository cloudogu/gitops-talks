FROM cloudogu/reveal.js:4.1.0-r2 as base

FROM base as aggregator
ENV TITLE='Continuous Operations with GitOps – an Introduction'
ENV THEME_CSS='css/cloudogu-black.css'
USER root
# Remove demo slides before templating
RUN rm -rf  /reveal/docs
COPY . /reveal
RUN mv /reveal/resources/ /
RUN /scripts/templateIndexHtml

FROM base
ENV SKIP_TEMPLATING='true'
COPY --from=aggregator --chown=nginx /reveal /reveal