FROM eclipse-temurin:21-jre

WORKDIR /mud

COPY com/ com/
COPY lib/ lib/
COPY resources/ resources/
COPY web/ web/
COPY coffeemud.ini .
COPY mud.sh .

# MUD telnet port
EXPOSE 5555
# Web server port
EXPOSE 8080

# Cloud Run sets PORT env var; override coffeemud.ini at runtime
CMD ["java", "-classpath", ".:./lib/js.jar:./lib/jzlib.jar", \
     "-Djava.awt.headless=true", "-Xms128m", "-Xmx256m", \
     "com.planet_ink.coffee_mud.application.MUD", "Ethologic"]
