require 'rubygems'

# Set up gems listed in the Gemfile.
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
#ENV['RAILS_RELATIVE_URL_ROOT'] = '/communityfold'


require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])
