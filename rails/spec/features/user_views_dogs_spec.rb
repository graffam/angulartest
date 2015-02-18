require 'rails_helper'

feature "user views all of the dogs" do
  # As a User
  # I want to be able to view all of the dogs that need to be watched
  # So I may contact an owner to watch their dog.
  # Acceptance Criteria:
  # [] I must see a list of all the dogs that need to be watched
  # [] I should not see dogs that don't need to be currently watched

  before (:each) do
    @dog = FactoryGirl.create(:dog)
  end

 it "sees a list of all the dogs that currently need to be watched" do
   visit "/dogs"

   expect(page).to have_content(@dog.name)

 end
end
