# Register Service
```bash
cp ${WORKSPACE}/update-time.sh /opt/linuxptp/
cp ${WORKSPACE}/update-time.service /etc/systemd/system/
sudo systemctl enable update-time.service
sudo systemctl start update-time.service
sudo systemctl daemon-reload
```

# Remove Service
```bash
sudo systemctl stop update-time.service
sudo systemctl disable update-time.service
sudo rm /etc/systemd/system/update-time.service
```
