#!/usr/bin/env bash

set -euo pipefail

echo "======================================"
echo "IRONIT ENGINEERING PLATFORM BOOTSTRAP"
echo "======================================"

ROOT=$(pwd)

mkdir -p automation/{agents,prompts,templates,scripts}
mkdir -p docs/{prd,adr,roadmap,standards,runbooks}
mkdir -p .github/{workflows,ISSUE_TEMPLATE}
mkdir -p .devcontainer
mkdir -p tools
mkdir -p configs

touch \
Makefile \
Taskfile.yml \
.env.example \
README.md

AGENTS=(
product-manager
solution-architect
backend-engineer
flutter-engineer
devops-engineer
platform-engineer
security-engineer
qa-engineer
sre-engineer
documentation-engineer
reviewer
)

for agent in "${AGENTS[@]}"
do
    mkdir -p automation/agents/$agent
    touch automation/agents/$agent/README.md
done

find . -type d | sort

echo
echo "Bootstrap Complete."