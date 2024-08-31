# Variables
WEB_ROOT := /var/www/hhdri.com

# Targets
.PHONY: all build deploy nginx_setup permissions restart_nginx

all: build deploy nginx_setup permissions restart_nginx

# Deploy the built site to the web root
deploy: build
	hugo
	cp -r ./public/* $(WEB_ROOT)
	chown -R www-data:www-data $(WEB_ROOT)
	find $(WEB_ROOT) -type d -exec chmod 755 {} \;
	find $(WEB_ROOT) -type f -exec chmod 644 {} \;
	chmod -R g+rx $(WEB_ROOT)

