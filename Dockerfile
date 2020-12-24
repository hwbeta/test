FROM balenalib/rpi-raspbian:buster-20201223

# Install required packages
RUN apt-get update -q \
  && DEBIAN_FRONTEND=noninteractive apt-get install -yq --no-install-recommends \
      build-essential \
      ca-certificates \
      locales \
      python3-pip \
      python3-dev \
      python3-setuptools \
      python3-wheel

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN update-ca-certificates -f

RUN pip3 install --upgrade -Iv pip

