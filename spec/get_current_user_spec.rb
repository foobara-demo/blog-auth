RSpec.describe FoobaraDemo::BlogAuth::GetCurrentUser do
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }
  let(:errors) { outcome.errors }
  let(:errors_hash) { outcome.errors_hash }

  let(:inputs) do
    { user: }
  end

  let(:user) do
    FoobaraDemo::BlogAuth::Register.run!(
      username: "fumiko",
      plaintext_password: "password",
      email: "fumiko@example.com",
      full_name: "Fumiko"
    )
  end

  it "is successful" do
    expect(outcome).to be_success
    expect(result).to eq(user)
  end
end
