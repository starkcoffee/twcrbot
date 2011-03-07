require 'yaml'

module Soluble

      
    module Config 
        raise "Please set SOLUBLE_ENVIRONMENT" unless ENV['SOLUBLE_ENVIRONMENT']
        path = File.dirname(__FILE__)+"/../conf/#{ENV['SOLUBLE_ENVIRONMENT']}.yml"
        @config = YAML.load(File.read(path))

        def self.[] key
            @config[key]
        end
      
    end


  def classify symbol
    symbol.to_s.split('_').map{|part| part.capitalize}.join
  end

  def on_page app, page
    page_class = "#{page}_page"
    require "soluble/pages/#{app}/#{page}_page"
    app_module = Soluble::Pages.const_get classify(app)
    page = Soluble::Pages::Page.new
    page.extend app_module.const_get classify(page_class)
    block_given? ? yield(page) : page  
  end

  def reload_page app, page
    load "soluble/pages/#{app}/#{page}_page.rb"    
  end

  def browse_to path
    base_url = Config['base_url'] 
    base_url.chop! if base_url =~ /\/$/
    $browser.goto base_url + path
  end
end

require 'soluble/pages/page'
require 'soluble/watir_helper'
