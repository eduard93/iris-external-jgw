FROM store/intersystems/iris-community:2020.2.0.211.0

USER root

WORKDIR /opt/demo
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/demo
COPY irissession.sh /
RUN chmod +x /irissession.sh 

USER irisowner

COPY  Installer.cls .
COPY  src src
SHELL ["/irissession.sh"]

RUN \
  do $SYSTEM.OBJ.Load("Installer.cls", "ck") \
  set sc = ##class(App.Installer).setup() 

# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
