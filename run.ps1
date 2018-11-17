Set-Variable -name WORKROOT -Value C:/git/gobook-base
set-variable -name GO_PATH -value $WORKROOT/go
set-variable -name VSCODE_PATH -value $WORKROOT/.vscode
set-variable -name CONFIG_PATH -value $WORKROOT/.config
set-variable -name DISPLAY -value 192.168.1.125:0

# remember PS uses grave/accent ` instead of backslash \ for continue-on-next-line
docker run -it --rm --name vscode-golang-hackyhack `
    -v "$GO_PATH":/home/docker/go `
    -v "$VSCODE_PATH":/home/docker/.vscode `
    -v "$CONFIG_PATH":/home/docker/.config/Code `
    -e DISPLAY=$DISPLAY `
    vscode-golang-docker:v1