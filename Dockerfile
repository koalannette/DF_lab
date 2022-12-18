FROM ubuntu:22.04
COPY README.md /
WORKDIR /APPS
COPY task-docker/cmake-with-flask/ .
RUN echo "echo Hello World" > /bin/print_hello
RUN chmod +x /bin/print_hello 
RUN apt-get update 
RUN apt-get install git cmake build-essential python3 python3-pip -y 
RUN pip install flask
RUN cmake . 
RUN make 
RUN useradd -ms /bin/sh 'devops2022user'
CMD ["python3", "app.py", "--host", "0.0.0.0", "--port", "8898"]

EXPOSE 8898
