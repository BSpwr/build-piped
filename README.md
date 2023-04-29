# Build piped-frontend 

This GitHub repo automatically builds the latest image from [TeamPiped/Piped](https://github.com/TeamPiped/Piped)

If `PIPED_API_URL` is set, the frontend code will be modified at container startup to use custom piped backend.

## Usage

```
version: "3"
services:
  piped-frontend:
    image: ghcr.io/bspwr/piped-frontend:latest
    container_name: piped-frontend
    restart: unless-stopped
    ports:
      - 8080:80
    environment:
      - PIPED_API_URL=pipedapi.custom.domain
```