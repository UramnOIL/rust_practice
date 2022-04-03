FROM debian@sha256:845224f88b8ee580ed28780ce9d9415e8157a3d911be2a7429de9e3f98c3d8aa

WORKDIR /app
COPY ./target/aarch64-unknown-linux-gnu/release/rust_practice /app/

EXPOSE 80
RUN chmod 111 /app/rust_practice

CMD [ "/app/rust_practice" ]