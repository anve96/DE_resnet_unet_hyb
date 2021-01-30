FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y python3-pip python3-dev ffmpeg libsm6 libxext6
COPY requirements.txt .
WORKDIR /

RUN pip3 install --upgrade pip
RUN pip3 install scikit_build
RUN pip3 install torch
RUN pip3 install torchvision
RUN pip3 install opencv-python
RUN pip3 install matplotlib
RUN pip3 install numpy
RUN pip3 install Flask
COPY . /
CMD [ "python3", "predict_vid.py", "-i", "example_data/test_vid.mp4" ]

