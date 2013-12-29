FROM ubuntu
RUN apt-get install -y git-core
RUN git clone https://github.com/rembo10/headphones
ENTRYPOINT python Headphones.py
# Now running at http://localhost:8181