require 'rails_helper'

feature "user views all of the dogs" do
  # As a User
  # I want to be able to view all of the dogs that need to be watched
  # So I may contact an owner to watch their dog.
  # Acceptance Criteria:
  # [X] I must see a list of all the dogs that need to be watched
  # [] I should not see dogs that don't need to be currently watched

  before (:each) do
    @dog = FactoryGirl.create(:dog)
    @dog2 = FactoryGirl.create(:dog, bording: true)
  end

 it "sees a list of all the dogs that currently need to be borded" do
   visit "/dogs"

   expect(page).to have_content(@dog2.name)
   expect(page).to_not have_content(@dog.name)

 end
end
