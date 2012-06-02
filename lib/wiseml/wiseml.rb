module WiseML
  class WiseML

    # This is a persistent class for the object wiseml that has the
    # properties of a wiseml. Setters and getters are implicitly defined
    # trough the accesors

    include ROXML

    @xmlns = "http://wisebed.eu/ns/wiseml/1.0"

    xml_accessor :version, :from => "@version"
    xml_accessor :xmlns, :from => "@xmlns"
    xml_accessor :setup, :as => Setup::Setup
    xml_accessor :scenario, :as => Scenario::Scenario
    xml_accessor :trace, :as => Trace::Trace

  end
end
