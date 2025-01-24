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
    rm -r aicockpit-api/src/main/java    
}

function generate {
    echo "generate code"
    mvn package

    echo "move generated code"
    # make sure target folder exists
    mkdir -p aicockpit-api/src/main/java/eu/kicockpit
    cp -r -f target/generated-sources/openapi/src/main/java/eu/kicockpit/model aicockpit-api/src/main/java/eu/kicockpit
    cp target/generated-sources/openapi/src/main/java/eu/kicockpit/JSON.java aicockpit-api/src/main/java/eu/kicockpit
    cp target/generated-sources/openapi/src/main/java/eu/kicockpit/ApiException.java aicockpit-api/src/main/java/eu/kicockpit
}

main $1