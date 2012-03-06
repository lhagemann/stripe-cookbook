DESCRIPTION:
===========

Cookbook to manage Stripe account, http://stripe.com


REQUIREMENTS:
=============

Account with stripe.com


ATTRIBUTES:
==========

`[:stripe][:mode]` = 'test' or 'live' for working with Stripe API

RECIPES
=======

default
-------

Installs the Stripe API gem

create_plans
------------

Reads plan data from data_bag and issues create call to Stripe API

delete_plans
------------

Reads plan data from data_bag and issues delete call to Stripe API



USAGE:
=====


