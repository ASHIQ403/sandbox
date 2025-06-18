# Changelog

All notable changes to this project will be documented in this file.

## v0.2.0 - (2025-06-17)

- **Features**:
  - Add Podman support. (unstable)
  - Added `--docker-socket` option to add docker socket to the container.
- **Improvements**:
  - Define error codes in entrypoint for better error handling.
  - Remove home directory of the user if existing.
  - Move functionality of remove container when error occurs to the command file
  - Add hostname to /etc/hosts file in the container to prevent "sudo: unable to resolve host debian-sandbox: Name or service not known" error.

## v0.1.0 - (2025-05-12)

- **Features**:
  - Added `--version` option to display the version of the script.
  - Added `sandbox --rm` option to remove persistent containers.
  - Added `sandbox -a` to attach to a container.
  - Added `sandbox <image> -h` to mount the home directory.
  - Added `sandbox <image> -i` to isolate container.
  - Added `sandbox <image> -v` to mount a volume.
- **Improvements**:
  - Mounting the home and working directories in the container.
  - Move docker functions to a separate file for better organization.
  - Improved creation messages.
- **Bug fixes**:
  - Improved container attachment logic in the sandbox script to prevent that when closing the terminal the subsequent attachment takes too long because it is already running and must wait until it stops to start it again.
  - Fixed: Running `--dry-run` with an existing container no longer triggers the error message: "Error: Container name '<container_name>' already exists."
  - Fixed: Before, the development version was installed with the installation script, now the stable version is installed.
  - Fixed: After host reboot, XAUTHORITY cookie is no longer valid, causing the container to fail to start.

## v0.0.0 - (2025-05-9)

- **Features**
  - **Temporary containers by default**: Containers are removed after exit unless a name is assigned.
  - **Persistent containers**: Assign a custom name to preserve the container across sessions.
  - **Automatic mounting of the current directory**: The current working directory is mounted at `/host/<current_dir>` by default, unless `--isolate` is used.
  - **Full isolation**: Use `--isolate` to prevent mounting the current directory and run in a fully isolated environment.
  - **Optional home directory mount**: Use `--home` to mount your home directory at `/host/home`.
  - **GPU support**: Enable NVIDIA GPU access with the `--nvidia` option.
  - **Custom volumes**: Mount additional volumes as needed.
