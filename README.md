# docker-autorip-cd
Docker container created to auto-rip CDs to FLACs

# Launching the container
```
docker run \
 -it \
 --rm \
 --name autorip \
 --device /dev/cdrom \
 -v /path/to/cddb:/cddb \
 -v /path/to/output:/output \
 mikenye/autorip-cd
```
* Volume mapping for /cddb is optional.
* All rip output is saved at /output.

It is suggested to create an alias as follows:

```alias autorip-cd='docker run -it --rm --name autorip --device /dev/cdrom -v /opt/autorip-cd/cddb:/cddb -v /Music/Ripped:/output mikenye/autorip-cd'```
