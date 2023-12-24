FROM node:21.5.0-bookworm as builder

RUN npm install -g pnpm

# install FoundationDB client library
RUN wget -q https://github.com/apple/foundationdb/releases/download/7.3.27/foundationdb-clients_7.3.27-1_amd64.deb \
  && dpkg -i foundationdb-clients_7.3.27-1_amd64.deb \
  && rm foundationdb-clients_7.3.27-1_amd64.deb

WORKDIR /app

COPY ./src/ .

RUN pnpm install typescript
RUN pnpm build

FROM node:21.5.0-bookworm

RUN npm install -g pnpm

# install FoundationDB client library
RUN wget -q https://github.com/apple/foundationdb/releases/download/7.3.27/foundationdb-clients_7.3.27-1_amd64.deb \
  && dpkg -i foundationdb-clients_7.3.27-1_amd64.deb \
  && rm foundationdb-clients_7.3.27-1_amd64.deb

WORKDIR /app
COPY ./src/ .

RUN pnpm install -P

COPY --from=builder /app/build /app/build

ENTRYPOINT ["node", "build/index.js"]
