# Legacy moov Adapt SDK project dockerization

Old moov SDK Adapt projects (Tritium, MoovJS) no longer seem to be able to run
directly on MacOS. This dockerization project should help re-allow them to be
run on newer versions of MacOS.

## Prerequisites

- Install and run Docker Desktop for MacOS
- Run `docker build -t debian .` for this repo
- If your legacy project uses MoovJS, make sure you run `npm i` for it before
  running any of the following instructions

## Instructions

1. In this project's compose.yml, update the volume so that the left side of
   the colon is the path to the project folder that you want to run
2. Run `docker compose up -d`
3. Run `docker exec deb-moov-app-1 cat /etc/hosts`
4. Copy all the moov-generated hostnames to your machine's `/etc/hosts` file
5. Navigate to the mlocal. project in your browser and proceed with your
   development workflow on your local machine as normal
6. Stop the server with `docker stop deb-moov-app-1`
7. Clear out the moov-generated hostnames from your machine's `/etc/hosts` file
