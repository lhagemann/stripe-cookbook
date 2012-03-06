maintainer       "Lisa Hagemann"
maintainer_email "chakram88@gmail.com"
license          "Apache 2.0"
description      "Manage Stripe Account Info"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"


attribute "stripe/mode",
  :display_name => "Stripe API Mode",
  :description  => "Mode to call Stripe API, one of 'live' or 'test'",
  :type         => "string"

