FROM python:3.6
MAINTAINER Jojo "zzc185@foxmail.com"

ENV OCR_ROOT_DIR /root/cn_ocr

RUN mkdir -p ${OCR_ROOT_DIR}

RUN apt update \
    && apt install -y openssh-server git vim
# New add
RUN pip install Pillow  

RUN echo "root:123456" |chpasswd
WORKDIR ${OCR_ROOT_DIR}
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config \
    && echo "/etc/init.d/ssh start" > startssh.sh \
    && echo "/bin/bash" >> startssh.sh \
    && chmod +x startssh.sh

EXPOSE 22
ENTRYPOINT ["/bin/bash", "/root/cn_ocr/startssh.sh"]
CMD ["/bin/bash"]   