SHELL:=/bin/bash



PY=python3.10
ENV_PATH=.env
PY_ENV=source ./$(ENV_PATH)/bin/activate

FINRL_REQUIREMENTS= $(PY)-venv cmake libopenmpi-dev $(PY)-dev zlib1g-dev libgl1-mesa-glx swig 

FINRL_PATH=./FinRL
FINRL_URL=https://github.com/g-hurst/FinRL.git

# commands that must be run as sudo
.phony: setup
setup:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "Error: $(MAKECMDGOALS) must be run as sudo"; \
		exit 1; \
	fi
	
	apt-get update -y
	DEBIAN_FRONTEND=noninteractive apt-get install -y $(FINRL_REQUIREMENTS)

# env commands that should be run as user
.phony:env-create
env-create:
	$(PY) -m venv $(ENV_PATH)
	$(PY_ENV) && $(PY) -m pip install --upgrade pip
	$(PY_ENV) && $(PY) -m pip install -r ./requirements.txt
	$(PY_ENV) && $(PY) -m pip install git+https://github.com/g-hurst/FinRL.git
	$(PY_ENV) && $(PY) -m pip install git+https://github.com/stefan-jansen/pyfolio-reloaded.git
	$(PY_ENV) && $(PY) -m ipykernel install --user --name=$(ENV_PATH)

.phony: nb-start
nb-start:
	$(PY_ENV) && jupyter notebook