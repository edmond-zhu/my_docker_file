FROM ubuntu:18.04
LABEL maintainer "jwduck (e_matthews1@126.com)"


# ------------------------------------------------------
# --- Install required tools
RUN apt-get update -qq && \
    apt-get install -q -y git npm && \
    apt-get clean

# ------------------------------------------------------
# --- Playground
# checkout source code
ENV \
    PLAYGROUND_DIR=/playground
RUN \
    git clone https://github.com/edmond-zhu/playground.git ${PLAYGROUND_DIR} && \
    cd ${PLAYGROUND_DIR} && \
    npm i && \
    npm run build
RUN printf '#!/bin/sh\ncd ${PLAYGROUND_DIR}\nnpm run serve\n' >/init.sh && chmod 777 /init.sh

#expose port
EXPOSE 8080

# ------------------------------------------------------
# --- Entrypoint
WORKDIR ${PLAYGROUND_DIR}
ENTRYPOINT ["/init.sh"]
