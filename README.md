# Music Player Script

Este script permite que você baixe e reproduza músicas diretamente do YouTube usando o `yt-dlp` e o `mpv`, de forma simples e automatizada. Ele verifica se os pacotes necessários (Python, `mpv` e `yt-dlp`) estão instalados, realiza a instalação caso não estejam e, em seguida, permite que você insira um link de vídeo do YouTube para reproduzir a música diretamente no seu terminal.

## Funcionalidades:

- **Verificação automática de dependências**: Verifica se o Python, `mpv` e `yt-dlp` estão instalados. Se não estiverem, instala-os automaticamente.
- **Reprodução de música**: Permite que você insira o link de uma música do YouTube, limpa o link e começa a reprodução diretamente no terminal.
- **Animação de carregamento**: Enquanto as dependências são instaladas, uma animação de carregamento divertida é exibida.

## Requisitos:

- **Termux** ou outro terminal com suporte para os comandos do script.
- **Pacotes necessários**: Python, `mpv` e `yt-dlp`.

## Como Usar:

1. Clone este repositório para o seu sistema:

   ```bash
   git clone https://github.com/seu-usuario/music-player-script.git

2. Navegue até a pasta do repositório:

cd music-player-script


3. Torne o script executável:

chmod +x music_player.sh


4. Execute o script:

./music_player.sh


5. Digite o link do YouTube quando solicitado para começar a reprodução da música.



Contribuições:

Sinta-se à vontade para contribuir com melhorias, correções de bugs ou novos recursos! Você pode criar uma issue ou enviar um pull request.

Licença:

Este projeto é licenciado sob a MIT License - consulte o arquivo LICENSE para mais detalhes.

### Instruções para subir o repositório no GitHub:

1. **Crie o repositório no GitHub**:
   - Acesse [GitHub](https://github.com) e crie um novo repositório. Dê um nome como `music-player-script`.
   
2. **Faça o commit do script e do README**:
   - Inicialize o repositório localmente e adicione os arquivos:

     ```bash
     git init
     git add music_player.sh README.md
     git commit -m "Adiciona script de reprodução de música com animação e verificação de dependências"
     ```

3. **Suba para o GitHub**:

   - Conecte seu repositório local ao repositório remoto:

     ```bash
     git remote add origin https://github.com/seu-usuario/music-player-script.git
     ```

   - Suba os arquivos para o repositório remoto:

     ```bash
     git push -u origin master
     ```
