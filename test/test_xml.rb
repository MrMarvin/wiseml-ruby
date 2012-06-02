require "test/unit"

require File.dirname(__FILE__) + '/../lib/wiseml.rb'

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

    # writes the xml document to a file
    @wisexml.write_to(File.open("out.xml","w"))

    # and read both schema and document to validate
    xsd = Nokogiri::XML::Schema(File.read("wiseml.xsd"))
    doc = Nokogiri::XML(File.read("out.xml"))

    # empty as in not a single error -> validates
    assert(xsd.validate(doc).empty?)
  end

end