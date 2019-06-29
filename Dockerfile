FROM springci/spring-boot-ci-image:master

RUN mkdir -p /home/petclinic

WORKDIR /home/petclinic

COPY . /home/petclinic

RUN chmod +x ./mvnw
RUN export spring_profiles_active=mysql

ENTRYPOINT ["./mvnw","spring-boot:run","-Dspring-boot.run.profiles=mysql"]