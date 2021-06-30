FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Kavindu-Dilhara/Misskitty /root/Kavindu-Dilhara/Misskitty
WORKDIR /root/Kavindu-Dilhara/Misskitty
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
