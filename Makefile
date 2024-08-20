dep:
	brew install tls

caddy-ssl:
	cd ./caddy && openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 \
  -nodes -keyout ssl.key -out ssl.crt -subj "/CN=ssl" \
  -addext "subjectAltName=DNS:localhodst,DNS:localhost,IP:127.0.0.1"

docker:
	docker compose up --build

docker-down:
	docker compose down