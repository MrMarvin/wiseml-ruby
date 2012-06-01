module WiseML
  module Trace
    class Trace

      # This is a persistent class for the object Trace that has the
      # properties of a Trace. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :id
      xml_accessor :timestamp, :as => [Scenario::Timestamp]
      xml_accessor :children

    end
  end
end