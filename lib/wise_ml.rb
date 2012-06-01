require 'roxml'

require File.dirname(__FILE__)+'/version.rb'
require File.dirname(__FILE__) + '/wiseml/all.rb'
Dir[File.dirname(__FILE__) + '/wiseml/*/*.rb'].each { |file| require file }
require File.dirname(__FILE__) + '/wiseml/wise_ml.rb'
