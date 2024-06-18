FROM node:18
WORKDIR /root
RUN apt update && \
    apt install yarn -y
COPY . .
RUN yarn build
EXPOSE 1337
CMD [ "yarn", "start" ]


    
