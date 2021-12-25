FROM jboss/wildfly:25.0.1.Final

ARG WILDFLY_ADMIN_PASSWORD

COPY ./dlp.war /opt/jboss/wildfly/standalone/deployments/dlp.war

COPY ./wildfly-25.0.1.Final/modules/system/layers/base /opt/jboss/wildfly/modules/system/layers/base

RUN /opt/jboss/wildfly/bin/add-user.sh admin Admin#$WILDFLY_ADMIN_PASSWORD --silent

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
