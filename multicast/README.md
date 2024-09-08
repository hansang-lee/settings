```bash
sudo cp multicast-lidar.service /etc/systemd/system/
sudo systemctl enable multicast-lidar.service
sudo systemctl start multicast-lidar.service
sudo systemctl daemon-reload
```

# Remove Service
```bash
sudo systemctl stop multicast-lidar.service
sudo systemctl disable multicast-lidar.service
sudo rm /etc/systemd/system/multicast-lidar.service
```
