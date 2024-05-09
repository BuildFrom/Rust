install:
	cargo add tokio -F full
	cargo add axum
	cargo add reqwest -F json 
	cargo add tower_http -F trace
	cargo add tower-http -F fs
	cargo add tower_http -F compression-full
	cargo add tower -F util
	cargo add uuid -F v4
	cargo add tracing_appender
	cargo add tracing_subscriber -F json
	cargo add dotenvy
	cargo add config
	cargo add serde -f derive
	cargo add async_trait
	cargo add clap

run:
	lsof -i :3001 | awk 'NR!=1 {print $$2}' | xargs -r kill -9
	cargo run

server-release:
	lsof -i :3001 | awk 'NR!=1 {print $$2}' | xargs -r kill -9
	cargo run --release

server-help:
	cargo run -- --help
