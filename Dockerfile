FROM alpine:latest AS builder
WORKDIR /app
COPY schema.sql .

RUN echo "SQL script staged successfully."

# --- Stage 2: Final Production Stage ---
# We use the official MySQL image as our final runtime environment
FROM mysql:8.0

# Set root password and default database for the MySQL server
ENV MYSQL_ROOT_PASSWORD=secretpassword
ENV MYSQL_DATABASE=cricket_db


COPY --from=builder /app/schema.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
