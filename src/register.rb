module FoobaraDemo
  module BlogAuth
    class Register < Foobara::Command
      depends_on Foobara::Auth::Register, Blog::CreateUser

      inputs do
        username :string, :required
        email :email, :allow_nil
        plaintext_password :string, :allow_nil, :sensitive_exposed
        full_name :string, :required
      end

      result User

      def execute
        create_auth_user
        create_blog_user
        create_user

        user
      end

      attr_accessor :auth_user, :blog_user, :user

      def create_auth_user
        self.auth_user = run_subcommand!(Foobara::Auth::Register, username:, email:, plaintext_password:)
      end

      def create_blog_user
        self.blog_user = run_subcommand!(Blog::CreateUser, full_name:, blog_slug: username)
      end

      def create_user
        self.user = User.create(blog_user:, auth_user:)
      end
    end
  end
end
