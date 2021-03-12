# ChordPro Docker

This Dockerfile sets up a Linux development environment for building ChordPro from source.

## Getting started
1. Pull the image from DockerHub or build it using this Dockerfile
    - Pull: `docker pull daysm/chordpro-dev`
    - Build: `docker build . -t daysm/chordpro-dev`
2. Run container: `docker run -it daysm/chordpro-dev /bin/bash`
3. Build ChordPro
    - `cd` into `/chordpro-R0.978/pp/linux`
    - Run `pp --output=chordpro @chordpro.pp ../../script/chordpro.pl`

You can find a detailed explanation of the Dockerfile at https://dayyan.dev/building-chordpro-from-source
