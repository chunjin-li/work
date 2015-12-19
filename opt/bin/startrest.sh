pa=/work/tmp/usergrid-springboot/stack/rest/target/easemob-rest-1.1.1-SNAPSHOT.jar
java -Xdebug -agentlib:jdwp=transport=dt_socket,address=127.0.0.1:8000,server=y,suspend=y -jar  $pa --spring.profiles.active=localtest --management.security.enabled=false
