FROM dpage/pgadmin4:latest

# Set default environment variables (these can also be overridden in Render Dashboard)
ENV PGADMIN_DEFAULT_EMAIL=rudrra@gmail.com
ENV PGADMIN_DEFAULT_PASSWORD=rudrra
ENV PGADMIN_LISTEN_PORT=80
ENV PGADMIN_LISTEN_ADDRESS=0.0.0.0
ENV SERVER_MODE=True

# Expose the port
EXPOSE 80
