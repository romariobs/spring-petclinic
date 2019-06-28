FROM springci/spring-boot-ci-image:master

RUN mkdir -p /home/petclinic

WORKDIR /home/petclinic

COPY . /home/petclinic

RUN chmod +x ./mvnw

ENTRYPOINT ["./mvnw","spring-boot:run"]