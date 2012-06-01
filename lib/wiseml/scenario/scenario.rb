module WiseML
  module Scenario
    class Scenario

      # This is a persistent class for the object Scenario that has the
      # properties of a Scenario. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :id, :as => Integer
      xml_accessor :timestamp, :as => [Timestamp]
      xml_accessor :data, :as => Setup::Data
      xml_accessor :children

    end
  end
end

