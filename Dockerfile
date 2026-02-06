# Use official Saleor image
FROM ghcr.io/saleor/saleor:3.22

# Ensure Python output is not buffered
ENV PYTHONUNBUFFERED=1

# Expose Saleor port
EXPOSE 8000

# Default command for Render
CMD ["gunicorn", "saleor.asgi:application", "-k", "uvicorn.workers.UvicornWorker", "--bind", "0.0.0.0:8000"]