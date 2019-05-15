FROM python:3.6
MAINTAINER Jojo "zzc185@foxmail.com"

RUN mkdir -p /root/cn_ocr
RUN apt update 
RUN apt install -y openssh-server
# RUN apt install -y vim
RUN echo "root:123456" |chpasswd
# RUN /bin/sed -i 's/.*session.*required.*pam_loginuid.so.*/session optional pam_loginuid.so/g' /etc/pam.d/sshd
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN echo "/etc/init.d/ssh start" > /root/cn_ocr/startssh.sh
RUN echo "/bin/bash" >> /root/cn_ocr/startssh.sh
RUN chmod +x /root/cn_ocr/startssh.sh

# RUN /bin/bash `cd /root && mkdir -p cn_ocr && cd cn_ocr && apt update && apt install openssh-server`
EXPOSE 22
CMD ["/bin/bash", "/root/cn_ocr/startssh.sh"]
