#!/bin/bash
set -eux

RIDER_VERSION='2023.3.2'
echo "\nInstalling Rider $RIDER_VERSION ...\n"

# download using curl
curl -LO "https://download.jetbrains.com/rider/JetBrains.Rider-$RIDER_VERSION.tar.gz"


# download sha256sum file and verify the checksum
wget "https://download.jetbrains.com/rider/JetBrains.Rider-$RIDER_VERSION.tar.gz.sha256" -O expected_sha256sum.txt
sha256sum JetBrains.Rider-$RIDER_VERSION.tar.gz >> actual_sha256sum.txt
cat actual_sha256sum.txt | sha256sum -c expected_sha256sum.txt

# extract and keep the files in /opt
mkdir JetBrains.Rider-$RIDER_VERSION
tar -zxvf "JetBrains.Rider-$RIDER_VERSION.tar.gz" -C JetBrains.Rider-$RIDER_VERSION --strip-components 1
sudo mv JetBrains.Rider-$RIDER_VERSION /opt

# remove tar and hash files
rm "JetBrains.Rider-$RIDER_VERSION.tar.gz" actual_sha256sum.txt expected_sha256sum.txt

# populate desktop entry
cat > jetbrains-rider.desktop << EOF
[Desktop Entry]
Version=1.0
Type=Application
Name=JetBrains Rider
Icon=/opt/JetBrains.Rider-$RIDER_VERSION/bin/rider.svg
Exec="/opt/JetBrains.Rider-$RIDER_VERSION/bin/rider.sh" %f
Comment=A cross-platform IDE for .NET
Categories=Development;IDE;
Terminal=false
StartupWMClass=jetbrains-rider
StartupNotify=true
EOF

# move the desktop entry to appropriate location
mv jetbrains-rider.desktop /usr/share/applications/
