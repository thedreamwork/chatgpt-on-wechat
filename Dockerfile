FROM python:3.7

RUN apt-get update -y && \
    apt-get install -y python3-pip

RUN pip3 install pip --upgrade

# Copy the requirements file in order to install
# Python dependencies
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# We copy the rest of the codebase into the image
COPY . .

CMD python app.py