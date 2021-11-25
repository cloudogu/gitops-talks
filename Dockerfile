FROM cloudogu/reveal.js:4.2.0-r1 as base

FROM base as aggregator
ENV TITLE='GitOps: Introduction to Continuous Operations with Kubernetes'
ENV THEME_CSS='cloudogu-black.css'
ENV ADDITIONAL_PLUGINS='RevealTagCloud' 
ENV ADDITIONAL_SCRIPT='<script src="plugin/tagcloud/tagcloud.js"></script>'
USER root
# Remove demo slides before templating
RUN rm -rf  /reveal/docs
COPY . /reveal
RUN mv /reveal/resources/ /
RUN /scripts/templateIndexHtml

FROM base
ENV SKIP_TEMPLATING='true'
COPY --from=aggregator --chown=nginx /reveal /reveal