# Resources
[How to Deploy a Static site using mkdocs & netlify](https://collabnix.com/how-to-deploy-a-static-site-using-mkdocs-and-netlify/)

# Installation Steps
```bash
brew install python
brew install mkdocs

## Install mkdocs as the main application
pipx install mkdocs
## Make apps globally accessible
pipx ensurepath

## Inject the material theme and plugins into the mkdocs environment
pipx inject mkdocs mkdocs-material pymdown-extensions mkdocs-minify-plugin mkdocs-swagger-ui-tag


source ~/venv/mkdocs/bin/activate

pip install mkdocs-material pymdown-extensions

pip install mkdocs-minify-plugin

pip install mkdocs-swagger-ui-tag

python3 -m venv ~/venv/mkdocs

## Running MKDOCS
mkdocs serve
```
Access via http://127.0.0.1:8000 or localhost:8000
