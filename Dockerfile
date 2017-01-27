FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get -y update && apt-get -y install git python-dev python-tk python-pip wget
RUN pip install --upgrade pip
RUN pip install pandas

#install npc2batman
WORKDIR /usr/src
RUN pip install git+https://github.com/jianlianggao/npc2batman.git
WORKDIR /usr/src/npc2batman
RUN cp /usr/local/bin/npc2batman.py /usr/src/npc2batman

ENTRYPOINT ["/bin/sh"]
