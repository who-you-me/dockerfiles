FROM jupyter/scipy-notebook

RUN apt-get update && apt-get install -y -q \
    libportaudio2 \
    libxrender-dev

RUN wget https://people.csail.mit.edu/hubert/pyaudio/packages/python-pyaudio_0.2.8-1_amd64.deb
RUN dpkg -i python-pyaudio_0.2.8-1_amd64.deb

