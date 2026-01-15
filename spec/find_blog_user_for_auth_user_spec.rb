RSpec.describe FoobaraDemo::BlogAuth::FindBlogUserForAuthUser do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }
  let(:errors_hash) { outcome.errors_hash }

  let(:inputs) do
    { auth_user: }
  end

  let(:blog_auth_user) do
    FoobaraDemo::BlogAuth::Register.run!(
      username: "fumiko",
      email: "test@example.com",
      plaintext_password: "password",
      full_name: "Fumiko"
    )
  end
  let(:auth_user) { blog_auth_user.auth_user }
  let(:blog_user) { blog_auth_user.blog_user }

  it "is successful" do
    expect(outcome).to be_success
    expect(result).to eq(blog_user)
  end
end
