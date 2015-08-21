FROM ubuntu:14.04

# Use mirror
RUN sed -i.bak -e "s%http://archive.ubuntu.com/ubuntu/%http://ftp.jaist.ac.jp/ubuntu/%g" /etc/apt/sources.list

FROM ipython/scipystack

RUN apt-get update && apt-get install -y openssh-server postgresql-client libpq-dev

RUN pip2 install psycopg2
RUN pip3 install psycopg2

# ssh setting
RUN mkdir /var/run/sshd
RUN echo 'root:root' | chpasswd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

ENV NOTVISIBLE "in users profile"
RUN echo "export VISIBLE=now" >> /etc/profile

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
