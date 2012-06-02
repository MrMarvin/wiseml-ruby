module WiseML
  class WiseML

    # This is a persistent class for the object wiseml that has the
    # properties of a wiseml. Setters and getters are implicitly defined
    # trough the accesors

    include ROXML

    NAMESPACE = "http://wisebed.eu/ns/wiseml/1.0"

    xml_accessor :version, :from => "@version"
    xml_accessor :setup, :as => Setup::Setup
    xml_accessor :scenario, :as => Scenario::Scenario
    xml_accessor :trace, :as => Trace::Trace
    
    def to_xmldoc
      doc = Nokogiri::XML::Document.new
      doc.root = self.to_xml
      doc.root.add_namespace_definition(nil, NAMESPACE)
      doc
    end

    def write_to(string_or_io)
      to_xmldoc.write_to(string_or_io, :encoding => 'UTF-8')
    end
    
    def to_s
      to_xmldoc.root.to_s
    end

  end
end
