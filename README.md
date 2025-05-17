# linux_log_20190964
리눅스 로그 저장소

아래는 2주차부터 9주차까지 각 주차별로 PPT 실습 명령어와 주요 내용을 메모장에 정리하기 좋게 자세하게 작성한 예시입니다.  
하이퍼링크 없이, 필요한 경우 URL도 함께 표기했습니다.

---

## 2주차: 환경 준비 및 리눅스 살펴보기

- VirtualBox 설치  
  - https://www.virtualbox.org/wiki/Downloads  
  - 설치 시 기본 옵션, 추가 확장팩(Extension Pack)은 나중에 설치해도 됨  
  - https://download.virtualbox.org/virtualbox/7.1.6/Oracle_VirtualBox_Extension_Pack-7.1.6.vbox-extpack

- 우분투 ISO 다운로드  
  - 20.04, 24.04 Desktop 중 선택  
  - https://ftp.kaist.ac.kr/ubuntu-cd/24.04.2/  
  - 약 5~6GB

- VirtualBox에 우분투 설치  
  - 머신 → 새로 만들기 → 이름/메모리/CPU/디스크 설정  
  - ISO 파일 선택 후 설치  
  - 사용자 이름: guest, 비밀번호: 123123

- 터미널 기본 명령어  
  - 터미널 열기: Ctrl + Alt + T  
  - 현재 사용자: id, who  
  - 현재 경로: pwd  
  - 파일 목록: ls -al  
  - 커널/버전: uname -a, cat /etc/issue  
  - 화면 지우기: clear

- 다중 사용자 지원  
  - 가상 터미널 전환: Ctrl + Alt + F1~F6  
  - 현재 터미널 번호: tty  
  - 여러 세션 동시 로그인 가능  
  - 로그아웃: exit

- 도움말 활용  
  - man 명령어 (예: man ls, q로 종료)  
  - 명령어 --help

---

## 3주차: 파일 및 디렉터리 관리

- 리눅스 파일 시스템  
  - EXT4 (리눅스), NTFS (윈도우)  
  - 계층적 트리 구조, 최상위는 /  
  - 각 폴더 역할: /bin(실행파일), /etc(설정), /home(사용자), /root(관리자 홈), /boot(부팅), /dev(장치), /lib(라이브러리), /mnt(임시 마운트)

- 파일/폴더 생성  
  - touch newfile1.txt  
  - echo "내용" > newfile2.txt  
  - cat > newfile3.txt (입력 후 Ctrl+D)

- 이름 변경/이동  
  - mv oldname.txt newname.txt  
  - mv oldfolder newfolder

- 복사  
  - cp file1.txt file2.txt  
  - cp -r folder1/ folder2/  
  - cp *.txt target_folder/

- 삭제  
  - rm filename.txt  
  - rm -rf foldername/

- 링크  
  - 하드링크: ln file.txt linkfile.txt  
  - 심볼릭링크: ln -s file.txt symlink.txt

- 파일/폴더 타입  
  - ls -al (d: 디렉터리, -: 일반파일, l: 링크, b: 블록장치, c: 문자장치, p: 파이프, s: 소켓)  
  - 숨김파일: .으로 시작

- 파일/디렉터리 검색  
  - find . -name "*.txt"  
  - find / -mtime -1 -type f (하루 이내 변경)  
  - find / -name "game_config.xml"  
  - grep -n "검색어" filename.txt  
  - grep -rn "apache2" /usr

- 하드/심볼릭 링크 차이  
  - 하드링크: 동일 inode, 원본 삭제해도 접근 가능  
  - 심볼릭링크: 다른 inode, 원본 삭제시 링크 깨짐

---

## 4주차: 계정 관리

- 사용자 계정 생성/삭제  
  - adduser 이름  
  - userdel -rf 이름

- 패스워드 설정/변경  
  - passwd 이름

- 홈 디렉터리 변경  
  - usermod -d /home/guest_test guest2

- 계정 정보 확인  
  - cat /etc/passwd  
  - sudo cat /etc/shadow  
  - cat /etc/group  
  - id guest

- 그룹 관리  
  - groupadd -g 1004 angel  
  - usermod -g angel angel1  
  - usermod -aG monster,mother angel1  
  - groupdel 그룹명

- 보조 그룹 추가  
  - usermod -aG group1,group2 username  
  - id angel1  
  - groups angel1

- 패스워드 보안 정책  
  - cat /etc/login.defs  
  - sudo chage -l 이름  
  - sudo chage -E 30 -m 5 -M 10 -W 1 guest2

- SSH 원격 접속  
  - apt-get install openssh-server  
  - service ssh start  
  - putty(윈도우)로 접속: https://www.putty.org/

- 공유 폴더 마운트  
  - mount -t vboxsf shared /home/guest/shared  
  - chmod 777 /home/guest/shared

---

## 5주차: 파일 권한 관리

- 파일/디렉터리 권한 확인  
  - ls -al

- umask(기본 권한)  
  - umask  
  - umask 027 (보안 강화)  
  - 파일 생성: 666 - umask, 폴더 생성: 777 - umask

- 권한 변경  
  - chmod 755 file.txt  
  - chmod u+w file.txt  
  - chmod g+r file.txt  
  - chmod o-rwx file.txt  
  - chmod u-w,g+rw,o-rwx file.txt

