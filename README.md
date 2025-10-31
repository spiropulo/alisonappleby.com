# Alison Appleby Website

A static website for Alison R. Appleby's Educational Therapy Services.

## Docker Setup

### Prerequisites
- Docker installed on your system
- Docker Compose (optional but recommended)

### Running with Docker Compose (Recommended)

1. Build and start the container:
   ```bash
   docker-compose up --build
   ```

2. Access the website at: http://localhost:8080

3. Stop the container:
   ```bash
   docker-compose down
   ```

### Running with Docker directly

1. Build the Docker image:
   ```bash
   docker build -t alison-appleby-site .
   ```

2. Run the container:
   ```bash
   docker run -d -p 8080:80 --name alison-appleby alison-appleby-site
   ```

3. Access the website at: http://localhost:8080

4. Stop and remove the container:
   ```bash
   docker stop alison-appleby
   docker rm alison-appleby
   ```

### Development

To run in development mode with auto-reload:

```bash
docker-compose up
```

The site will automatically reload when you make changes to the files.

## Notes

- The website uses Nginx as the web server
- Port 8080 is mapped to the container's port 80
- All static assets are served from the `Alison Appleby_files` directory

