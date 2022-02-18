FROM ubuntu:20.04

RUN apt-get clean && \
    apt-get update -qq && \
    apt-get install -y mongodb-server ruby-full ruby-dev build-essential git && \
    rm -rf /var/lib/apt/lists/* && \
    gem install bundler && \
    git clone -b monolith https://github.com/express42/reddit.git && \
    sed -i "s/'mongo'$/'mongo', '~> 2.0.0'/" reddit/Gemfile

COPY mongod.conf /etc/mongod.conf
COPY db_config /reddit/db_config
COPY start.sh /start.sh

RUN cd /reddit && \
    rm Gemfile.lock && \
    bundle install && \
    chmod 0777 /start.sh

CMD ["/start.sh"]
