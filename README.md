sphero-workshop
===============

Repo for Lafayette Tech Sphero Workshop

Copy `device.rb.example` to `device.rb` and put in your device code.
This will be used in all files.

The samples should be run from the root, i.e. `samples/driving.rb`

Setup for Ubuntu
-----------------

```
$ sudo apt-get update
$ sudo apt-get install curl git flashplugin-installer
$ \curl -L https://get.rvm.io | bash
$ sudo usermod -a -G dialout $USER
```

Optionally install the following from the Software Manager
* Adobe flash
* Touchpad manager

Reboot

```
$ rvm install 1.9.3
$ git clone https://github.com/marcrohloff/sphero-workshop.git workshop
$ cd workshop
$ gem install redcar
$ cp device.rb.example device.rb
$ bundle install
```

Pairing with Bluetooth for Ubuntu
------------------------------------

()From https://github.com/hybridgroup/sphero#pairing-sphero-with-ubuntu)

```
$ sudo hcitool scan
Scanning ...
<address>       Sphero
$ sudo rfcomm bind /dev/rfcomm0 <address> 1
```

Troubleshooting
---------------

Run `sudo rfcomm release hci0` to start over or if you see errors that the address is already in use.

Sometimes the bluetooth service needs to be restarted:
```
sudo service bluetooth restart
```