- 소유권 변경  
  - chown user:group file.txt  
  - chown -R user:group folder/

- 특수 권한  
  - setuid: chmod 4777 file.txt  
  - setgid: chmod 2777 file.txt  
  - sticky bit: chmod 1777 file.txt  
  - lsattr file.txt  
  - chattr +i file.txt

- 파일 속성  
  - lsattr 파일명  
  - chattr +i 파일명 (삭제 방지)

- 파일 권한 관련 실습  
  - find /etc -type f -perm -o=w -exec ls -l {} \; (모든 사용자 쓰기 권한 파일 찾기)  
  - find /home -type f -perm -100 ! -user root -exec ls -l {} \; (root가 아닌 실행 파일 찾기)

- 공유 폴더 자동 마운트  
  - mount -t vboxsf shared /home/guest4/shared  
  - lsmod | grep vboxsf  
  - groups (vboxsf 그룹 확인)  
  - usermod -aG vboxsf 계정이름

- crontab으로 자동 실행  
  - crontab -e  
  - @reboot /home/guest4/test.sh

---

## 6주차: 프로세스 관리

- 프로세스 확인  
  - ps -ef | more  
  - ps -ejH (트리 구조)  
  - ps -u root  
  - ps -u guest  
  - ps -aux | more

- 프로세스 검색  
  - ps -ef | grep 프로세스이름  
  - ps -p PID -o comm=  
  - ps -C 프로세스이름 -o pid,ppid,user,cmd  
  - ps -fp PID

- 프로세스 실행  
  - 명령어 & (백그라운드 실행)  
  - jobs -l  
  - fg %번호 (포그라운드로 전환)  
  - bg %번호 (백그라운드로 전환)

- 프로세스 정지/종료  
  - Ctrl+Z (정지)  
  - kill -9 PID (강제 종료)  
  - Ctrl+C (종료)

- 좀비 프로세스  
  - ps -eo pid,state | awk '$2=="Z"{print $1}' (좀비 프로세스 PID 확인)  
  - ps -eo state | awk '$1=="Z"' | wc -l (좀비 프로세스 개수)

- Cockpit(웹 기반 서버 관리)  
  - apt-get install cockpit  
  - systemctl enable --now cockpit.socket  
  - ufw allow 9090/tcp  
  - 웹 브라우저에서 http://localhost:9090 접속

---

## 7주차: 깃허브 연동

- Git 설치 및 초기화  
  - apt-get update  
  - apt-get install git  
  - mkdir -p ~/shell_logs  
  - cd ~/shell_logs  
  - git init

- 원격 저장소 등록  
  - git remote add origin https://github.com/아이디/linux_log_학번.git

- 파일 추가 및 커밋  
  - touch new_file.txt  
  - git add .  
  - git commit -m "first log commit"

- 사용자 정보 등록  
  - git config --global user.email "test@nate.com"  
  - git config --global user.name "admin"

- GitHub Personal Access Token 발급  
  - GitHub → Settings → Developer settings → Personal access tokens  
  - repo, workflow 체크 후 생성

- 원격 저장소와 동기화  
  - git pull origin main --allow-unrelated-histories  
  - git push -u origin main

- 자동 업로드 스크립트  
  - gedit git_upload.sh  
  - 내용 예시:
    ```
    #!/bin/bash
    cd ~/shell_logs || exit
    git add .
    git commit -m "Auto log update: $(date '+%F %T')" --allow-empty
    git push origin main
    ```
  - 실행 권한 부여: chmod 777 git_upload.sh  
  - ./git_upload.sh

- crontab 등록  
  - crontab -e  
  - @reboot /home/guest/shell_logs/git_upload.sh




## 9주차: 패키지 및 디스크 관리

- 패키지 관리  
  - 전체 패키지 목록: apt list  
  - 설치된 패키지: apt --installed list  
  - 패키지 검색: apt-cache search 패키지명  
  - 패키지 정보: apt-cache show 패키지명  
  - 패키지 설치: apt-get install 패키지명  
  - 패키지 삭제: apt-get remove 패키지명  
  - 설정파일까지 삭제: apt-get remove --purge 패키지명  
  - 의존성 자동 삭제: apt-get autoremove  
  - 캐시 정리: apt-get clean

- 디스크/파티션 관리  
  - 디스크 정보: df -h, lsblk, fdisk -l  
  - 파티션 생성: fdisk /dev/sdb  
  - 파티션 포맷: mkfs.ext4 /dev/sdb1  
  - 마운트:  
    ```
    mkdir /new_disk
    mount /dev/sdb1 /new_disk
    ```
  - 자동 마운트:  
    - cp /etc/fstab fstab_back  
    - gedit /etc/fstab  
    - UUID 또는 /dev/sdb1로 마운트 정보 추가

- RAID 실습  
  - RAID 0번 예시:  
    ```
    mdadm --create /dev/md/raid0 --level=0 --raid-devices=2 /dev/sdb1 /dev/sdc1
    mkfs.ext4 /dev/md/raid0
    mkdir /new_raid0
    mount /dev/md/raid0 /new_raid0
    ```

- Wine(윈도우 프로그램 실행)  
  - apt-get install wine64 wine32  
  - dpkg --add-architecture i386  
  - apt-get install --install-recommends winehq-stable  
  - apt-get install playonlinux

- 한글 폰트 설치  
  - apt install fonts-nanum fonts-noto-cjk


