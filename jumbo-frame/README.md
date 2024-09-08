# Register Service
```bash
sudo cp eth0.network /etc/systemd/network
sudo systemctl enable systemd-networkd
sudo systemctl start systemd-networkd
```

# Remove Service
```bash
sudo systemctl stop systemd-networkd.socket
sudo systemctl stop systemd-networkd
sudo rm /etc/systemd/network/eth0.network
sudo systemctl restart systemd-networkd
```
