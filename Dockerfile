FROM maven:3.6.3-adoptopenjdk-8
COPY ./pom.xml ./pom.xml
RUN mvn dependency:go-offline -B
COPY ./src ./src
RUN mvn package -DskipTests
#skip de testes, pois a api openWeather pode estar fora do ar no momento do packaging
LABEL author="Marcella Farias Costa"
LABEL email="fcosta.marcella@gmail.com"
ENTRYPOINT mvn test
