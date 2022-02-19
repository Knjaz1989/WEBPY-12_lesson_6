FROM python:3.10.2-alpine3.15

MAINTAINER Igor Sverchkov <knjaz1989@gmail.com>

COPY ./stocks_products ./stocks_products

WORKDIR /stocks_products

RUN apk update && apk add nano gcc libpq5-devel

RUN export PATH=/usr/lib/postgresql/X.Y/bin/:$PATH

RUN python -m pip install --upgrade pip && pip install setuptools && pip install -r requirements.txt

RUN chmod +x /stocks_products/entrypoint.sh

ENTRYPOINT ["/stocks_products/entrypoint.sh"]


