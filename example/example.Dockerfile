FROM caddockery

###### PREPARING FILES ######
#You can copy your files here, or mount the folder to the host

COPY index.html /html/

###### PREPARING CONFIG ######
#You can copy a config file here

COPY Caddyfile /config/


##### RUN AND CONFIGURE THE PORTS ###

EXPOSE 8000

ENTRYPOINT ["/caddockery", "-conf", "/config/Caddyfile"]
