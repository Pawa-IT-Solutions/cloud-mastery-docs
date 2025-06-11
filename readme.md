# resources
https://collabnix.com/how-to-deploy-a-static-site-using-mkdocs-and-netlify/
gcloud storage buckets update gs://BUCKET_NAME --cors-file=file.json
gcloud storage buckets update gs://BUCKET_NAME --clear-cors


#steps
brew install python
brew install mkdocs

# Install mkdocs as the main application
pipx install mkdocs
# Make apps globally accessible
pipx ensurepath

# Inject the material theme and plugins into the mkdocs environment
pipx inject mkdocs mkdocs-material pymdown-extensions mkdocs-minify-plugin mkdocs-swagger-ui-tag


python3 -m venv ~/venv/mkdocs
source ~/venv/mkdocs/bin/activate
pip install mkdocs-material pymdown-extensions

pip install mkdocs-minify-plugin
pip install mkdocs-swagger-ui-tag


## run 
mkdocs serve

Access via http://127.0.0.1:8000 or localhost:8000