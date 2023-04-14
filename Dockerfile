FROM lscr.io/linuxserver/firefox:latest

# Instalar pacotes necessários para configurar a VPN
RUN apk add --no-cache openvpn

# Executar o OpenVPN quando o container iniciar
CMD ["openvpn", "--config", "/etc/openvpn/openvpn.conf", "--auth-user-pass", "/etc/openvpn/auth"]
