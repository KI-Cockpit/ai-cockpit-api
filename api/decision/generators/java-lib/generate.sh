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
    rm -r aicockpit-decision-jar/src/main/java    
}

function generate {
    echo "generate code"
    mvn package

    echo "move generated code"
    # make sure target folder exists
    mkdir -p aicockpit-decision-jar/src/main/java/de/aicockpit/decision/
    cp -r -f target/generated-sources/openapi/src/main/java/de/aicockpit/decision aicockpit-decision-jar/src/main/java/de/aicockpit
    cp target/generated-sources/openapi/src/main/java/de/aicockpit/JSON.java aicockpit-decision-jar/src/main/java/de/aicockpit
    cp target/generated-sources/openapi/src/main/java/de/aicockpit/ApiException.java aicockpit-decision-jar/src/main/java/de/aicockpit
}

main $1