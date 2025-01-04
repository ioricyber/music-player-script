#!/bin/bash

# Função de animação de carregamento
loading() {
    echo "Instalando dependências. Aguarde..."
    sleep 1
    while true; do
        echo -n "."
        sleep 0.3
        echo -n ".."
        sleep 0.3
        echo -n "..."
        sleep 0.3
    done &
    pid=$!
}

# Função para verificar e instalar pacotes necessários
check_and_install() {
    # Verificar se o Python está instalado
    if ! command -v python &>/dev/null; then
        pkg install python -y &>/dev/null
    fi

    # Verificar se o mpv está instalado
    if ! command -v mpv &>/dev/null; then
        pkg install mpv -y &>/dev/null
    fi

    # Verificar se o yt-dlp está instalado
    if ! pip show yt-dlp &>/dev/null; then
        pip install yt-dlp &>/dev/null
    fi
}

# Função para limpar o link
clean_link() {
    link=$1
    clean_url=$(echo $link | sed 's/\?[^ ]*//')
    echo $clean_url
}

# Função para tocar a música
play_music() {
    link=$1
    yt-dlp -o - $link | mpv - &>/dev/null
}

# Início do script
echo "Bem-vindo ao script de reprodução de música!"

# Iniciar animação
loading

# Verificar e instalar pacotes necessários
check_and_install

# Parar animação após a instalação
kill $pid

echo "Instalação concluída!"

# Solicitar o link da música
echo "Digite o link da música do YouTube:"
read link

# Limpar o link
clean_link $link

# Reproduzir música
play_music $link
