#!/bin/bash

echo "changing to boot directory"
cd /boot/Pi_Eyes
echo "running fbx2 and eyes"
./fbx2 -t & python eyes.py


