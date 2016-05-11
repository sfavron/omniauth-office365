require 'spec_helper'

describe OmniAuth::Strategies::Office365 do
  subject do
    OmniAuth::Strategies::Office365.new(nil, @options || {})
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct Office365 site' do
      subject.client.site.should eq("https://login.live.com")
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq("/oauth20_authorize.srf")
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth20_token.srf')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/office365/callback')
    end
  end
end
