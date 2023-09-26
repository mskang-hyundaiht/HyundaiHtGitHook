# HyundaiHtGitHook
HyundaiHT Git hook file
현재는 linux에서만 사용가능
추후 window용도 만들예정

## 동작 방식
https://git-scm.com/book/ko/v2/Git%EB%A7%9E%EC%B6%A4-Git-Hooks
Git hook을 이용하여 커밋 전, 커밋 후에 스크립트나 프로그램을 돌릴 수 있음

해당 기능을 이용하여 코드 포멧팅, 테스트등을 할 수 있음

Jvm을 돌려야 할 때에는 레포지터리에 내장되어 있는 Eclipse Temurin Openjdk를 사용함(안정성을 위한 조치)

## TBD들
### 우선순위
1. 윈도우용 Git Hook
2. c++,c 코드 포멧, clang-format 프로그램에 google style이 있음
3. 테스트 코드 자동 실행

## 해당 파일이 하는 역할
### Java 코드 자동 포멧팅
Java 코드를 올릴 때 자동으로 현대에이치티의 Java 코드 컨벤션인 google aosp에 맞춰서 코드 포멧을 바꿔줌
구글 코드 포멧 프로그램은 구글에서 만듬 - 구글 표준이라고 할 수 있음
사용한 프로그램: https://github.com/google/google-java-format

### 추후 필요한 기능이 생길 시(TDD, CI/CD) 해당 레포지터리를 수정하여 추가할 예정

## 주의사항
컨벤션을 처리할 때 혹시라도 소스 변경으로 인한 이상이 생길 수 있어 커밋 푸시 전 소스 체크, 빌드 후 테스트부탁드립니다.

## 현대에이치티에서 사용하는 git hook file 설치 방법
## 1. 리눅스
### 1.1 설치파일 실행 
    ./install.sh
### 1.2 다른 git의 레포지터리에서 install_githook 실행
    cd [another git repositary]
    install_githook
### 1.3 코드 커밋 후 사용!
    git add Example.java
    git commit
    [commit 전 자동으로 코드 컨벤션 적용 및 기타 작업 실행]
## 2. 윈도우
### 개발 중단
    윈도우에 소스를 설치하는 사람도 없으며 윈도우에서 AOSP 빌드는 불가능합니다. 따라서 개발을 중단합니다.
### WSL 설치
    윈도우 WSL 2를 설치하면 리눅스 방식으로 사용이 가능합니다.
    리눅스 방식을 권합니다.
### 2.0 WSL 설치
    설치 방법은 인터넷을 참고하여 다운로드 받기.
### 2.1 git download
    sudo apt install git
### 2.2 리눅스 설치 방법을 따르기
