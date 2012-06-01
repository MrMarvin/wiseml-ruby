module WiseML
  module Scenario
    class Timestamp

      # This is a persistent class for the object Timestamp that has the
      # properties of a Timestamp. Setters and getters are implicitly defined
      # trough the accesors

      xml_accessor :value
      xml_accessor :enableNode, :as => EnableNode
      xml_accessor :disableNode, :as => DisableNode
      xml_accessor :enableLink, :as => EnableLink
      xml_accessor :disableLink, :as => DisableLink
      xml_accessor :node, :as => [Setup::Node]
      xml_accessor :message, :as => [Trace::Message]
      xml_accessor :link, :as => [Setup::Link]

    end
  end
end
