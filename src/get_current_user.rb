module FoobaraDemo
  module BlogAuth
    # TODO: so strange to create this seemingly pointless command. This probably should just be
    # a feature of the command connector. We are just trying to let the API consumer get the
    # current user and should dynamically be able to easily create the command for it.
    class GetCurrentUser < Foobara::Query
      inputs { user BlogAuth::User }
      result BlogAuth::User

      def execute = user
    end
  end
end
