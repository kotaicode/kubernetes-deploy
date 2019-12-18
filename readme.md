# docker image for kubernetes deployments

this image is intended to be used as part of deployment pipelines, which directly use kubectl and helm to deploy to kubernetes clusters.
it contains:
- kubectl
- helm
- jinja2 (for templating)
