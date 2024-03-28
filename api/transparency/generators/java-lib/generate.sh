#!/bin/bash


function main {
    case "$1" in
        clean)
            clean
        ;;
        generate)
            generate
        ;;
    esac
}

function clean() {
    mvn clean

    # kick out old generated code
    rm -r aicockpit-transparency-jar/src/main/java
}

function generate {
    echo "generate code"
    mvn clean package

    echo "move generated code"
    # make sure target folder exists
    mkdir -p aicockpit-transparency-jar/src/main/java
    cp -r -f target/generated-sources/openapi/src/main/java/de/starwit aicockpit-transparency-jar/src/main/java/de
    cp target/generated-sources/openapi/src/main/java/de/JSON.java aicockpit-transparency-jar/src/main/java/de
    cp target/generated-sources/openapi/src/main/java/de/ApiException.java aicockpit-transparency-jar/src/main/java/de
}

main $1