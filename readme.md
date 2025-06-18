# Resources
[How to Deploy a Static site using mkdocs & netlify](https://collabnix.com/how-to-deploy-a-static-site-using-mkdocs-and-netlify/)

# Installation Steps
```bash
# Install python if not already installed
brew install python

# Install mkdocs using Homebrew
brew install mkdocs

# (Recommended) Install mkdocs as an isolated app using pipx
pipx install mkdocs

# Ensure pipx-installed apps are globally accessible
pipx ensurepath

# Inject the windmill theme and plugins into the mkdocs environment
pipx inject mkdocs mkdocs-windmill pymdown-extensions mkdocs-minify-plugin mkdocs-swagger-ui-tag

# (Alternative) Set up a Python virtual environment for mkdocs
python3 -m venv ~/venv/mkdocs
source ~/venv/mkdocs/bin/activate

# Install mkdocs and plugins in the virtual environment
pip install mkdocs mkdocs-windmill pymdown-extensions mkdocs-minify-plugin mkdocs-swagger-ui-tag

# Running mkdocs locally
mkdocs serve
```
Access the site at http://127.0.0.1:8000 or http://localhost:8000

