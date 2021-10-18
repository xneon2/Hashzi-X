FROM fusuf/whatsasena:latest

RUN git clone https://github.com/jesonpro/ALEXA /root/ales
WORKDIR /root/ales/
RUN git clone https://github.com/tenuh/Config
RUN git clone https://github.com/jesonpro/Angela-x
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
