require "test/unit"

require File.dirname(__FILE__) + '/../lib/wise_ml.rb'

class TestXml < Test::Unit::TestCase

  def setup
    @wisexml = WiseML::WiseML.from_xml(File.read("wisebed_uzl_demo.xml"))
  end

  def teardown
    # Do nothing
  end

  def test_read_from_xml
    assert_instance_of(WiseML::Setup::Setup, @wisexml.setup)
    assert_instance_of(Float, @wisexml.setup.origin.phi)
    assert_instance_of(Array, @wisexml.setup.nodes)
    assert_instance_of(WiseML::Setup::Node, @wisexml.setup.nodes.first)
    assert_match(/^Processor/, @wisexml.setup.nodes.first.description)
    assert(@wisexml.setup.nodes.size == 108)
  end

  def test_write_to_xml
    # xsd file seems outdated and is itself invalid...
    #xsd = Nokogiri::XML::Schema("wiseml.model.xsd")

    doc = Nokogiri::XML::Document.new
    doc.root = @wisexml.to_xml

  end

end