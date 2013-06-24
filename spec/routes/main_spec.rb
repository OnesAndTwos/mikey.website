describe 'the main page' do
  include Rack::Test::Methods

  def app
    MikesWebsite.new
  end

  it "should welcome you" do
    get '/'
    last_response.should be_ok
    last_response.body.should include('Welcome')
  end

end
