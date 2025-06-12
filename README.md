<div align="center">
  <h1>🚀 리눅스 운영체제 학습 및 실습 기록 (2025)</h1>
</div>

> 한 학기 동안 진행된 리눅스 운영체제 수업의 학습 내용과 실습 과정을 기록하고 관리하기 위한 저장소입니다. <br> VirtualBox 내의 Ubuntu 환경에서 각 주차별 핵심 개념을 실습하고, 그 과정과 결과를 체계적으로 아카이빙하는 것을 목표로 합니다.

<br>

---

## 📚 주요 학습 내용 (Key Learnings)

<table width="100%">
  <tr>
    <td width="50%" valign="top">
      <h3>Ⅰ. 시스템 기초 및 관리</h3>
      <ul>
        <li><strong>리눅스 기초:</strong> CLI 환경, 기본 명령어, 파일 시스템 구조</li>
        <li><strong>계정/그룹:</strong> 사용자 생성 및 권한 부여, 그룹 관리</li>
        <li><strong>파일 권한:</strong> <code>chmod</code>, <code>chown</code>, <code>umask</code>, 특수 권한(SetUID 등)</li>
        <li><strong>프로세스:</strong> 포그라운드/백그라운드 제어, 프로세스 종료(<code>kill</code>)</li>
      </ul>
    </td>
    <td width="50%" valign="top">
      <h3>Ⅱ. 서버 구축 및 보안</h3>
      <ul>
        <li><strong>패키지/디스크:</strong> <code>apt</code>, <code>fdisk</code>, 파티셔닝, 포맷, 마운트</li>
        <li><strong>웹 서버 구축:</strong> APM 스택 및 WordPress 설치</li>
        <li><strong>웹 서버 보안:</strong> Apache 보안 설정, 모듈 관리, 서버 백업</li>
        <li><strong>취약점 분석:</strong> OWASP ZAP, 웹 방화벽(ModSecurity) 구축</li>
      </ul>
    </td>
  </tr>
</table>

---

## 🗓️ 주차별 학습 로그 (Weekly Learning Log)

### **2 & 3주차: 리눅스 기초 및 파일 시스템**
* <b>핵심 개념:</b> 커널과 쉘의 관계 이해, 리눅스 파일 시스템 계층 구조(FHS) 파악, 하드 링크와 심볼릭 링크의 차이점(Inode 기반) 학습
* <b>기본 명령어:</b> `id`, `who`, `tty`, `pwd`, `uname`를 통한 시스템 및 사용자 정보 확인
* <b>파일/디렉터리 관리:</b> `touch`, `mkdir`, `cp`, `mv`, `rm`을 이용한 생성, 복사, 이동, 삭제
* <b>파일 내용 확인 및 검색:</b> `cat`, `more`, `find`, `grep` 명령어 활용

<br>

### **4주차: 계정 및 그룹 관리**
* <b>계정 관리:</b> `adduser`, `userdel`을 이용한 사용자 생성 및 삭제, `usermod`를 이용한 속성 변경
* <b>그룹 관리:</b> `groupadd`를 이용한 그룹 생성 및 `usermod`로 사용자의 주 그룹/보조 그룹 지정
* <b>패스워드 정책:</b> `/etc/login.defs` 파일의 의미 이해 및 `chage`를 이용한 패스워드 만료일 설정
* <b>원격 접속:</b> `openssh-server` 설치 및 SSH 프로토콜의 개념 학습

<br>

### **5주차: 파일 권한 및 소유권 관리**
* <b>기본 권한 체계:</b> 소유자(User), 그룹(Group), 기타 사용자(Others)에 대한 읽기(r), 쓰기(w), 실행(x) 권한 이해
* <b>권한 제어:</b> `chmod`(숫자/문자 모드), `chown`을 이용한 허가권 및 소유권 변경
* <b>기본 권한 설정:</b> `umask`의 역할과 파일/디렉터리 생성 시 기본 권한 계산 방법 학습
* <b>특수 권한:</b> SetUID(`s`), SetGID(`s`), Sticky Bit(`t`)의 개념과 용도 파악

<br>

### **6주차: 프로세스 관리**
* <b>프로세스 개념:</b> PID, PPID, Init 프로세스(systemd)의 역할 이해
* <b>프로세스 확인:</b> `ps`, `pstree`를 이용한 프로세스 상태 및 부모-자식 관계 확인
* <b>작업 제어:</b> 포그라운드/백그라운드(`&`) 전환, `jobs`, `fg`, `bg`, `Ctrl+Z` 사용법
* <b>프로세스 종료:</b> `kill`, `kill -9`를 이용한 정상/강제 종료 및 시그널 개념 학습
* <b>좀비 프로세스:</b> 개념 이해 및 C 코드를 이용한 생성, 확인 실습

<br>

### **7주차: Git 및 GitHub 연동**
* <b>버전 관리 시스템:</b> Git의 개념과 GitHub의 역할 이해
* <b>핵심 워크플로우:</b> `git add`, `git commit`, `git push`를 이용한 로컬 변경사항 원격 저장소 반영
* <b>저장소 연동:</b> `git init`, `git remote add`를 통한 로컬-원격 저장소 연결
* <b>자동화:</b> 반복적인 Git 작업을 쉘 스크립트로 작성하여 자동화

