ARG NDK_VER=r21e
FROM jwduck/android-ndk:${NDK_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    LANGUAGE=C.UTF-8 \
    TZ=UTC

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# ------------------------------------------------------
# --- Install required tools

RUN apt-get update -qq && \
    apt-get install -q -y ca-certificates cmake doxygen git python && \
    apt-get clean

# ------------------------------------------------------
# --- Cleanup and rev num
