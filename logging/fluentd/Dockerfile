FROM fluent/fluentd:v1.14-debian-1
USER root
#RUN gem update --system && \
RUN gem install elasticsearch -v 7.13.3 && \
    gem install fluent-plugin-elasticsearch --no-document --version 5.0.5 && \
    gem install fluent-plugin-grok-parser --no-document --version 2.6.2
USER fluent
ADD fluent.conf /fluentd/etc
