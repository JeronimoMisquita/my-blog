# my-profile

This project is a personal website created with MkDocs.

## Prerequisites

- [uv](https://docs.astral.sh/uv/getting-started/installation/)

## Setup and Usage

1. **Initialize the environment:**
   ```bash
   ./dev init
   ```
   This will create a virtual environment and install the dependencies. You only need to run this once, or when dependencies change.

2. **Run the development server:**
   ```bash
   ./dev serve
   ```
   This will activate the virtual environment and start the local development server with livereload. Ensure you have run `./dev init` first.

3. **Deploy the site:**
   ```bash
   ./dev deploy
   ```
   This will activate the virtual environment and deploy the site to GitHub Pages. Ensure you have run `./dev init` first.

4. **Get help:**
   ```bash
   ./dev help
   ```
   This will show the available commands and their descriptions.