module FoobaraDemo
  module BlogAuth
    class FindBlogUserForAuthUser < Foobara::Query
      description "Takes an auth user and returns a blog user"

      inputs { auth_user Foobara::Auth::Types::User, :required }
      result Blog::User

      depends_on_entity BlogAuth::User

      def execute
        load_blog_auth_user

        blog_user
      end

      attr_accessor :blog_auth_user

      def load_blog_auth_user
        self.blog_auth_user = BlogAuth::User.find_by(auth_user:)
      end

      def blog_user = blog_auth_user.blog_user
    end
  end
end
