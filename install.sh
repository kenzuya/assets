echo "Installing necessary dependencies"
sudo apt install ffmpeg mkvtoolnix aria2 curl libmediainfo-dev wget unzip -y


echo "Installing Rclone"
curl https://rclone.org/install.sh | sudo bash
sudo apt install fuse fuse3 -y

# create rclone as systemd
echo "Creating rclone as systemd"

#create file
mkdir -p ~/.config/systemd/user

# and write to it
wget "https://download942.mediafire.com/kwvfc0q3wojga6Z0IcT83LlSfn98rMl17x4Q6Tc5x4mD_bwAfplsm0BNYBWUYtp4BxzkB739rY7A2hp1k1hUVtyXIfcWUJfIRq1y8uWFy7b30ndsXRvWD11IQPsX5P1T_lCb3HW6zxEDUBlaDZgGXRvqkDZOlOfzwvUFE_bkLVmshmo4/ahdmnptfv5sp1ey/rclone.services" -O ~/.config/systemd/user/rclone@.service
mkdir -p ~/.config/rclone
wget "https://download1078.mediafire.com/t4koz7fl32cgWLFk1jszyDgGMXA4DLznIp3V0FrJFLfpK5b6vAzAPtdvpJuaKyTbQgNk2vroRpZC_XYjgLTVKxted_R-EUv92YRA8BT2EyxNU1Dy7sMtvMri6eFET57yEpY5eFMIaUjY24Bo5RaCLv4_GmC32Z1b6OwuQbJ5bsHBWLV6/ie59o96nvbutblm/rclone.conf" -O ~/.config/rclone/rclone.conf
# enable and start
echo "Enabling and starting rclone"
systemctl --user daemon-reload
systemctl --user enable --now rclone@Kenzuya-Drive

#view service status
systemctl --user status rclone@Kenzuya-Drive

wget "https://download1479.mediafire.com/x8i5c45uwppgrcECKoQ8j5m137PADwrocA4gAc2bIj728nEa-H4enwY9_ApQv6ZGP8LKE17VSLtjng6CPnCYmgDjuSi2HPA4MKi84rExjZ62ugZISq0EdNO7lNNBQ7lXmcb2wTQ7j4lkL-lWDqI3h6C8X4IGEJ3arIB142AF9lvzmpyD/zmpel3hd9786uug/vinetrimmer.zip" -O ~/vinetrimmer.zip
unzip ~/vinetrimmer.zip
cd ~/vinetrimmer
