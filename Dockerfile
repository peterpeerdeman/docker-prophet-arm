FROM python:3.9.5

WORKDIR /app

COPY . /app
RUN apt-get -y update  && apt-get install -y \
  python3-dev \
  apt-utils \
  build-essential \
&& rm -rf /var/lib/apt/lists/*

RUN pip3 install --upgrade setuptools -i https://www.piwheels.org/simple
RUN pip3 install cython -i https://www.piwheels.org/simple
RUN pip3 install numpy
RUN pip3 install matplotlib
RUN pip3 install pystan
RUN pip3 install fbprophet

# Following CMD keeps the container running
# Modify CMD to run the app that you require. 
CMD tail -f /dev/null &
