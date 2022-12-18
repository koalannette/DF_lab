FROM ubuntu:22.04
COPY README.md /
WORKDIR /APPS
COPY task-docker/cmake-with-flask/ .
RUN echo "echo Hello World" > /bin/print_hello \
    && chmod +x /bin/print_hello \
    && apt-get update \
    && apt-get install git cmake build-essential python3 python3-pip -y \
    && pip install flask \
    && cmake . \ 
    && make \
    && useradd -ms /bin/sh 'devops2022user'
CMD ["python3", "app.py", "--host", "0.0.0.0", "--port", "8898"]

EXPOSE 8898
