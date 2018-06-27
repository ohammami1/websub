FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y \
    build-essential \
    libpq-dev \
    ruby-dev \
    nodejs 
    
RUN mkdir /sub_project
ADD entrypoint.sh /sub_project/
RUN chmod +x /sub_project/entrypoint.sh

ENTRYPOINT ["/sub_project/entrypoint.sh"]
WORKDIR /sub_project
