module FoobaraDemo
  module BlogAuth
    class User < Foobara::Entity
      attributes do
        id :integer
        blog_user Blog::User, :required
        auth_user Foobara::Auth::Types::User, :required
      end

      primary_key :id

      delegate_attribute :username, :auth_user
      delegate_attribute :email, :auth_user
      delegate_attribute :full_name, :blog_user
      delegate_attribute :blog_slug, :blog_user
    end
  end
end
