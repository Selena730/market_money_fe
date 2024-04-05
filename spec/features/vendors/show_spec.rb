require 'rails_helper'

RSpec.describe 'Vendor Show Page', type: :feature do
  describe 'As a visitor' do
    it "shows the vendor's name, contact information, credit acceptance, and description" do

      visit "/vendors/55297"
      
      expect(page).to have_content("Syble Hamill")
      expect(page).to have_content("1-276-593-3530")
      expect(page).to have_content('Accepts Credit: No')
      expect(page).to have_content("Handcrafted olive oil made from locally grown olives")
    end
  end
end