module StrongParameters
  module Error
    # Raised when a required parameter is missing.
    #
    #   params = ActionController::Parameters.new(a: {})
    #   params.fetch(:b)
    #   # => ActionController::ParameterMissing: param is missing or the value is empty: b
    #   params.require(:a)
    #   # => ActionController::ParameterMissing: param is missing or the value is empty: a
    class ParameterMissing < KeyError
      attr_reader :param # :nodoc:

      def initialize(param) # :nodoc:
        @param = param
        super("param is missing or the value is empty: #{param}")
      end
    end

    # Raised when a supplied parameter is not expected and
    # ActionController::Parameters.action_on_unpermitted_parameters
    # is set to <tt>:raise</tt>.
    #
    #   params = ActionController::Parameters.new(a: "123", b: "456")
    #   params.permit(:c)
    #   # => ActionController::UnpermittedParameters: found unpermitted parameters: a, b
    class UnpermittedParameters < IndexError
      attr_reader :params # :nodoc:

      def initialize(params) # :nodoc:
        @params = params
        super("found unpermitted parameter#{'s' if params.size > 1 }: #{params.join(', ')}")
      end
    end
  end
end
