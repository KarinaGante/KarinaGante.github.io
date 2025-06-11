#!/bin/bash

WORKTREE_DIR="public"

# Gera o site
hugo --minify

# Vai para a worktree
cd "$WORKTREE_DIR" || exit 1

# Usa o número salvo no arquivo .build_number na raiz do repo (um nível acima da worktree)
BUILD_FILE="../.build_number"

# Se o arquivo não existir, cria com 0
if [ ! -f "$BUILD_FILE" ]; then
  echo "0" > "$BUILD_FILE"
fi

# Lê o número atual do build
BUILD_NUM=$(cat "$BUILD_FILE")

# Incrementa o número
NEXT_BUILD_NUM=$((BUILD_NUM + 1))

# Adiciona e commita com a mensagem usando o número incrementado
git add .
git commit -m "blog build #$NEXT_BUILD_NUM"

git push origin gh-pages

# Volta pra raiz
cd - || exit 1

# Atualiza o arquivo com o próximo número do build
echo "$NEXT_BUILD_NUM" > "$BUILD_FILE"
