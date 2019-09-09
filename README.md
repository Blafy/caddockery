
 ## **Caddockery**

A docker build script of [Caddy](https://github.com/mholt/caddy/wiki/Running-Caddy-on-Android), with telemetry disabled, provided in a light container.   
This way, you can obtain a clean and free build of the server (unlike the non-free binaries resulting from Caddy's permissive license).

The binary provided is also statically linked, making deployment easy !

Current version supported :
`v1.03`

### Build it yourself :

**Bash script :**

Run `build.sh`. You should obtain a `caddockery` executable. (Requires `go` on your machine)

**Dockerise it : (~20MB! )**

Run `docker build . -t caddockery`

### Docker usage :
Use it as a base image for your needs and add a caddyfile to it : you can put a file inside the container, mount a volume or provide some parameters ...   
Don't forget to expose the required ports !

### Example
Take a look at the `example.Dockerfile` in the `example` folder.   

### General Usage


Please refer to the original project for more information :   
[Download](https://caddyserver.com/download) -
[Documentation](https://caddyserver.com/docs) -
[Community](https://caddy.community)

---
