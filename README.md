sphero-workshop
===============

Repo for Lafayette Tech Spero Workshop

Copy `device.rb.example` to `device.rb` and put in your device code.
This will be used in all files.

The samples should be run from the root, i.e. `samples/driving.rb`

Setup for Ubuntu
-----------------

```
$ sudo apt-get curl
$ sudo apt-get git
$ \curl -L https://get.rvm.io | bash
$ sudo usermod -a -G dialout $USER
```

Reboot

```
$ rvm install 1.9.3
$ git clone git@github.com:marcrohloff/sphero-workshop.git workshop
$ cd workshop
$ cp device.rb.example device.rb
$ bundle install
```

Pairing with Bluetooth for Ubuntu
------------------------------------

(From the https://github.com/hybridgroup/sphero#pairing-sphero-with-ubuntu project)

```
$ sudo hcitool scan
Scanning ...
<address>       Sphero
$ sudo rfcomm bind /dev/rfcomm0 <address> 1
```
