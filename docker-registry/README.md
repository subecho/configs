# Considerations for Running Docker Registry through Compose

Make sure that the mount point for the registry files itself is mounted and
accessible and that the mount point matches the source path for the volume mount
in the Docker Compose file.

Also make sure that on any clients the following is added to
`/etc/docker/daemon.json`.

```json
{
   "registry-mirrors": ["http://raspberrypi.local:6000"]
}
```


