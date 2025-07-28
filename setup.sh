#!/bin/bash

# Cria ambiente virtual
echo "🔧 Criando ambiente virtual..."
python3 -m venv venv

# Ativa o ambiente virtual
echo "✅ Ambiente virtual criado. Ativando..."
source venv/bin/activate

# Atualiza pip, setuptools e wheel
echo "⬆️ Atualizando pip, setuptools e wheel..."
python -m pip install --upgrade pip setuptools wheel

# Configurações globais do Git
echo "🛠️ Configurando Git globalmente..."
git config --global user.name "Kaike Beduschi Tai ao"
git config --global user.email "kkbeduschitaiao@gmail.com"
git config --global init.defaultBranch main

# Inicializa repositório Git
echo "📁 Inicializando repositório Git local..."
git init

# Gera chave SSH (ed25519 recomendada)
echo "🔐 Gerando chave SSH..."
ssh-keygen -t ed25519 -C "kkbeduschitaiao@gmail.com"

# Mostra instruções finais
echo ""
echo "✅ Tudo pronto!"
echo "Agora copie a chave pública para o GitHub:"
echo "--------------------------------------------------"
cat ~/.ssh/id_ed25519.pub
echo "--------------------------------------------------"
echo "Acesse https://github.com/settings/keys para adicioná-la."
