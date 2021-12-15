FROM python:3.6

WORKDIR /input
COPY . /input/
RUN pip install --upgrade pip && pip install cwlref-runner && pip install cwltool
CMD /bin/bash 
