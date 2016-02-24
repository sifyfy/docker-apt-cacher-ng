#--------------------------------------------------#
# Base
#--------------------------------------------------#

FROM ubuntu:14.04

#--------------------------------------------------#
# Disable interactive actions
#--------------------------------------------------#

ENV DEBIAN_FRONTEND noninteractive

#--------------------------------------------------#
# Update
#--------------------------------------------------#

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get clean

#--------------------------------------------------#
# Setup apt-cacher-ng
#--------------------------------------------------#

RUN apt-get install -y apt-cacher-ng

#--------------------------------------------------#
# Entrypoint
#--------------------------------------------------#

ENTRYPOINT ["apt-cacher-ng", "ForeGround=1"]