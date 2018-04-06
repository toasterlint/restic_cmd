# restic_cmd

To run:
docker run -it -v /path/to/script:/data/restic.sh -v /path/to/passfile:/data/restic_pass toasterlint/restic_cmd:latest

*note: ensure that passfile in your script references the same location that is specified in the docker run command
