module WiseML
  module Setup
    class TimeInfo

      # This is a persistant class for the object timeinfo that has the
      # properties of a timeinfo. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :start
      xml_accessor :end
      xml_accessor :duration, :as => Integer
      xml_accessor :unit

    end
  end
end
