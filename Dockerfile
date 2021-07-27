FROM alpine:latest

RUN apk update && apk add --no-cache tor curl

COPY torrc /etc/tor/torrc
RUN chown -R tor /etc/tor

USER tor

ENTRYPOINT ["tor"]

CMD ["-f", "/etc/tor/torrc"]
