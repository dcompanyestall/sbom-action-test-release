FROM node:16-alpine
ENV NODE_ENV=production
WORKDIR /app
RUN yarn global add serve
COPY build/ .
RUN pwd && ls -l
CMD [ "serve", "-s", "." ]
