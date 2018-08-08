FROM arm32v7/debian

ADD build.sh /root/

RUN apt-get install -y ccache \
  && export PATH=/usr/lib/ccache:$PATH

RUN apt-get install -y sudo fakeroot \
  && useradd -g sudo -ms /bin/bash pi \
  && echo "pi:raspberry" | chpasswd \
  && echo "pi ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers \
  && sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/g' /home/pi/.bashrc \
  && su pi sh -c 'mkdir -p /home/pi/work' \
  && mv /root/build.sh /home/pi/work/ \
  && chown pi /home/pi/work/build.sh \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /home/pi/work
USER pi
