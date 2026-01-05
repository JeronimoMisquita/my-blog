# my-profile

This project is a personal website created with MkDocs.

## Prerequisites

- [uv](https://docs.astral.sh/uv/getting-started/installation/)

## Setup and Usage

1. **Initialize the environment:**
   ```bash
   ./dev.sh init
   ```
   This will create a virtual environment and install the dependencies. You only need to run this once, or when dependencies change.

2. **Run the development server:**
   ```bash
   ./dev.sh serve
   ```
   This will activate the virtual environment and start the local development server with livereload. Ensure you have run `./dev.sh init` first.

3. **Deploy the site:**
   ```bash
   ./dev.sh deploy
   ```
   This will activate the virtual environment and deploy the site to GitHub Pages. Ensure you have run `./dev.sh init` first.

4. **Get help:**
   ```bash
   ./dev.sh help
   ```
   This will show the available commands and their descriptions.