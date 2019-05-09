FROM openjdk:8

ENV JMETER_VERSION 5.1

RUN cd /var/lib && \
    curl http://www-eu.apache.org/dist/jmeter/binaries/apache-jmeter-$JMETER_VERSION.tgz -o /var/lib/apache-jmeter-$JMETER_VERSION.tgz && \
    tar xf apache-jmeter-$JMETER_VERSION.tgz && \
    rm -f apache-jmeter-$JMETER_VERSION.tgz

ENV PATH "$PATH:/var/lib/apache-jmeter-$JMETER_VERSION/bin"
