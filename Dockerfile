FROM ubuntu:latest
RUN apt-get update && apt-get install -y nodejs-legacy npm git ruby-full
RUN git clone https://github.com/sqtran/kurtangular.git /opt/kurtangular 
WORKDIR "/opt/kurtangular"
RUN npm install
RUN npm install grunt-cli bower -g
RUN bower install --allow-root
RUN gem install sass compass
CMD /bin/bash -c "grunt serve"
