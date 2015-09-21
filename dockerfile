FROM	centos:centos7

#  Install node Package library
RUN     curl --silent --location https://rpm.nodesource.com/setup | bash 

# Install Node.js and npm
RUN     yum -y install nodejs 

# Copy current folder to /src inside the container
COPY . /src

# Install app dependencies
RUN cd /src; npm install

# Expose the service port on the container host
EXPOSE  3000

# Run Node
CMD ["node", "/src/bin/www"]