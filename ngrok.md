## Publicar web app localhost mediante ngrok

```````````
1. Bajar ngrok. Ref. https://ngrok.com/docs/getting-started/
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | \
  sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
  echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | \
  sudo tee /etc/apt/sources.list.d/ngrok.list && \
  sudo apt update && sudo apt install ngrok

2. Connect your agent to your ngrok account
ngrok config add-authtoken TOKEN
authtoken se obtiene de aplicación o del web dashboard (Ref. https://dashboard.ngrok.com/get-started/your-authtoken)

3. Inicializar el servicio de ngrok con el puerto http / https del localhost
ngrok http 80 (p. ej.)

```````````