require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path}

    it "should have the h1 'Popy App'" do
      page.should have_selector('h1', :text => 'Popy App')
    end

    it "should have the title 'Home'" do
      page.should have_selector('title',
			        :text => "Popy")
    end
    
    it "should not have a custom page title" do
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help" do
    before { visit help_path}
    
    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'"do
      page.should have_selector('title',
			        :text => "Popy | Help")
    end
  end

  describe "About page" do
    before { visit about_path}
    
    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
			        :text => "Popy | About Us")
    end
  end
  
  describe "Contact page" do
    before { visit contact_path}
    
    it "should have the h1 'Contact'" do
      page.should have_selector('h1', :text => 'Contact')
    end
    
    it "should have the title 'Contact'" do
      page.should have_selector('title', :text => 'Popy | Contact')
    end
  end
end
