require 'rails_helper'
RSpec.describe "User edits an artist" do
  scenario "and updates information" do
    artist_name = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    bob = Artist.create(name: artist_name, image: artist_image_path)
    new_name = "Kanye West"

    visit(artist_path(bob))
    click_on("Edit")
    fill_in("artist_name", with: new_name)
    click_on("Update Artist")

    expect(page).to have_content(new_name)
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
