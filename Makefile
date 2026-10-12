# Makefile for building and deploying the golla_app Flutter web project

BASE_HREF = /stotra_institute/
GITHUB_REPO = https://github.com/reetamit/stotra_institute.git
BUILD_VERSION = $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

deploy-web:
	@echo "Clean existing build..."
	flutter clean

	@echo "Get Packages..."
	flutter pub get

	@echo "Building web application..."
	flutter build web --release --base-href "$(BASE_HREF)"

	@echo "Deploying web application to GitHub Pages..."
	cd build/web && \
	git init && \
	git add . && \
	git commit -m "Deploy web application version $(BUILD_VERSION)" && \
	git branch -M main && \
	git remote add origin $(GITHUB_REPO) && \
	git push -u --force origin main

	cd ../../
	echo "Deployment complete."

.PHONY: deploy-web