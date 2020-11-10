# Original image size: 785MB
# Optimized (this one): 575MB

# Based on the node LTS image with Alpine

FROM node:lts-alpine

ENV GATSBY_TELEMETRY_DISABLED=1

# Install cURL, Git, node.js, Gatsby CLI and Netlify CLI

RUN apk add git && \
    npm install -g gatsby-cli netlify-cli && \
    netlify --telemetry-disable

WORKDIR /Projects

# A non-root user is not configured because the user may
# wish to install further tools themselves, such as an IDE.

# When the container is run, open the Alpine terminal rather than the node CLI

CMD ["/bin/sh"]
