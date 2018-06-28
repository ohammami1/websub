FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    ruby-dev \
    nodejs 
    
RUN mkdir /sub_project
ADD /entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
WORKDIR /sub_project
