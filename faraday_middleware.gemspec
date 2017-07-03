# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday_middleware/version'

Gem::Specification.new do |spec|
  spec.name = 'faraday_middleware_safeyaml'
  spec.version = FaradayMiddleware::VERSION

  spec.summary = %q{Various middleware for Faraday - forked to fix security issue (Waiting on https://github.com/lostisland/faraday_middleware/pull/157)}
  spec.authors = ["Erik Michaels-Ober", "Wynn Netherland"]
  spec.email = ['sferik@gmail.com', 'wynn.netherland@gmail.com']
  spec.homepage = 'https://github.com/lostisland/faraday_middleware'
  spec.licenses = ['MIT']

  spec.add_dependency 'faraday', ['>= 0.7.4', '< 1.0']
  spec.add_dependency 'safe_yaml'

  spec.files = `git ls-files -z lib LICENSE.md README.md`.split("\0")
end
