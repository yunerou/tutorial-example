FROM node:16-buster as base
RUN yarn global add gatsby-cli
WORKDIR /app
ADD . ./
EXPOSE 8000

FROM base as dev
ENV NODE_ENV=development
RUN yarn install
CMD ["gatsby", "develop", "-H",  "0.0.0.0"]