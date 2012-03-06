#
# Cookbook Name:: stripe
# Recipe:: stripe::create_plans
#
# Copyright 2012, Lisa Hagemann
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Looks in the stripe/plans data bag for plans, issues a create on those 
# identified

require 'rubygems'
require 'stripe'

mode = node[:stripe][:mode]
raw_plans = data_bag_item('stripe', 'plans')
api_keys = data_bag_item('stripe', 'api_keys')

key = api_keys["#{mode}"]
plans = raw_plans["#{mode}"]

Stripe.api_key = "#{key}"

plans.each do |p|
  plan = Stripe::Plan.create(p)
end


