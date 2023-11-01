# Legacy moov Adapt SDK project dockerization

Old moov SDK Adapt projects (Tritium, MoovJS) no longer seem to be able to run
directly on MacOS. This dockerization project should help re-allow them to be
run on newer versions of MacOS.

## Prerequisites

- Install Docker Desktop
- Have a `~/workspace` directory with your legacy projects
- Install this repo in that same `~/workspace` directory

## Instructions

1. On the command line for this deb-moov repo, run `docker build -t debian .`
2. Then run `docker compose up -d`
3. In the Docker Desktop dashboard, click on the `deb-moov-app-1` container
4. Click on Exec tab
5. From this container terminal, run `/bin/bash`
6. Navigate to your workspace project
7. If it is a MoovJS project, run `npm install`
8. Run `moov server --verify-ssl-cert=false`
9. Click on the Files tab
10. Find the container's `/etc/hosts` file
11. Update your local (non-docker) machine's `/etc/hosts` to match all the
    mlocal hostnames from the container's `/etc/hosts` file
12. Navigate to the mlocal. project in your local (non-docker) machine's
    browser
13. Make your development changes on your local (non-docker) machine
14. Use git on your local (non-docker) machine to push/pull changes to the repo
15. To run another project afterwards, restart the container (since it does not
    appear that the container's host file gets reset or is operable after
    stopping the first moov server)
