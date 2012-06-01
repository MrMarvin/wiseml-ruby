# this file simply loads all the classes but without actual
# definitions. This ensures that when loading them in abitrary order,
# no NameError are raised.

module WiseML
  module Setup
    class Capability
      include ROXML
    end
    class Data
      include ROXML
    end
    class Defaults
      include ROXML
    end
    class Link
      include ROXML
    end
    class Node
      include ROXML
    end
    class Origin
      include ROXML
    end
    class Position
      include ROXML
    end
    class Rssi
      include ROXML
    end
    class Setup
      include ROXML
    end
    class TimeInfo
      include ROXML
    end
  end
  module Scenario
    class DisableLink
      include ROXML
    end
    class DisableNode
      include ROXML
    end
    class EnableLink
      include ROXML
    end
    class EnableNode
      include ROXML
    end
    class Scenario
      include ROXML
    end
    class Timestamp
      include ROXML
    end
  end
  module Trace
    class Message
      include ROXML
    end
    class Trace
      include ROXML
    end
  end
end