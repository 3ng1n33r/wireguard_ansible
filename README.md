## How to use

To install, run: ```ansible-playbook -u user -i host, playbook.yml --tags wg_init```

You can specify how many peers will be added to the configuration file during the installation phase: ```wireguard_clients: 5```

Careful, every next playbook restart with the ```--tags wg_init``` tag will recreate the configuration file.

To add a new peer, run: ```ansible-playbook -u user -i host, playbook.yml --tags wg_peer_add```

To remove a peer, run: ```ansible-playbook -u user -i host, playbook.yml --tags wg_peer_rm --extra-vars "peer_id=1"```

## Limitations

* Up to 254 addresses

* For Ubuntu/Debian only