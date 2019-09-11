FROM  ubuntu:18.04
LABEL description="A (unofficial) dockerized version of Macaulay2 built on Ubuntu 18.04"
LABEL version="0.1"
LABEL maculay2url="https://faculty.math.illinois.edu/Macaulay2/"
RUN apt-get update  -q  && apt-get -y upgrade 
RUN apt-get install -y ca-certificates \
	libblas3 \
	libgfortran4 \
	liblapack3 \ 
	libquadmath0 
RUN apt-get install -y libgc1c2 \
	libgdbm5 \ 
	libreadline7 \
	libxml2 \ 
        wget
RUN wget https://faculty.math.illinois.edu/Macaulay2/Repositories/Ubuntu/dists/bionic/main/binary-amd64/Macaulay2-1.14-amd64-Linux-Ubuntu-18.04.deb
RUN wget https://faculty.math.illinois.edu/Macaulay2/Repositories/Ubuntu/dists/bionic/main/binary-amd64/Macaulay2-1.14-common.deb 
RUN dpkg -i *.deb
RUN rm -r *.deb 
RUN apt-get -y remove wget 

RUN mkdir /home/data
WORKDIR /home/data 

ENTRYPOINT ["/usr/bin/M2"]
CMD ["--copyright"]
LABEL maintainer="Luis Sordo Vieira, sordovieira@uchc.edu"
