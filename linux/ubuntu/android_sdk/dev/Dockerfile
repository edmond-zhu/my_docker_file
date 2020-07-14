ARG NDK_VER=r20b
FROM jwduck/android-ndk:${NDK_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

# ------------------------------------------------------
# --- Install required tools

RUN apt-get update -qq && \
    apt-get install -q -y ca-certificates cmake doxygen git python && \
    apt-get clean

# ------------------------------------------------------
# --- Cleanup and rev num
