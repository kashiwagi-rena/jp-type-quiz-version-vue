FROM denoland/deno:latest

WORKDIR /app

COPY deno.json ./
COPY deno.lock ./

COPY . .

RUN deno task build

EXPOSE 8000

CMD ["deno", "task", "start"]

