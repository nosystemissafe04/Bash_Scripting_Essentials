#!/bin/bash

package=btop

sudo apt remove btop -y >> uninstall.log

sudo apt install btop -y >> install.log

echo "the exit status of this script and the command we ran  :$?"
