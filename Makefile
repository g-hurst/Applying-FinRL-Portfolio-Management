.phony: setup
setup:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "Error: $(MAKECMDGOALS) must be run as sudo"; \
		exit 1; \
	@else
	fi