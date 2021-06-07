BASH_OPTION=bash

docker run \
    -it \
    --rm \
    --device=/dev/dri:/dev/dri \
    -e DISPLAY=unix$DISPLAY \
    -v "/etc/localtime:/etc/localtime:ro" \
    -v "/tmp/.X11-unix:/tmp/.X11-unix" \
    -v "/home/$USER/sis2021_gazebo:/home/sis/gazebo" \
    --user sis \
    --name locobot \s
    --network host \
    --privileged \
    argsis/gazebo \
    $BASH_OPTION
