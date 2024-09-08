# Install Driver
```bash
curl --output peak-linux-driver-8.16.0.tar.gz https://www.peak-system.com/fileadmin/media/linux/files/peak-linux-driver-8.16.0.tar.gz \
	&& tar -xzf peak-linux-driver-8.16.0.tar.gz \
	&& cd peak-linux-driver-8.16.0 \
	&& make clean -j$(nproc) \
	&& make netdev -j$(nproc) \
	&& sudo make install -j$(nproc) \
	&& cd .. && rm peak-linux-driver-8.16.0.tar.gz \
	&& rm -rf peak-linux-driver-8.16.0
```

# Load Driver
```bash
sudo modprobe pcan
```

# Test Driver
```bash
sudo apt-get install can-utils \
	&& sudo ip link set can0 up type can bitrate 500000 \
	&& candump can0
```

# Register Service
```bash
sudo cp can0.network /etc/systemd/network
sudo systemctl enable systemd-networkd
sudo systemctl start systemd-networkd
```

# Remove Service
```bash
sudo systemctl stop systemd-networkd.socket
sudo systemctl stop systemd-networkd
sudo rm /etc/systemd/network/can0.network
sudo systemctl restart systemd-networkd
```
