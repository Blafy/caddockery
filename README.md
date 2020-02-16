[![Build Status](https://build.albanboye.info/api/badges/Alban/caddockery/status.svg)](https://build.albanboye.info/Alban/caddockery)


 ## **Caddockery**

A docker build script of [Caddy](https://github.com/mholt/caddy), with telemetry disabled, provided in a light container.   
This way, you can obtain a clean and free build of the server (unlike the non-free binaries resulting from Caddy's permissive license).

The binary provided is also statically linked, making deployment easy !

Current version supported :
`v1.04`

### Build it yourself :

- **Bash script :**

Run `build.sh`. You should obtain a `caddockery` executable. (Requires `go` on your machine)

- **Dockerise it : (~20MB! )**

Run `docker build . -t caddockery`

### Docker usage :
Use it as a base image for your needs and add a caddyfile to it : you can put a file inside the container, mount a volume or provide some parameters ...   
Don't forget to expose the required ports !

### Example
Take a look at the `example.Dockerfile` in the `example` folder.  
Build and run :   
- `docker build -f example.Dockerfile . -t example`
- `docker run -p 8000:8000 example`

Open [localhost:8000](localhost:8000) in your browser to see if everything is working !

### TLS certificates
When using TLS, caddy stores the certificates in `.caddy`.
It is recommended to save certificates on the host machine to prevent regeneration every time container starts.   
Mount a volume with `-v $HOME/.caddy:/.caddy` for example.

### Mount a host folder
You might want to use a folder on your host to serve your files from, in order to do that just add `-v folderToMount:/html`


### General Usage


Please refer to the original project for more information :   
[Download](https://caddyserver.com/download) -
[Documentation](https://caddyserver.com/docs) -
[Community](https://caddy.community)

---
