#FROM
FROM openjdk:8-jre-alpine

# 设置工作目录 设置了 WORKDIR 命令后，接下来的 COPY 和 ADD 命令中的相对路径就是相对于 WORKDIR 指定的路径
WORKDIR /home
## 将后端项目的 Jar 文件，复制到镜像中
ENV JAR_FILE demo-jenkins-1.jar
COPY ./target/${JAR_FILE} ./

## 设置 TZ 时区
ENV TZ=Asia/Shanghai
## 设置 JAVA_OPTS 环境变量，可通过 docker run -e "JAVA_OPTS=" 进行覆盖
ENV JAVA_OPTS="-Xms512m -Xmx512m -Djava.security.egd=file:/dev/./urandom"

## 应用参数
ENV ARGS=""

## 启动后端项目
CMD java ${JAVA_OPTS} -jar ${JAR_FILE} ${ARGS}


