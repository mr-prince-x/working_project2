#FROM openjdk:11
#COPY target/ELearningManagement-0.0.1-SNAPSHOT.jar  /usr/app/
#WORKDIR /usr/app/
#EXPOSE 8080
#ENV SPRING_DATASOURCE_URL jdbc:mysql://localhost:3306/elearningsystem
#ENV SPRING_DATASOURCE_USERNAME root
#ENV SPRING_DATASOURCE_PASSWORD root
#ENV SPRING_JPA_SHOW_SQL true
#ENV SPRING_JPA_PROPERTIES_HIBERNATE_DIALECT org.hibernate.dialect.MySQL55Dialect
#ENV SECURITY_BASIC_ENABLE false
#ENTRYPOINT ["java", "-jar", "ELearningManagement-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
FROM openjdk:17
ADD target/ELearningManagement-0.0.1-SNAPSHOT.jar  springboot-mysql-docker.jar
ENTRYPOINT ["java","-jar","springboot-mysql-docker.jar"]
