## Firefox com OpenVPN
Este repositório contém um Dockerfile e um docker-compose.yml para criar uma imagem Docker que executa o navegador Firefox com conexão VPN OpenVPN.

A imagem é baseada na imagem lscr.io/linuxserver/firefox:latest, e foi modificada para incluir o OpenVPN e seus pacotes relacionados.

## Como usar
Antes de usar, certifique-se de ter o Docker e o docker-compose instalados em seu sistema. Depois, siga as instruções abaixo:
Este comando criará e iniciará o contêiner com a imagem modificada.

Acesse o Firefox digitando http://localhost:3001 no seu navegador.
1. Clone este repositório em sua máquina local:

```bash
git clone https://github.com/MarcusPelo/FirefoxOVPN.git
```

2. Navegue até o diretório clonado:

```bash
cd FirefoxOVPN
```

3. Crie um arquivo openvpn.conf na raiz e preencha com as informações do seu servidor VPN.

4. Crie um arquivo auth com o nome de usuário e a senha do seu servidor VPN, em linhas separadas.

5. Execute o seguinte comando para criar e iniciar o contêiner:

```bash
docker-compose up -d
```

Este comando criará e iniciará o contêiner com a imagem modificada.

6. Acesse o Firefox digitando http://localhost:3001 no seu navegador.

## Parâmetros do docker-compose

A imagem pode ser configurada através dos seguintes parâmetros do docker-compose:

- `PUID`: o ID de usuário para o contêiner, padrão é `1000`.
- `PGID`: o ID do grupo para o contêiner, padrão é `1000`.
- `TZ`: fuso horário, padrão é `Europe/Amsterdam`.
- `ports`: a porta do host que será mapeada para a porta do contêiner, padrão é `3001:3000`.
- `volumes`: os volumes que serão montados no contêiner, onde:
    - `/config` é o diretório do Firefox;
    - `/etc/openvpn/openvpn.conf` é o arquivo de configuração do OpenVPN;
    - `/etc/openvpn/auth` é o arquivo de autenticação do OpenVPN.

## Suporte
Se você encontrar algum problema ao usar esta imagem, sinta-se à vontade para abrir uma issue neste repositório ou entrar em contato diretamente com o proprietário da imagem.

## Contribuindo
Se você quiser contribuir com este projeto, sinta-se à vontade para fazer um fork deste repositório e enviar suas alterações por meio de um pull request.