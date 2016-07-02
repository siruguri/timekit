module Timekit
  class Findtime
    class Filtercollections
      # Client class for the filtercollection resource
      class Client < Timekit::Client
        def path
          "#{Timekit::FINDTIME_API_PATH}#{Timekit::FILTERCOLLECTIONS_API_PATH}"
        end

        def create(
          and_conditions = nil,
          or_conditions = nil,
          after_conditions = nil
        )
          params = {
            and: and_conditions,
            or: or_conditions,
            after: after_conditions
          }

          post('', params)
        end

        def show(id)
          super
        end
      end
    end
  end
end
