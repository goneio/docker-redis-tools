FROM gone/marshall:latest
RUN apt-get -qq update && \
    apt-get -qy upgrade && \
    apt-get -yqq install --no-install-recommends \
        redis-tools \
        && \
    apt-get autoremove -yqq && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*