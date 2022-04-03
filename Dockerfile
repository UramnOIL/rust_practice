FROM gcr.io/distroless/cc:latest-arm64

WORKDIR /app
COPY ./target/aarch64-unknown-linux-gnu/release/rust_practice /app/

EXPOSE 80
RUN ["/busybox/sh", "-c", "chmod" "111" "/app/rust_practice"]

CMD [ "/app/rust_practice" ]