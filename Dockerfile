FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

ENV TOOL_VERSION=1.0
ENV CONTAINER_VERSION=1.0

LABEL tool_version="${TOOL_VERSION}"
LABEL version="${CONTAINER_VERSION}"

RUN apt-get -y update && apt-get -y install git python-dev python-tk python-pip wget
RUN pip install --upgrade pip
RUN pip install pandas

#install npc2batman
RUN pip install git+https://github.com/jianlianggao/npc2batman.git
#ADD npc2batman.sh /usr/local/bin
ADD npc2batman.sh /
#RUN chmod +x /usr/local/bin/npc2batman.sh
#RUN chmod +x /usr/local/bin/npc2batman.py
#WORKDIR /usr/src/npc2batman
#RUN cp /usr/local/bin/npc2batman.sh /usr/src/npc2batman
RUN chmod +x ./npc2batman.sh
RUN cp /usr/local/bin/npc2batman.py /

ENTRYPOINT ["./npc2batman.sh"]
