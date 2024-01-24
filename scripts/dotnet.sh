#!/bin/bash
set -eux

wget https://dot.net/v1/dotnet-install.sh -O dotnet-install.sh

# https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script
bash dotnet-install.sh --channel 6.0 --version latest --install-dir '/usr/lib/dotnet/'
bash dotnet-install.sh --channel 7.0 --version latest --install-dir '/usr/lib/dotnet/'
bash dotnet-install.sh --channel 8.0 --version latest --install-dir '/usr/lib/dotnet/'

# create a symbolic link
ln -s /usr/lib/dotnet/dotnet /usr/bin/dotnet

dotnet --info
