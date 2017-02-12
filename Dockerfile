FROM java:openjdk-8u72-jdk

MAINTAINER aywengo <aywengo@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
    apt-get install -y nodejs python python-pip && \
    wget -nv http://dl.bintray.com/sbt/debian/sbt-0.13.13.deb && \
    dpkg -i sbt-0.13.13.deb && \
    wget -nv http://www.scala-lang.org/files/archive/scala-2.12.1.deb && \
    dpkg -i scala-2.12.1.deb && \
    rm sbt-0.13.13.deb scala-2.12.1.deb && \
    pip install awscli
    apt-get clean

CMD sbt