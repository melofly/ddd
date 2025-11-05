FROM python:3.13
RUN apt-get update && apt-get install -y openjdk-11-jre-headless wget unzip && \
    apt-get clean
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin
RUN wget -O /tmp/allure.zip -L https://github.com/allure-framework/allure2/releases/download/2.34.1/allure-2.34.1.zip && \
    unzip /tmp/allure.zip -d /opt/ && \
    ln -s /opt/allure-2.34.1/bin/allure /usr/local/bin/allure
WORKDIR /back_api
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["pytest", "-sv", "--чalluredir=allure-results"]