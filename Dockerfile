FROM jenkins:alpine
 
ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"
 
COPY security.groovy /usr/share/jenkins/ref/init.groovy.d/security.groovy
COPY config.xml /var/jenkins_home/config.xml
COPY hudson.plugins.gradle.Gradle.xml var/jenkins_home/hudson.plugins.gradle.Gradle.xml
 
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

