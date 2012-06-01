module WiseML
  module Setup
    class Origin

      # This is a persistent class for the object origin that has the
      # properties of a origin. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :x, :as => Float
      xml_accessor :y, :as => Float
      xml_accessor :z, :as => Float
      xml_accessor :phi, :as => Float
      xml_accessor :theta, :as => Float


    end
  end
end
