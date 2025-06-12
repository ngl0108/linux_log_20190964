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

## 🗂️ 저장소 구조 (Repository Structure)

> 이 저장소는 학습 내용의 효율적인 관리를 위해 다음과 같은 구조로 구성되어 있습니다.


.
├── 📁 week_02/         # 2주차 실습 관련 파일
├── 📁 week_03/         # 3주차 실습 관련 파일
├── 📁 week_04/
├── 📁 week_05/
├── 📁 week_06/
├── 📁 week_07/
├── 📁 week_09/
├── 📁 week_10/
├── 📁 week_11/
├── 📁 week_12/
├── 📁 week_13/
├── 🖼️ screenshots/     # 각 주차별 실습 과정 스크린샷
│   ├── week_02/
│   └── ...
├── 📜 scripts/         # 공용 쉘 스크립트 (필요시 사용)
└── 📄 README.md        # 현재 문서

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
