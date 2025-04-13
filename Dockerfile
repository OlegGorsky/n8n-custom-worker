# Dockerfile
FROM n8nio/n8n:1.86.1

USER root

# Устанавливаем нужные библиотеки прямо внутрь task-runner
RUN npm install node-telegram-bot-api axios pdfkit --prefix /usr/local/lib/node_modules/n8n/node_modules/@n8n/task-runner

USER node
