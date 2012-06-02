module WiseML
  module Setup
    class Node

      # This is a persistent class for the object node that has the
      # properties of a node. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :id, :from => "@id"
      xml_accessor :position, :as => Position
      xml_accessor :gateway
      xml_accessor :nodeType
      xml_accessor :description
      xml_accessor :capabilities, :as => [Capability]
      xml_accessor :programDetails
      xml_accessor :data, :as => [Data]
      xml_accessor :message, :as => Trace::Message
      xml_accessor :setup, :as => Setup

    end
  end
end

