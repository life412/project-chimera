# Makefile for Project Chimera

# Install dependencies
setup:
	pip install --upgrade pip
	pip install pytest --no-cache-dir

# Run failing tests
test:
	pytest tests

# Optional: check if specs exist
spec-check:
	@echo "Checking specs directory..."
	@test -d specs || (echo "ERROR: specs/ directory missing!" && exit 1)
