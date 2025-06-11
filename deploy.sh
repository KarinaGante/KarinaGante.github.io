#!/bin/bash

# Caminho até a worktree da gh-pages
WORKTREE_DIR="public"

# Gera o site
hugo --minify

# Vai pro diretório da worktree
cd "$WORKTREE_DIR" || exit 1

# Conta o número de commits como build #
BUILD_NUM=$(git rev-list --count HEAD)

# Adiciona e commita
git add .
git commit -m "blog build #$((BUILD_NUM + 1))"

# Push
git push origin gh-pages

# Volta pra raiz
cd -
