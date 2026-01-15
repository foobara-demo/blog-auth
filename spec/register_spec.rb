RSpec.describe FoobaraDemo::BlogAuth::Register do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:inputs) do
    {
      username:,
      plaintext_password:,
      email:,
      full_name:
    }
  end
  let(:username) { "some_username" }
  let(:plaintext_password) { "some_password" }
  let(:email) { "some@email.com" }
  let(:full_name) { "Some Username" }

  it "creates a user" do
    expect(outcome).to be_success
    expect(result).to be_a(FoobaraDemo::BlogAuth::User)

    blog_auth_user = result

    expect(blog_auth_user.username).to eq(username)
    expect(blog_auth_user.email).to eq(email)
    expect(blog_auth_user.full_name).to eq(full_name)
    expect(blog_auth_user.blog_slug).to eq(username)
  end
end
