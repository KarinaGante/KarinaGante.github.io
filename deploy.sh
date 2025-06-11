#!/bin/bash

WORKTREE_DIR="public"
cd "$WORKTREE_DIR" || exit 1

# Verifica se há mudanças antes de continuar
if git diff --quiet && git diff --cached --quiet; then
  echo "Nenhuma mudança detectada. Nenhum commit/push necessário."
  exit 0
fi

# Busca o último número de build pela mensagem de commit "blog build #X"
LAST_BUILD_NUM=$(git log -1 --grep="blog build #" --pretty=format:"%s" | grep -oE '[0-9]+' || echo 0)

# Incrementa para o próximo build
NEXT_BUILD_NUM=$((LAST_BUILD_NUM + 1))

git add .
git commit -m "blog build #$NEXT_BUILD_NUM"
git push origin gh-pages

cd -