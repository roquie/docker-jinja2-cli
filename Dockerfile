FROM python:3-slim-stretch

COPY docker-entrypoint.sh /docker-entrypoint.sh

RUN pip3 install jinja2-cli \
    && pip install jinja2-cli[yaml]

WORKDIR /app
ENTRYPOINT ["/bin/sh", "/docker-entrypoint.sh"]

CMD ["jinja2"]
