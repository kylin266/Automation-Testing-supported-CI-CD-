FROM node:12-slim


WORKDIR /usr/app


ADD ./package.json package.json
ADD ./package-lock.json package-lock.json

RUN npm ci

ADD ./scripts/wait-for-it.sh ./
RUN chmod 755 wait-for-it.sh
ADD ./scripts/run.sh ./
RUN chmod 755 run.sh

ADD ./.env ./
ADD ./tsconfig.json ./
ADD ./.eslintrc.js ./
ADD ./wdio.conf.js ./
ADD ./cucumber.report.conf.js ./
ADD ./config config
ADD ./src src


# CMD [ "./wait-for-it.sh", "-t", "15", "chrome:5555"]
# CMD [ "./run.sh" ]
