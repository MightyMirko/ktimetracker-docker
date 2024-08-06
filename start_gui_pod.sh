podman build . -t localhost/stm32x

## 
podman run -it --rm \
    -v /run/user/1000/gdm/Xauthority:/run/user/1000/gdm/Xauthority \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e XDG_RUNTIME_DIR=/run/user/$(id -u) \
    --userns keep-id \
    -e DISPLAY=$DISPLAY \
    --security-opt label=type:container_runtime_t \
    localhost/ktimetracker
