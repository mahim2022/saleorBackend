FROM ghcr.io/saleor/saleor:3.22

ENV PORT=8000
ENV BIND_ADDRESS=0.0.0.0

EXPOSE 8000

CMD python manage.py migrate && \
    python manage.py collectstatic --noinput && \
    uwsgi --ini /app/saleor/wsgi/uwsgi.ini