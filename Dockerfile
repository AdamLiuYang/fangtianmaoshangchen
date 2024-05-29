# 使用一个包含Java运行环境的基础镜像
FROM openjdk:8

# 指定作者信息（可选）
LABEL maintainer="your_email@example.com"

# 将生成的可执行jar文件复制到镜像中
COPY target/TmallDemo-0.0.1-SNAPSHOT.jar /app.jar

# 指定运行时的命令
# ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT ["java","-jar","/app.jar"]
