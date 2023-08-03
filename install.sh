#!/bin/bash
BASEDIR=$(dirname "$0")
TARGETDIR=~/.cache/HyundaiHtGitHook
if [ $1 != '--patch' ]; then
    if [ -d "$TARGETDIR" ]; then
        rm -rf $TARGETDIR
    fi
    LINUX_JDK_PATH="https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.8%2B7/OpenJDK17U-jdk_x64_linux_hotspot_17.0.8_7.tar.gz"
    
    mkdir $TARGETDIR
    mkdir $TARGETDIR/export
    mkdir $TARGETDIR/jdk
    
    wget $LINUX_JDK_PATH -O $TARGETDIR/jdk/linux_jdk.tar.gz
    tar -xzf $TARGETDIR/jdk/linux_jdk.tar.gz -C $TARGETDIR/jdk
    rm $TARGETDIR/jdk/linux_jdk.tar.gz
fi

cp $BASEDIR/google-java-format-1.17.0-all-deps.jar $TARGETDIR/google-java-format-1.17.0-all-deps.jar

cp $BASEDIR/java_code_formatter.sh $TARGETDIR/java_code_formatter.sh
chmod +x $TARGETDIR/java_code_formatter.sh

cp $BASEDIR/export/install_githook.sh $TARGETDIR/export/install_githook
chmod +x $TARGETDIR/export/install_githook

cp $BASEDIR/pre-commit $TARGETDIR/pre-commit

if [ -z "${HYUNDAI_HT_HOOK_DIR}" ]; then
    cat $BASEDIR/bashrc_additional.sh >> ~/.bashrc
    exec bash
fi

echo 'Install Finish'