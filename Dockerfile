FROM cloudogu/reveal.js:4.4.0-r5 as base

FROM base as aggregator
ENV TITLE='GitOps: is this something for me - or not?'
ENV THEME_CSS='cloudogu.css'
#ENV THEME_CSS='cloudogu-black.css'
ENV WIDTH='1280'
USER root
# Remove demo slides before templating
RUN rm -rf  /reveal/docs
COPY . /reveal
RUN if [ -d  /reveal/resources/ ]; then mv /reveal/resources/ /; fi
RUN /scripts/templateIndexHtml

FROM base
ENV SKIP_TEMPLATING='true'
COPY --from=aggregator --chown=nginx /reveal /reveal
