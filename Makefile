all: build


GO=/usr/local/bin/go

build: clean cmd/plugin/vault-auth-spire.go
	GOOS=linux GOARCH=amd64 $(GO) build -o vault-auth-spire cmd/plugin/vault-auth-spire.go

clean:
	@rm -f vault-auth-spire
