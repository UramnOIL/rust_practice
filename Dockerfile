FROM debian:stable-slim

WORKDIR /app
COPY ./target/aarch64-unknown-linux-gnu/release/rust_practice /app/

EXPOSE 80
RUN chmod 111 /app/rust_practice

RUN ls /app

ENTRYPOINT [ "/app/rust_practice" ]