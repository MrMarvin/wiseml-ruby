module WiseML
  module Setup
    class Setup

      # This is a persistant class for the object setup that has the
      # properties of a setup. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :id, :as => Integer
      xml_accessor :origin, :as => Origin
      xml_accessor :timeinfo, :as => TimeInfo
      xml_accessor :interpolation
      xml_accessor :coordinateType
      xml_accessor :description      
      xml_accessor :defaults, :as => Defaults
      xml_accessor :nodes, :as => [Node]
      xml_accessor :link, :as => [Link]

    end
  end
end
