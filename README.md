# Alison Appleby Website

A static website for Alison R. Appleby's Educational Therapy Services.

## Structure

```
├── index.html          # Main page
├── css/styles.css      # Modern responsive styles
├── js/main.js          # Navigation and scroll behavior
├── assets/img/         # Images and logos
├── Dockerfile          # Nginx container
└── docker-compose.yml  # Local development
```

## Docker Setup

### Prerequisites

- Docker installed on your system
- Docker Compose (optional but recommended)

### Running with Docker Compose (Recommended)

1. Build and start the container:

   ```bash
   docker-compose up --build
   ```

2. Open the site at: http://localhost:8080

3. Stop the container:

   ```bash
   docker-compose down
   ```

### Running with Docker directly

1. Build the image:

   ```bash
   docker build -t alison-appleby-site .
   ```

2. Run the container:

   ```bash
   docker run -d -p 8080:80 --name alison-appleby alison-appleby-site
   ```

3. Open the site at: http://localhost:8080

4. Stop and remove the container:

   ```bash
   docker stop alison-appleby
   docker rm alison-appleby
   ```

### Local development (no Docker)

From the project root:

```bash
python3 -m http.server 8080
```

Then open http://localhost:8080

## Notes

- Nginx serves static files on port 80 inside the container
- Port 8080 is mapped to the container in `docker-compose.yml`
- No build step required — plain HTML, CSS, and JavaScript
