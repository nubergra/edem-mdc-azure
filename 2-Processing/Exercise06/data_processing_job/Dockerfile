FROM python:3.11-slim

WORKDIR /app

# Copiar script
COPY process_data.py .

# Instalar dependencias (si necesitas más, añádelas aquí)
RUN pip install --no-cache-dir pandas

# Ejecutar script
CMD ["python", "-u", "process_data.py"]