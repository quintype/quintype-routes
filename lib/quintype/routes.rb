require "quintype/routes/version"

require "rack/reverse_proxy"

module Quintype
  module Routes
  end
end

require "quintype/routes/railtie.rb" if defined?(Rails)
