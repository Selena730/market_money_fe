require 'rails_helper'

RSpec.describe 'Markets Index Page', type: :feature do
  describe 'As a visitor' do
        it 'I see all markets listed with their name, city, and state' do
            visit "/markets"

            expect(page).to have_content("Markets")

            market = page.find('li', text: "14&U Farmers' Market")
            within(market) do
            expect(page).to have_content("Washington")
            expect(page).to have_content("District of Columbia")
            click_on("See more")
            end

            expect(current_path).to eq("/markets/322458")
        end 
    end
end