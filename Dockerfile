FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y python3-pip python3-dev ffmpeg libsm6 libxext6
COPY requirements.txt .
WORKDIR /

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
COPY . /
CMD [ "python3", "predict_vid.py", "-i", "example_data/test_vid.mp4" ]

