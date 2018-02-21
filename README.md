# PHP7.x PHPUnit Sample Test Setup

This contains an example project containing a single PHPUnit test. You can use this to check that you have a working environment for running PHPUnit tests. 

You can either install the software you require and run throught the commands on your machine. Or you can use a VM (the provisioning script is provided in this repo).


## Installing required software on your machine

You need to install the following:

- PHP 7.0 or higher
- Composer [Install instructions](https://getcomposer.org/doc/00-intro.md)

Once installed use composer to download the required dependencies:

```
cd sample-unit-test-project
composer install
```


Finally run PHPUnit:

```
./vendor/bin/phpunit 
```

You should see an output along the lines of:

```
PHPUnit 7.0.1 by Sebastian Bergmann and contributors.

.                                                                   1 / 1 (100%)

Time: 193 ms, Memory: 4.00MB

OK (1 test, 1 assertion)
```

The important bit is the `OK (1 test, 1 assertion)`. If you see that then you've installed everything correctly to run PHPUnit!


## Using a VM

You need to install [vagrant](https://www.vagrantup.com/) on your machine. 

The from this directory provision the VM and log in to it:

```
vagrant up
vagrant ssh
```

This will provision a VM running Ubuntu 17.10. It will install PHP 7.1 and composer. Finally it will run composer. 

Once logged into the VM run PHPUnit:

```
cd /vagrant/sample-unit-test-project
./vendor/bin/phpunit
```


You should see an output along the lines of:

```
PHPUnit 7.0.1 by Sebastian Bergmann and contributors.

.                                                                   1 / 1 (100%)

Time: 193 ms, Memory: 4.00MB

OK (1 test, 1 assertion)
```

The important bit is the `OK (1 test, 1 assertion)`. If you see that then you've installed everything correctly to run PHPUnit!


