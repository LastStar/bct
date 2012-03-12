require 'spec_helper'

describe 'Home page' do
  before do
    get '/'
  end

  it "is successful" do
    last_response.should be_ok
  end

  context "with content", type: :request do
    before do
      visit '/'
    end
    it "has header and content" do
      within('#main') do
        page.should have_content("Briefcase")
        page.should have_content("The new, independent font distributor comming in 2012")
      end
    end
    it "shows mailing list form" do
      within('#footer') do
        page.should have_content('Mailing list')
        page.should have_content('If you wish to be added to mailling list, please send us your email address.')
        page.should have_css("input[type='email']")
      end
    end
  end
  context "when adding to mailing list", type: :request do
    before do
      visit '/'
      within('#mailing-list') do
        fill_in 'email', with: 'joska@koska.eu'
        click_button 'Join'
      end
    end
    after do
      unlink_addresses
    end
    it "adds address to mailing list" do
      page.should have_content('Address joska@koska.eu was added to mailing list.')
    end
    it "adds address to address file" do
      addresses.should == ',joska@koska.eu'
    end
    it "appends address to address file" do
      within('#mailing-list') do
        fill_in 'email', with: 'houska@koska.eu'
        click_button 'Join'
      end
      addresses.should == ',joska@koska.eu,houska@koska.eu'
    end
  end
end
