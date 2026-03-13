#!/bin/bash
# Ethologic MUD - a CoffeeMud fork
export JAVA_HOME="${JAVA_HOME:-/opt/homebrew/opt/openjdk@21/libexec/openjdk.jdk/Contents/Home}"
export PATH="$JAVA_HOME/bin:$PATH"

MUDNAME="${*:-Ethologic}"
java -classpath ".:./lib/js.jar:./lib/jzlib.jar" -Djava.awt.headless=true -Xms128m -Xmx256m com.planet_ink.coffee_mud.application.MUD "$MUDNAME"
