module Fog
  module Cloudstack
    class Compute

      class Real
        # Destroys a router.
        #
        # {CloudStack API Reference}[http://cloudstack.apache.org/docs/api/apidocs-4.4/root_admin/destroyRouter.html]
        def destroy_router(*args)
          options = {}
          if args[0].is_a? Hash
            options = args[0]
            options.merge!('command' => 'destroyRouter') 
          else
            options.merge!('command' => 'destroyRouter', 
            'id' => args[0])
          end
          request(options)
        end
      end

    end
  end
end

