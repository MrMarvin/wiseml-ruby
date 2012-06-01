module WiseML
  module Trace
    class Message

      # This is a persistent class for the object Trace that has the
      # properties of a Trace. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :timestamp
      xml_accessor :id
      xml_accessor :data

    end
  end
end