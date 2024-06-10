#Creates the base layer of application`
FROM openjdk:19-jdk
LABEL authors="apjenkins"

#Ensures the commands are run from the root dir
WORKDIR /app

#Copying the java build files from target dir
#Creating a new folder called app
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

#Expose the 8080 port from the "container" side
EXPOSE 8080

#This command runs the jar file in app dir
CMD ["java", "-jar", "demo.jar"]

