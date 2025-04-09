# frozen_string_literal: true

require 'erubi'
require 'sinatra'
require 'tomlib'
require 'yaml'

class MinitrueExample < Sinatra::Base
  set :root, File.dirname(__FILE__)
  set :views, proc { File.join(root, 'views') }

  get '/' do
    erb :index, locals: compose_locals
  end

  def compose_locals
    toml = File.open(File.join(File.dirname(__FILE__), '..', 'config/config.toml'), 'r')
    yaml = File.open(File.join(File.dirname(__FILE__), '..', 'config/database.yml'), 'r')
    { toml: Tomlib.load(toml.read), yaml: YAML.load(yaml.read) }
  end
end
