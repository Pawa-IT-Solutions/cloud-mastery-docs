# resources
https://collabnix.com/how-to-deploy-a-static-site-using-mkdocs-and-netlify/
gcloud storage buckets update gs://BUCKET_NAME --cors-file=file.json
gcloud storage buckets update gs://BUCKET_NAME --clear-cors


#steps
brew install mkdocs

# Install mkdocs as the main application
pipx install mkdocs

# Inject the material theme and plugins into the mkdocs environment
pipx inject mkdocs mkdocs-material pymdown-extensions mkdocs-minify-plugin mkdocs-swagger-ui-tag

python3 -m venv ~/venv/mkdocs
source ~/venv/mkdocs/bin/activate
pip install mkdocs-material pymdown-extensions


## run 
mkdocs serve