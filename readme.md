# Hyfn Homestead Project

This is Hyfn's official Laravel local development environment based off of ... Laravel's local development environment

Laravel Official Documentation:
===============================

Official documentation [is located here](http://laravel.com/docs/homestead?version=4.2).


Setting Up Hyfn Homestead:
==========================

Step #1. run "git clone https://github.com/hyfn/homestead.git Homestead" in a directory *outside* of where you store your projects.
For instance your projects may be stored in /Users/whoeveryouare/PhpstormProjects/work. Run the above code in say:
/Users/whoeveryouare. It doesn't matter as long as your projects are not within the homestead repo

Step #2. Create ssh keys for yourself preferably at /Users/whoEverYouAre/.ssh. The location isn't as important as their existence:

OSX:
i.   Open Terminal
ii.  run "ssh-keygen -t rsa" make sure you note down where you stored the keys
iii. If for example, your keys were stored in "/Users/whoEverYouAre/.ssh" then replace that location with the location in Homestead-Example.yaml

Windows:
i.   Follow these instructions: http://kb.site5.com/shell-access-ssh/how-to-generate-ssh-keys-and-connect-to-your-account-with-putty/
ii.  If for example, your keys were stored in "/Users/whoEverYouAre/.ssh" then replace that location with the location in Homestead-Example.yaml

Note: The first usage [authorize] is for your .pub key, the second usage [keys] is for your private key and does not need the extension

Step #3. Open Homestead-Example.yaml and replace the appropriate values as follows:

folders:
    - map: /where/ever/you/store/your/code/projects
      to: /home/vagrant/Code

sites:
    - map: vm.first-project.local
      to: /home/vagrant/Code/first-project/where/ever/index.php/is/located
      provisionScript: /home/vagrant/Code/first-project/where/your/project/specific/provision/script/is/setup.sh

    - map: vm.second-project.local
      to: /home/vagrant/Code/second-project/where/ever/index.php/is/located
      provisionScript: /home/vagrant/Code/second-project/where/your/project/specific/provision/script/is/setup.sh

Note:
1. Keep the domain in the format of vm.you-project.local. "local" is needed for backwards compatibility and standardization, "vm" kinda looks cool


