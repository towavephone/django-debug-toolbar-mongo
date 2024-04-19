FROM python:3.8

COPY requirements.txt /app/
RUN pip3 install -r /app/requirements.txt -i http://mirrors.aliyun.com/pypi/simple --trusted-host mirrors.aliyun.com

COPY . /app/
WORKDIR /app

EXPOSE 5001
CMD ["/bin/sh", "-c", "/app/example/control.sh"]
