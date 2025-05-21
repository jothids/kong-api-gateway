# Dockerfile

FROM kong:latest

#copy kong configuration for docker-registry
COPY kong.yml /kong/declarative/kong.yml

#environment variables
ENV KONG_DATABASE=off \
KONG_DECLARATIVE_CONFIG=/kong/declarative/kong.yml \
KONG_PROXY_ACCESS_LOG=/dev/stdout \
KONG_ADMIN_ACCESS_LOG=/dev/stdout \
KONG_PROXY_ERROR_LOG=/dev/stderr \
KONG_ADMIN_ERROR_LOG=/dev/stderr \
KONG_ADMIN_LISTEN=0.0.0.0:8001 \
KONG_DNS_ORDER=A,CNAME,SRV \
KONG_DNS_RESOLVER=127.0.0.1:8600

#required ports
EXPOSE 8000 8001

#start kong
CMD ["kong", "docker-start"]
