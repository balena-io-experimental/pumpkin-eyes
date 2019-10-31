# Pumpkin-eyes
A spooky Halloween pumpkin with roving LCD eyes 

![](https://github.com/balena-io-playground/pumpkin-eyes/ezgif-crop.gif)

## Hardware
This project uses two 128 x 128 pixel TFT LCDs from Adafruit and the Animated Eyes Bonnet along with a Raspberry Pi 3 (A Pi Zero or Pi 2 should also work.) Set up the hardware according to this page: https://learn.adafruit.com/animated-snake-eyes-bonnet-for-raspberry-pi/hardware-assembly

## Software
Push this application to balena and it will download and install all of the software needed for the animated eyes.

## Settings
In order for the graphics to render properly, you'll need to add some fleet configuration variables to the application. Add these as custom variables:
- NAME: RESIN_HOST_CONFIG_disable_overscan VALUE: 1
- NAME: RESIN_HOST_CONFIG_dtoverlay VALUE: "spi1-3cs"
- NAME: RESIN_HOST_CONFIG_hdmi_cvt VALUE: 640 480 60 1 0 0 0
- NAME: RESIN_HOST_CONFIG_hdmi_force_hotplug VALUE: 1
- NAME: RESIN_HOST_CONFIG_hdmi_group VALUE: 2
- NAME: RESIN_HOST_CONFIG_hdmi_mode VALUE: 87

Also change the existing RESIN_HOST_CONFIG_gpu_mem from 16 to 64
and for RESIN_HOST_CONFIG_dtparam add this value:  "spi=on","spi1=on", "i2c_arm=on"

Once you change the values, the device will reboot and the animated eyes should appear on the screen after a minute or two.

## Pumpkin
Carve a pumpkin (carefully if you use a knife!) or place this project inside any type of Halloween decoration. Just be sure to allow for proper ventilation of the Pi if using an enclosed space. 

## Add-Ons
The bonnet supports the use of buttons and a joystick to control the eyes. You could also add some LEDs and a motion sensor to liven up your pumpkin installation.

## Notes
GPIO halt is installed but not active. To use, add /usr/local/bin/gpio-halt $HALT_PIN (where $HALT_PIN is the GPIO pin you want to use) to the startup.sh file and re-push application.
ADC is also installed and available from the bonnet.

