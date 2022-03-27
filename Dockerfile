FROM gcr.io/distroless/cc:latest-arm64

WORKDIR /app
COPY ./target/aarch64-unknown-linux-gnu/release/rust_practice /app/

EXPOSE 80

CMD [ "/app/rust_practice" ]