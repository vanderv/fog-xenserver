module Fog
  module Compute
    class XenServer
      class Real
        def scan_pif(host)
          @connection.request({ :parser => Fog::Parsers::XenServer::Base.new, :method => 'pif.scan' }, host)
        end
      end
    end
  end
end
