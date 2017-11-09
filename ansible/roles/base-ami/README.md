## Base AMI

These tasks configure an Ubuntu instance (Xenial and later) with the following
policies:

 * Never start services after package install
 * Do not install suggests or recommends for package installs
 * Do not install additional language packages
 * Always clean the apt cache post install
 * Disable unwanted system services
 * Applies default kernel tuning that is applicable to all instance types and
   roles
 * Sets the instance hostname to the instance ID after booting
