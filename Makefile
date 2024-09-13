# Variables
WEB_ROOT := /var/www/hhdri.com

# Targets
.PHONY: all deploy

all: deploy

# Deploy the built site to the web root
deploy:
	hugo
	rsync -av --delete ./public/ $(WEB_ROOT)
	chown -R www-data:www-data $(WEB_ROOT)
	find $(WEB_ROOT) -type d -exec chmod 755 {} \;
	find $(WEB_ROOT) -type f -exec chmod 644 {} \;