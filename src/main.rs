use actix_web::{get, App, HttpServer, HttpResponseBuilder, http::{StatusCode, header::ContentType}, HttpResponse};
use std::env;

#[get("/")]
async fn index() -> HttpResponse {
    let podname = match env::var("POD_NAME") {
        Ok(val) => val,
        Err(err) => err.to_string(),
    };
    HttpResponseBuilder::new(StatusCode::ACCEPTED)
        .append_header(ContentType::plaintext())
        .append_header(("Access-Control-Allow-Origin", "*"))
        .body(podname)       
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    HttpServer::new(|| App::new().service(index))
        .bind(("0.0.0.0", 80))?
        .run()
        .await
}

#[test]
fn test() {
    println!("hoge")
}