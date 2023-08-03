#!/bin/bash
BASEDIR=$(dirname "$0")
JAVA_PATH=$BASEDIR/jdk/$(ls $BASEDIR/jdk)/bin
if [ $# -gt 0 ]; then
    ${JAVA_PATH}/java \
    --add-exports jdk.compiler/com.sun.tools.javac.api=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.file=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.parser=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.tree=ALL-UNNAMED \
    --add-exports jdk.compiler/com.sun.tools.javac.util=ALL-UNNAMED \
    -jar ${BASEDIR}/google-java-format-1.17.0-all-deps.jar -a --replace $@
else
    echo "Usage java_code_formatter.sh [files...]"
    exit 1
fi