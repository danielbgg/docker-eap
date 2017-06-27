# Use latest jboss/base-jdk:8 image as the base
FROM jboss/base-jdk:8

USER root

# create workdir
WORKDIR /opt

ADD install/jboss-eap-6.4.0.zip /tmp/jboss-eap-6.4.0.zip

RUN unzip /tmp/jboss-eap-6.4.0.zip

RUN rm /tmp/jboss-eap-6.4.0.zip

ENV JBOSS_HOME /opt/jboss-eap-6.4

RUN $JBOSS_HOME/bin/add-user.sh admin redhat@123 --silent

RUN echo "JAVA_OPTS=\"\$JAVA_OPTS -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0\"" >> $JBOSS_HOME/bin/standalone.conf

RUN chown -R jboss:jboss /opt/jboss-eap-6.4

EXPOSE 8080 9990 9999

ENTRYPOINT $JBOSS_HOME/bin/standalone.sh -c standalone-full-ha.xml

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

USER jboss
CMD /bin/bash

