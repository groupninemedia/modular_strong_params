module ActionController
  include StrongParameters

  module StrongParameters
    extend ActiveSupport::Concern
    include ActiveSupport::Rescuable

    # Returns a new ActionController::Parameters object that
    # has been instantiated with the <tt>request.parameters</tt>.
    def params
      @_params ||= Parameters.new(request.parameters)
    end

    # Assigns the given +value+ to the +params+ hash. If +value+
    # is a Hash, this will create an ActionController::Parameters
    # object that has been instantiated with the given +value+ hash.
    def params=(value)
      @_params = value.is_a?(Hash) ? Parameters.new(value) : value
    end
  end
end
