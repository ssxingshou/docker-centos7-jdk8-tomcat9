FROM registry.cn-shenzhen.aliyuncs.com/ssxs-docker/ssxs-repo/ssxs-centos7-jdk8:1

MAINTAINER Base Image Jdk8 <haixiang.dai@xfxb.net>

ARG TOMCAT_VERSION=9.0.22
ARG TOMCAT_HOME=/data/opt/tomcat
ARG SHA=b4880fb7a3d81edd190a029440cdf17f308621af68475a4fe976296e71ff4a4b546dd6d8a58aaafba334d309cc11e638c52808a4b0e818fc0fd544226d952544
ARG BASE_URL=http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v${TOMCAT_VERSION}/bin

RUN mkdir -p ${TOMCAT_HOME} \
  && curl -o /tmp/apache-tomcat.tar.gz ${BASE_URL}/apache-tomcat-${TOMCAT_VERSION}.tar.gz \
  && tar -xzf /tmp/apache-tomcat.tar.gz -C ${TOMCAT_HOME} --strip-components=1 \
  && rm -f /tmp/apache-tomcat.tar.gz \
  && chmod -R +x ${TOMCAT_HOME}/bin

