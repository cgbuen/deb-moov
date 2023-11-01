# Legacy moov adapt SDK project dockerization


## Instructions

1. Install Docker Desktop
2. On the command line for this deb-moov repo, run `docker build -t debian .`
3. Then run `docker compose up -d`
4. In the Docker Desktop dashboard, click on the `deb-moov-app-1` container
5. Click on Exec tab
6. In this container terminal, run `/bin/bash`
7. Navigate to your workspace project
8. If it is a MoovJS project, run `npm install`
9. Run `moov server --verify-ssl-cert=false`
10. Click on the Files tab
11. Find the container's `/etc/hosts` file
12. Update your local (non-docker) machine's `/etc/hosts` to match all the
    mlocal hostnames from the container's `/etc/hosts` file
13. Navigate to the mlocal. project
14. Use git on your local machine (non-docker) to push/pull changes to the repo
15. To run another project afterwards, restart the container (since it does not
    appear that the container's host file gets reset or is operable after
    stopping the first moov server)
