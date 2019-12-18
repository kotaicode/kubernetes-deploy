FROM alpine:3

RUN apk add --update --no-cache curl python py-pip git make bash

# install kubectl
ENV KUBECTL_VERSION=1.17.0
RUN curl -LO -o kubectl https://storage.googleapis.com/kubernetes-release/release/v$KUBECTL_VERSION/bin/linux/amd64/kubectl
RUN chmod u+x kubectl
RUN mv kubectl /usr/local/bin

# install helm
ENV HELM_VERSION=3.0.2
RUN curl -LO https://get.helm.sh/helm-v$HELM_VERSION-linux-amd64.tar.gz
RUN tar -xzvf helm-v$HELM_VERSION-linux-amd64.tar.gz
RUN mv linux-amd64/helm /usr/local/bin/helm

# install jinja2 for templating
RUN pip install jinja2-cli[yaml]==0.6.0
