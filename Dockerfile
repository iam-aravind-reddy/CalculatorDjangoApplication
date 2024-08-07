FROM centos:latest

WORKDIR /project

COPY calculator /project
COPY requirements.txt /project

RUN cd /etc/yum.repos.d/ && \
    sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-* && \
    cd ../../../project && \
    yum update -y && \
    yum install epel-release -y && \
    yum install python3 python3-pip -y && \
    pip3 install -r requirements.txt




ENTRYPOINT ["python3"]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]
