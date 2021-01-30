FROM python:3.8
COPY requirements.txt .
WORKDIR /
RUN pip install -r requirements.txt
COPY . /
CMD [ "python", "predict_vid.py", "-i", "example_data/test_vid.mp4"]