<br>

### **9주차: 패키지 및 디스크 관리**
* <b>패키지 관리:</b> `apt-get`, `apt-cache`를 이용한 소프트웨어 설치, 업데이트, 삭제, 검색
* <b>디스크 관리:</b> `df`, `lsblk`, `fdisk -l`을 이용한 디스크 및 파티션 정보 확인
* <b>디스크 추가 절차:</b> `fdisk`를 이용한 파티션 생성, `mkfs.ext4`로 포맷, `mount`로 디렉터리에 연결하는 3단계 과정 실습
* <b>RAID 개념:</b> 성능 향상을 위한 RAID 0(스트라이핑)과 안정성을 위한 RAID 1(미러링)의 기본 개념 학습

<br>

### **10주차: APM 및 WordPress 설치**
* <b>웹 서버 스택:</b> APM(Apache, PHP, MySQL)의 각 역할 이해 및 동시 설치
* <b>데이터베이스 설정:</b> WordPress 전용 데이터베이스 및 사용자 생성, 권한 부여
* <b>WordPress 설치:</b> 소스 파일 다운로드, `wp-config.php` 파일 설정, 웹 기반 설치 마법사 진행
* <b>서비스 관리:</b> `systemctl`을 이용한 `apache2`, `mysql` 서비스 상태 확인 및 재시작

<br>

### **11주차: 웹 서버 보안 강화**
* <b>설정 파일 백업:</b> `cp` 명령어를 이용한 중요 설정 파일 백업의 중요성 학습
* <b>정보 노출 최소화:</b> `ServerTokens`, `ServerSignature` 설정 변경으로 서버 정보 숨기기
* <b>접근 제어:</b> 디렉터리 리스팅(`Options -Indexes`) 방지 설정
* <b>모듈 관리:</b> `a2dismod`를 이용한 불필요 모듈 비활성화로 공격 표면 축소
* <b>데이터 백업:</b> `tar` 명령어를 이용한 웹 루트 디렉터리 압축 백업

<br>

### **12주차: 웹 취약점 분석 및 방어**
* <b>취약점 스캔:</b> OWASP ZAP 도구를 이용한 자동화된 웹 애플리케이션 보안 취약점 스캔 실습
* <b>웹 방화벽(WAF):</b> Apache의 ModSecurity 모듈 설치 및 역할 이해
* <b>핵심 규칙 적용:</b> OWASP CRS(Core Rule Set)를 연동하여 알려진 웹 공격 패턴 방어 체계 구축
* <b>방어 테스트:</b> XSS 등 모의 공격을 통해 웹 방화벽의 차단 기능 직접 확인

<br>

### **13주차: 시스템 모니터링 및 성능 분석**
* <b>모니터링 도구:</b> `htop`(종합), `mpstat`(CPU), `vmstat`(메모리), `ip`(네트워크) 등 주요 도구 사용법
* <b>부하 테스트:</b> `stress` 도구를 이용해 의도적으로 CPU 및 메모리 부하를 발생시키는 방법 학습
* <b>성능 분석:</b> 부하 상태에서 각 모니터링 도구의 출력 값을 해석하여 시스템의 병목 현상 원인 추론

<br>

---

## 🗂️ 저장소 구조 (Repository Structure)

> 이 저장소는 학습 내용의 효율적인 관리를 위해 다음과 같은 구조로 구성되어 있습니다.

<pre>
.
├── 📁 week_02/
├── 📁 week_03/
├── 📁 week_04/
├── 📁 week_05/
├── 📁 week_06/
├── 📁 week_07/
├── 📁 week_09/
├── 📁 week_10/
├── 📁 week_11/
├── 📁 week_12/
├── 📁 week_13/
├── 🖼️ screenshots/
│   ├── week_02/
│   └── ...
├── 📜 scripts/
└── 📄 README.md
</pre>

* **`week_XX/`**: 각 주차별 실습에서 사용된 스크립트, 설정 파일, 요약 노트 등이 저장됩니다.
* **`screenshots/`**: 실습 과정의 중요한 단계를 촬영한 스크린샷 이미지가 주차별로 정리되어 있습니다.

---

## 🔄 실습 진행 방식 (Workflow)

<table>
  <tr>
    <td align="center">
      <strong>1. 주차별 실습</strong><br>
      <p><code>week_XX</code> 폴더에서<br>제공된 명령어를 실행하며<br>기능의 원리를 학습합니다.</p>
    </td>
    <td align="center">
      <strong>2. 결과 촬영</strong><br>
      <p>실습의 주요 단계마다<br>결과를 스크린샷으로 촬영하여<br><code>screenshots/</code> 폴더에 저장합니다.</p>
    </td>
    <td align="center">
      <strong>3. 기록 및 업로드</strong><br>
      <p>실습 완료 후, 모든 변경사항을<br><code>git</code>을 통해 원격 저장소에<br>커밋 및 푸시하여 기록을 남깁니다.</p>
    </td>
  </tr>
</table>
