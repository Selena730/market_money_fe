require 'rails_helper'

RSpec.describe 'Market Show Page' do
  describe 'As a visitor' do
    it 'can visit a markets show page and see its address, all vendors at the market and each vendor links to the vendors show page' do
     
      visit "/markets/322458"
      
      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("1400 U Street NW Washington, District of Columbia 20009")
      expect(page).to have_content("City: Washington")
      expect(page).to have_content("State: District of Columbia")

        within ".vendors" do
            within first(".vendor") do
                expect(page).to have_link("The Charcuterie Corner", href: "/vendors/55823")
            end
        end
      expect(page).to have_link('Back to Markets', href: markets_path)
    end
  end
end