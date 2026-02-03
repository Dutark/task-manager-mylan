# Makefile pour lint et sécurité

# Linter Dockerfiles avec Hadolint
lint-backend:
	docker run --rm -i hadolint/hadolint < backend/Dockerfile

lint-frontend:
	docker run --rm -i hadolint/hadolint < frontend/Dockerfile

lint: lint-backend lint-frontend

# Security scan avec Checkov
security:
	docker run --rm -v "$(PWD):/workdir" bridgecrew/checkov -d /workdir

# Tout en un
check: lint security
