require 'fog/core/collection'

module Fog
  module Compute
    class XenServer
      module Models
        class StorageManagers < Fog::Collection
          model Fog::Compute::XenServer::Models::StorageManager

          def all(options = {})
            data = service.get_records 'SM'
            load(data)
          end

          def get(sm_ref)
            if sm_ref && sm = service.get_record( sm_ref, 'SM' )
              new(sm)
            else
              nil
            end
          end
        end
      end
    end
  end
end