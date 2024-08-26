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
    rm -r aicockpit-transparency-jar/src
    rm -r aicockpit-transparency-jar/target
}

function generate {
    echo "generate code"
    mvn package

    echo "move generated code"
    # make sure target folder exists
    mkdir -p aicockpit-transparency-jar/src/main/java/de/aicockpit/transparency
    cp -r -f target/generated-sources/openapi/src/main/java/de/aicockpit/transparency aicockpit-transparency-jar/src/main/java/de/aicockpit
    cp target/generated-sources/openapi/src/main/java/de/aicockpit/JSON.java aicockpit-transparency-jar/src/main/java/de/aicockpit/
    cp target/generated-sources/openapi/src/main/java/de/aicockpit/ApiException.java aicockpit-transparency-jar/src/main/java/de/aicockpit/
}

main $1