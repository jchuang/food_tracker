require 'spec_helper'

feature 'employee adds item to inventory' do

# As a food service employee
# I want to receive inventory
# So that it can be recorded that we have food items

# Acceptance Criteria:
# * I must specify a title, description, and quantity of the food item
# * If I do not specify the required information, I am prompted to fix errors and to resubmit
# * If I specify the required information, my inventory entry is recorded.

  scenario 'adds a valid food item' do
    visit 'items/new'

    fill_in 'Title', with: 'ice cream'
    fill_in 'Description', with: 'Coffee Oreo'
    fill_in 'Quantity', with: '3'

    click_on 'Add Item'
    expect(page).to have_content 'Item was successfully added.'
  end

  scenario 'all fields are required' do
    visit 'items/new'
    click_on 'Add Item'

    expect(page).to have_content "Title can't be blank"
    expect(page).to have_content "Description can't be blank"
    expect(page).to have_content "Quantity can't be blank"
  end
end
