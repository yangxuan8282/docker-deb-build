#FROM debian
FROM arm64v8/debian
#FROM arm32v7/debian

COPY *.sh /root/

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y ccache \
  && export PATH=/usr/lib/ccache:$PATH

RUN apt-get install -y sudo fakeroot \
  && useradd -g sudo -ms /bin/bash pi \
  && echo "pi:raspberry" | chpasswd \
  && echo "pi ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/g' /home/pi/.bashrc \
  && su pi sh -c 'mkdir -p /home/pi/work /home/pi/bin' \
  && mv /root/*.sh /home/pi/bin/ \
  && chown pi /home/pi/bin/*.sh \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/pi/work
USER pi
