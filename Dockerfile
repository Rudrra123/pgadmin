FROM python:3.11-slim

# Install dependencies
RUN apt-get update && \
    apt-get install -y build-essential libpq-dev libffi-dev libssl-dev curl && \
    pip install --upgrade pip

# Install pgAdmin from source
RUN pip install pgadmin4

# Create required folders
RUN mkdir -p /var/lib/pgadmin && \
    mkdir -p /pgadmin && \
    chmod -R 777 /pgadmin

# Set environment variables
ENV PGADMIN_SETUP_EMAIL=rudrraservices@gmail.com
ENV PGADMIN_SETUP_PASSWORD=rudrra@1999
ENV PGADMIN_LISTEN_PORT=80

# Set config location
ENV PGADMIN_CONFIG_DIR="/pgadmin"
ENV PGADMIN_DATA_DIR="/var/lib/pgadmin"

# Expose port
EXPOSE 80

# Run pgAdmin
CMD ["pgadmin4"]
