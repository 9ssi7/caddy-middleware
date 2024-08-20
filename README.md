# caddy auth middleware

this is a demo of how to use caddy as a middleware to authorize requests between microservices.

# How to run

Create ssl certificates for the caddy server

```bash
make caddy-ssl
```

Run the docker containers

```bash
make docker
```

# How to test

```bash
# for https
curl -k https://localhost # Should return forbidden
curl -k https://localhost -H "Authorization: Bearer token" # Should return 200

# for http
curl http://localhost # Should return forbidden
curl http://localhost -H "Authorization: Bearer token" # Should return 200
```