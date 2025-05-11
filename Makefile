.PHONY: install ping run all

install:
	ansible-galaxy collection install -r requirements.yml

ping:
	ansible -i inventory/hosts all -m ping

run:
	ansible-playbook -i inventory/hosts site.yml

all: install ping run
