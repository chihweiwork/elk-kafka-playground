.PHONY: update install-pyenv all
update:
	@yum update -y
	@yum upgrade -y
install-pyenv:
	@yum -y install xz bzip2 bzip2-devel sqlite-devel gcc openssl-devel readline-devel zlib-devel libffi-devel vim git xz-devel
	@cd ~/; curl https://pyenv.run | bash
	@echo 'export PYENV_ROOT="$$HOME/.pyenv"' >> ~/.bashrc
	@echo 'export PATH="$$PYENV_ROOT/bin:$$PATH"' >> ~/.bashrc
	@echo 'eval "$$(pyenv init -)"' >> ~/.bashrc
set-locale:
	@localedef -i en_US -f UTF-8 en_US.UTF-8
all: update install-pyenv set-locale
