module WiseML
  module Setup
    class Defaults

      # This is a persistent class for the object defaults that has the
      # properties of a defaults. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :node, :as => Node
      xml_accessor :link, :as => Link

    end
  end
end
