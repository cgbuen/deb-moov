# Legacy moov adapt SDK project dockerization


## Instructions

1. Install Docker Desktop
2. `docker build -t debian .`
3. `docker compose up -d`
4. Click on `deb-moov-app-1` container
5. Click on Exec tab
6. `moov server --verify-ssl-cert=false`
7. Click on Files tab
8. Find the container's `/etc/hosts` file
9. Update your local (non-docker) machine's `/etc/hosts` to match all the mlocal
   hostnames from the container's `/etc/hosts` file
10. Navigate to the mlocal. project
