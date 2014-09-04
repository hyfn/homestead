# Hyfn Homestead Project

This is Hyfn's official Laravel local development environment based off of ... Laravel's official local development environment

Laravel Official Documentation:
===============================

Official documentation [is located here](http://laravel.com/docs/homestead?version=4.2).


Setting Up Hyfn Homestead:
==========================

Prerequisites.
--------------

1. Install [Vagrant](http://vagrantup.com/)
2. Install [VirtualBox](https://www.virtualbox.org/)
3. Install Git



Step #1.
--------
Run :

    git clone https://github.com/hyfn/homestead.git Homestead

in a directory *outside* of where you store your projects. For instance, if your projects are stored in

    /Users/whoeveryouare/PhpstormProjects/work.

Then  run the above code in a directory like:

    /Users/whoeveryouare.

It doesn't matter as long as your projects are not within the homestead repo. Once you've cloned Homestead run

    git checkout -b developer

This is where your homestead environment will live and thrive. Don't switch back....hey...don't!

Step #2.
--------

Create ssh keys for yourself preferably at

    /Users/whoEverYouAre/.ssh.

The location isn't as important as their existence:

#### OSX:

1. Open Terminal
2. run `ssh-keygen -t rsa` make sure you note down where you stored the keys
3. If for example, your keys were stored in "/Users/whoEverYouAre/.ssh" then replace that location with the location in Homestead-Example.yaml

#### Windows:

1. Follow these instructions: [Windows Instructions](http://kb.site5.com/shell-access-ssh/how-to-generate-ssh-keys-and-connect-to-your-account-with-putty/)
2. If for example, your keys were stored in "/Users/whoEverYouAre/.ssh" then replace that location with the location in Homestead-Example.yaml

Note: The first usage [authorize] is for your .pub key, the second usage [keys] is for your private key and does not need the extension

Step #3. Open Homestead-Example.yaml and replace the appropriate values as follows:

    authorize: /Users/whoEverYouAre/.ssh/id_rsa.pub

    keys:
        - /Users/whoEverYouAre/.ssh/id_rsa

    folders:
        - map: /where/ever/you/store/your/code/projects
          to: /home/vagrant/projects

    sites:
        - map: vm.first-project.local
          to: /home/vagrant/projects/first-project/where/ever/index.php/is/located
          provisionScript: /home/vagrant/projects/first-project/where/your/project/specific/provision/script/is/setup.sh

        - map: vm.second-project.local
          to: /home/vagrant/projects/second-project/where/ever/index.php/is/located
          provisionScript: /home/vagrant/projects/second-project/where/your/project/specific/provision/script/is/setup.sh

Note:
1. Keep the domain in the format of vm.your-project.local. "local" is needed for backwards compatibility and standardization, "vm" kinda looks cool

If all goes well homestead should be setup and ALMOST ready to go

1. Go to your Homestead directory
2. Run `vagrant box add laravel/homestead` to add the currently tested box
3. This will take a while so run

    `sudo nano /private/etc/hosts`

Add entries for each of your project sites you setup in Homestead-Example.yml

    127.0.0.1  vm.first-project.local
    127.0.0.1  vm.second-project.local

Then

    dscacheutil -flushcache

for OSX or for Win 7

    ipconfig /flushdns

4. Rename your Homestead-Example.yaml to Homestead.yaml and overwrite the default (if you didn't just edit it straightaway)

5. run `vagrant up` at your homestead directory

At this point you should have the ability to run one virtual machine for all your projects which will be available at

    vm.first-project.local:8000

. The box will have the following specs:

+ Ubuntu 14.04
+ PHP 5.5
+ Nginx
+ MySQL
+ Postgres
+ Node (With Bower, Grunt, and Gulp)
+ Redis
+ Memcached
+ Beanstalkd
+ Laravel Envoy
+ Fabric + HipChat Extension

as well as

+ XDebug - so you all can stop var dumping the $#!+ out of your projects

and will compatible with auto-deployment via Laravel Forge.


Wrapping Up
-----------

Once you're all setup and everything works here are some tips to make things even more convenient

+ Get the hell out of master! We know you didn't switch over at the beginning
+ If you're using an IntelliJ based IDE like [PhpStorm, WebStorm, RubyMine, etc](http://www.jetbrains.com/products.html),
you can create a server at 192.168.10.10 with vagrant as the user and your rsa key
+


