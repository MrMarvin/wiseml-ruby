module WiseML
  module Setup
    class Capability

      # This is a persistant class for the object capability that has the
      # properties of a capability. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :name
      xml_accessor :datatype
      xml_accessor :unit
      xml_accessor :defaultValue
      xml_accessor :nodes, :as => [Node]
      xml_accessor :links, :as => [Link]
      xml_accessor :description

    end
  end
end
