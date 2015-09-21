FROM	centos:centos7

#  Install EPEL Package library
RUN     rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Node.js and npm
RUN     yum install -y npm

# Copy current folder to /src inside the container
COPY . /src

# Install app dependencies
RUN cd /src; npm install

# Expose the service port on the container host
EXPOSE  3000

# Run NodeCMD ["node", "/src/bin/www"]