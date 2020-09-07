# encoding: utf-8
require 'bundler/setup'

require 'thor'
require 'require_all'
require 'csv'
require 'terminal-table'
require 'pry'

require_relative '../lib/printer'
require_relative '../lib/models/base'
require_rel '../lib/models'
require_relative '../lib/model_factory'
require_rel '../lib'
