.PHONY: dev rm
.SILENT:

dev:
	echo "Installing development version of sandbox"
	sudo cp -r src/bin/* /usr/local/bin
	sudo cp -r src/share/sandbox /usr/local/share

rm:
	echo "Removing sandbox installation"
	sudo rm /usr/local/bin/sandbox
	sudo rm /usr/local/bin/sandbox-uninstall
	sudo rm -rf /usr/local/share/sandbox