require 'spec_helper'


describe "Static pages" do

  let(:static_page_title) { "Ruby on Rails Tutorial Sample App"}
  subject {page}

  describe "Home page" do
    before {visit root_path}

    it "should have the h1 'Sample App'" do
      should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      should have_selector('title',
                                :text => full_title(''))
    end

  end

  describe "Help page" do
    before {visit help_path}
    it "should have the h1 'Help'" do
      should have_selector('h1',:text => 'Help')
    end

    it "should have the title 'Help'" do
      should have_selector('title',
                               :text => full_title('Help'))
    end
  end

  describe "About page" do
    before {visit about_path}
    it "should the h1 'About page'" do
      should have_selector('h1',:text => 'About Us')
    end

    it "should have the title 'About'" do
      should have_selector('title',
                               :text => full_title('About'))
    end
  end

  describe "Contact Page" do
    before {visit contact_path} 
    
    it "should have h1 'Contact'" do
      should have_selector('h1', :text => "Contact")
    end

    it "should have title 'Contact'" do 
      should have_selector('title', 
                                :text => full_title('Contact'))
    end
  end
end
