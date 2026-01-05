#!/bin/bash
set -e

# Check Python version
PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
REQUIRED_PYTHON_VERSION="3.12"

if printf '%s\n' "$REQUIRED_PYTHON_VERSION" "$PYTHON_VERSION" | sort -V -C; then
    echo "Python version is $PYTHON_VERSION, which is at least $REQUIRED_PYTHON_VERSION."
else
    echo "Error: Python version $PYTHON_VERSION detected. Python $REQUIRED_PYTHON_VERSION or higher is required."
    exit 1
fi

# Check if uv is installed
if ! command -v uv &> /dev/null
then
    echo "uv could not be found, please install it first"
    echo "See https://astral.sh/docs/installation"
    exit 1
fi

# Command handling
case "$1" in
    init)
        # Create virtual environment if it doesn't exist
        if [ ! -d ".venv" ]; then
            uv venv
        fi
        # Activate virtual environment
        source .venv/bin/activate
        # Install/update dependencies
        uv pip install -p pyproject.toml
        ;;
    deploy)
        # Activate virtual environment
        source .venv/bin/activate
        mkdocs gh-deploy
        ;;
    serve)
        # Activate virtual environment
        source .venv/bin/activate
        mkdocs serve --livereload
        ;;
    help)
        echo "Usage: $0 {init|deploy|serve|help}"
        echo "  init: Sets up the Python virtual environment and installs dependencies using uv."
        echo "  deploy: Deploys the mkdocs site to GitHub Pages."
        echo "  serve: Runs the mkdocs development server with livereload."
        echo "  help: Show this help message."
        ;;
    *)
        echo "Unknown command: $1"
        echo "Usage: $0 {init|deploy|serve|help}"
        exit 1
        ;;
esac
