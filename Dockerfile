# Docker file for script filterSequence.py

# base image : Ubunut 20.04
FROM ubuntu:20.04

# FileAuthor / Maintener
LABEL maintainer=contact@domain

# Copy files present in this directory
COPY filterSequences.py /usr/local/bin/ 

# Run some bash updates and install 
RUN apt-get update --fix-missing
RUN apt-get install -y python3 python3-biopython 
RUN chmod +x /usr/local/bin/filterSequences.py

# Create entrypoint for python script execution
ENTRYPOINT ["/usr/local/bin/filterSequences.py"]
