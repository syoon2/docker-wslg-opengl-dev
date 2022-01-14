# Using Docker Container and WSLg for OpenGL Development

A repo of files to compile and run OpenGL program inside WSL 2 using WSLg.

## Setup Instructions

### Prerequisite

- Windows 11

### Setup instructions

1. Install WSLg - see instruction on <https://github.com/microsoft/wslg#installing-wslg>
2. Install [Docker Desktop](https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe) with WSL 2 backend enabled: see this [documentation](https://docs.docker.com/desktop/windows/wsl/) from Docker.
3. Run your Linux Distro (Ubuntu by default) from Start Menu. This gives access to WSL ``bash``. Set username and password if you haven't already.
4. If you haven't already, install ``git`` with the following command in Ubuntu:
   ```bash
   sudo apt install git
   ```
5. Clone this repository with the following command in Ubuntu:
   ```bash
   git clone https://github.com/syoon2/docker-wslg-opengl-dev
   ```
6. Move to the cloned repository with following command:
   ```bash
   cd docker-wslg-opengl-dev
   ```
7. Run `run.sh`. It will take some time for Docker to set up everything you need.

### Using the setup

I personally recommend using VS Code with this setup.

1. Install [Remote Development Extensions](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) on VS Code.
2. Install [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) extension on VS Code.
3. Click the newly added Docker button on sidebar. Here you will see list of Docker containers, images, etc. set up on your system.
4. Right click on the `gpu_docker_wslg` container we've set up earlier. Click `Attach Visual Studio Code`.
5. And you are done! You can basically use it like your local system.

Note that this container stores files in its own file system and you may want to move files into / out of the container. For this, use [`docker cp`](https://docs.docker.com/engine/reference/commandline/cp/) command. There are other ways to do so, but I am lazy to go through them.

### Note on Windows 10
Note that this configuration does NOT work with Windows 10, as WSLg is not supported in Windows 10.  
There are ways to use graphical stuff with WSL in Windows 10 using 3rd-party programs like [Xming](https://sourceforge.net/projects/xming/) or [X410](https://x410.dev/), but you would have to edit some files in this repository before using. I have used them both in the path and neither of them were as smooth as using WSLg.
