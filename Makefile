---
fli: install-binary

install-container:
	ansible-playbook main.yml -i localhost -t install_container

install-binary:
	ansible-playbook main.yml -i localhost -t install_binary


setup-zpool:
	fli setup --zpool chq

config-token:
	fli config --token /root/token.file.name


zpool-list:
	zpool list

zpool-status:
	zpool status

zpool-iostat:
	zpool iostat

zfs-get-mountpoint:
	zfs get mountpoint chq


volumeset:
	fli init test-volumeset

volume:
	fli create test-volumeset test-volume

fli-list:
	fli list test-volumeset:test-volume
