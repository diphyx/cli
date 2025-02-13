#!/bin/bash

# Check the root privileges
if [ "$(whoami)" != "root" ]; then
  echo "Requires root privileges"

  exit 1
fi

# Initialize the host OS variable
OS=$(uname -s)
case "$OS" in
    Linux)
        OS="linux"
        ;;
    Darwin)
        OS="mac"
        ;;
    *)
        echo "Unsupported OS: $OS"
        echo "Supported OS are Linux and MacOS"

        exit 1
        ;;
esac

# Initialize the host architecture variable
ARCH=$(uname -m)
case "$ARCH" in
    x86_64)
        ARCH="amd64"
        ;;
    aarch64)
        ARCH="arm64"
        ;;
    arm64)
        ARCH="arm64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        echo "Supported architectures are x86_64, aarch64, and arm64"

        exit 1
        ;;
esac

# Intialize the CLI variable
CLI="$1"
if [ "$CLI" != "diphyx" ] && [ "$CLI" != "dxflow" ]; then
    echo "Invalid CLI: $CLI"
    echo "The CLI must be either 'diphyx' or 'dxflow'"

    exit 1
fi

# Dependencies installation
if [ "$2" == "--install-deps" ]; then
    # Check if the host OS is not Linux
    if [ "$OS" != "linux" ]; then
        echo "Dependencies installation is only supported on Linux"

        exit 1
    fi

    # Install the dependencies
    echo "Installing Dependencies ..."

    # Docker installation
    wget -qO- https://get.docker.com | sh &> /dev/null

    echo "Dependencies installed successfully"
fi

# Install the CLI
echo "Installing ${CLI} ..."
wget -qO /usr/local/bin/${CLI} "https://raw.githubusercontent.com/diphyx/cli/main/${CLI}/bin/${OS}-${ARCH}"
if [ $? -ne 0 ]; then
    echo "Failed to download ${CLI} from GitHub"
    echo "Please check your internet connection and try again"

    exit 1
fi

# Make the CLI executable
chmod +x "/usr/local/bin/${CLI}"

# Done CLI installation
echo "${CLI} installed successfully"
echo "You can verify the CLI installation by running: '${CLI} --version'"
