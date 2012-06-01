module WiseML
  module Setup
    class Data

      # This is a persistent class for the object data that has the
      # properties of a data. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :key
      xml_accessor :value
      xml_accessor :message, :as => Trace::Message

    end
  end
end
