# Use latest jboss/base-jdk:8 image as the base
FROM jboss/base-jdk:8

USER root

# create workdir
WORKDIR /opt

ENV JBOSS_HOME /opt/jboss-eap-7.0

RUN cd /tmp && \
    curl -O http://foo:8000/jboss-eap-7.0.0.zip && \
    unzip /tmp/jboss-eap-7.0.0.zip -d /opt && \
    rm /tmp/jboss-eap-7.0.0.zip && \
    $JBOSS_HOME/bin/add-user.sh admin redhat@123 --silent && \
    echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> $JBOSS_HOME/bin/standalone.conf  && \
    chown -R jboss:jboss /opt/jboss-eap-7.0

EXPOSE 8080 9990 9999

ENTRYPOINT $JBOSS_HOME/bin/standalone.sh -c standalone-full-ha.xml

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

USER jboss
CMD /bin/bash

