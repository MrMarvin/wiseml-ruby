module WiseML
  module Setup
    class Link

      # This is a persistent class for the object link that has the
      # properties of a link. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :source
      xml_accessor :target
      xml_accessor :encrypted
      xml_accessor :virtual
      xml_accessor :capabilities, :as => [Capability]
      xml_accessor :rssi, :as => Rssi
      xml_accessor :data, :as => [Data]
      xml_accessor :setup, :as => Setup

    end
  end
end
