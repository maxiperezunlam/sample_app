require 'spec_helper'


describe "Static pages" do

  let(:static_page_title) { "Ruby on Rails Tutorial Sample App |"}

  describe "Home page" do
    
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                                :text => "#{static_page_title} Home")
    end
  end

  describe "Help page" do
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                               :text => "#{static_page_title} Help")
    end
  end

  describe "About page" do
    it "should the h1 'About page'" do
      visit '/static_pages/about'
      page.should have_selector('h1',:text => 'About Us')
    end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                               :text => "#{static_page_title} About")
    end
  end

  describe "Contact Page" do
  
    it "should have h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => "Contact")
    end

    it "should have title 'Contact'" do 
      visit '/static_pages/contact'
      page.should have_selector('title', 
                                :text => "Ruby on Rails Tutorial Sample App | Contact")
    end
  end
end
