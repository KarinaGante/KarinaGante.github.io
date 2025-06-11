# TryHackMe: Desafio OSINT


Guia do desafio OSINT do TryHackMe, rastreando uma pegada digital usando técnicas OSINT do mundo real.

<!--more-->

> ***🇺🇸 Read in [English](http://karinagante.github.io/tryhackme-desafio-osint/).***

## TryHackMe: Desafio OSINT

### Guia completo

<p align="justify">Este é um passo a passo completo do Desafio OSINT hospedado no TryHackMe, uma popular plataforma de aprendizado em segurança cibernética. Esta sala de inteligência de código aberto (OSINT) desafia os usuários a rastrear a pegada digital de um personagem fictício, a partir de uma única imagem.</p>

<p align="justify">Ao longo do desafio, você irá extrair metadados, realizar buscas reversas de imagens, investigar atividades em mídias sociais e explorar repositórios do GitHub para descobrir sinalizadores ocultos — um dos quais está habilmente incorporado em um elemento interativo em um blog pessoal. Perfeito para iniciantes em segurança cibernética e investigadores digitais, este CTF (Capture The Flag) prático oferece treinamento OSINT usando técnicas do mundo real.</p>

<p align="justify">Se você está se preparando para uma carreira em segurança cibernética, estudando para certificações OSINT ou simplesmente adora resolver quebra-cabeças online, esta sala é uma ótima maneira de aprimorar suas habilidades de reconhecimento e aprender a rastrear alguém online usando apenas dados disponíveis publicamente.</p>

### Acesse a sala aqui:

👉 [https://tryhackme.com/room/desafioosint](https://tryhackme.com/room/desafioosint)

### Tarefa 1 - OSINT: Imagem

<p align="justify">O desafio começa com uma imagem. Sua missão: extrair metadados e encontrar pistas que revelem a localização da foto.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/trip-1719941392499-1729532974063.JPG">
</p>
<br>

| Perguntas |
|:-------|
| P1. Qual é o nome de usuário? |
| P2. Qual é o nome completo do usuário? |
| P3. Onde a foto foi tirada? |

#### P1. Qual é o nome de usuário?

<p style="text-align: justify;">Para recuperar metadados de imagens, você pode usar vários visualizadores EXIF ​​online. Em sistemas Linux, o comando <strong>exiftool</strong> é ideal: </p>

```console
exiftool <nome do arquivo>
```
<br>
<p style="text-align: justify;">Se não estiver instalado, execute: </p>

```console
sudo apt install exiftool
```

> ***☝️🤓 Para outras plataformas, siga o [Guia de Instalação](https://exiftool.org/install.html).***

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/username.png">
</p>
<br>

#### Q2. Qual é o nome completo do usuário?

<p style="text-align: justify;"> Ao continuar analisando os metadados, você descobrirá o nome real do usuário. Sempre observe atentamente campos como Autor, Artista, Criador, Direitos Autorais e Proprietário: </p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/user-full-name.png">
</p>
<br>

#### Q3. Onde a foto foi tirada?

<p style="text-align: justify;">
Coloque a imagem no Google:
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/place.png">
</p>
<br>

> ***🇧🇷 Este desafio é em **Português**, então lembre-se de traduzir e interpretar as dicas adequadamente.***

### Tarefa 2 - OSINT: Mídias Sociais

<p style="text-align: justify;">Agora que você tem o nome de usuário e o nome completo, comece sua investigação nas mídias sociais. Use plataformas como Facebook, Instagram, X (Twitter) e LinkedIn para rastrear dados pessoais.</p>

| Perguntas |
|:-------|
| P1. Qual é a cidade de nascimento do usuário? |
| P2. Onde o usuário estava em 13 de maio de 2024? |
| P3. Qual é o e-mail do usuário? |

#### P1. Qual é a cidade de nascimento do usuário?

<p style="text-align: justify;"> Observe os perfis públicos do usuário. O Facebook e o LinkedIn geralmente contêm informações biográficas, como a cidade de nascimento ou cidade natal.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/facebook.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/twitter-x.png">
</p>
<br>

> ***☝️🤓 Novamente: Este desafio é em **português**, então lembre-se de traduzir e interpretar as dicas adequadamente.***

#### Q2. Onde o usuário estava em 13 de maio de 2024?

<p style="text-align: justify;">Navegue pelas postagens nas redes sociais e fotos com geolocalização. Os usuários costumam compartilhar detalhes de viagens ou check-ins que revelam sua localização.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/may-13-2024.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/may-13-place.png">
</p>
<br>

#### Q3. Qual é o e-mail do usuário?

<p style="text-align: justify;"> O GitHub pode ser uma mina de ouro para OSINT. Verifique os commits e as configurações do perfil para descobrir o endereço de e-mail do usuário.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/email.png">
</p>
<br>

### Tarefa 3 - Primeira Flag: Bem-vindo ao CSSDC OSINT CTF

<p style="text-align: justify;">
Agora que você tem vários dados de usuário, procure a primeira flag.
</p>

| Pergunta |
|:-------|
| P1. Qual flag é encontrada no repositório? |

#### P1. Qual flag é encontrada no repositório?

<p style="text-align: justify;">
Agora que coletamos alguns dados pessoais, a primeira flag está escondida dentro de um repositório do GitHub. Procure um repositório chamado <strong>"cssdc"</strong>, conforme referenciado na descrição do desafio.
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/repo.png">
</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/file.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/flag.png">
</p>
<br>

### Tarefa 4 - Flag Final

<p style="text-align: justify;">Continue coletando mais dados do usuário e encontre a última flag na página pessoal dela.</p>

| Perguntas |
|:-------|
| P1. Qual é o endereço do blog do usuário? |
| P2. Qual banco de dados o site usa? |
| P3. Procure a flag no site. |

#### P1. Qual é o endereço do blog do usuário?

<p style="text-align: justify;">A maioria dos perfis do GitHub inclui sites ou blogs pessoais na seção de biografia. Você encontrará o link facilmente.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/blog.png">
</p>
<br>

#### Q2. Qual banco de dados o site utiliza?

Use ferramentas como [Wappalyzer](https://www.wappalyzer.com/) para analisar as tecnologias de backend do site.

> ***☝️🤓 Instale o Wappalyzer como uma extensão do navegador.***

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/db.png">
</p>
<br>

#### Q3. Procure a flag no site.

<p style="text-align: justify;"> Clique em todos os elementos do blog. Passe o mouse sobre elementos incomuns e inspecione o conteúdo oculto ou o texto incorporado.</p>

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/dot.png">
</p>
<br>

<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/final-flag.png">
</p>
<br>

### 🎉 Parabéns! Todas as tarefas concluídas!

<br>
<p align="center">
  <img src="/images/TryHackMe: Desafio OSINT/completed.png">
</p>
<br>

<p style="text-align: justify;"> Você concluiu com sucesso o Desafio TryHackMe OSINT. Esta sala é uma excelente introdução à OSINT prática e à perícia digital, ensinando como coletar e analisar informações de código aberto em diversas plataformas.</p>

### 🚩 Pronto para sua próxima aventura no TryHackMe?
