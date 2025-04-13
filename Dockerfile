FROM n8nio/n8n:1.86.1

# Установим нужные библиотеки (если надо)
RUN npm install --prefix /usr/local/lib/node_modules/n8n \
    node-telegram-bot-api axios pdfkit

# Запускаем воркер
CMD ["n8n", "worker"]
