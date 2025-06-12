#!/bin/bash
# 변경 사항을 자동으로 add, commit, push하는 스크립트

# 커밋 메시지에 현재 날짜와 시간을 포함시켜 기록을 명확하게 합니다.
COMMIT_MESSAGE="Auto-Log: 실습 내용 자동 커밋 (2025-06-12 19:58:53)"

echo ">> Git 저장소의 최상위 폴더로 이동합니다..."
cd ~/study || exit

echo ">> 모든 변경 사항을 추가합니다..."
git add .

echo ">> 커밋을 생성합니다: $COMMIT_MESSAGE"
git commit -m "$COMMIT_MESSAGE"

echo ">> GitHub 원격 저장소로 푸시합니다..."
git push origin main

echo ">> 자동 업로드 완료!"
