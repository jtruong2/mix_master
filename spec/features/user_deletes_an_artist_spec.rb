require 'rails_helper'
RSpec.describe "User deletes an artist" do
  scenario "removes artist from index" do
    artist_name = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    bob = Artist.create(name: artist_name, image: artist_image_path)

    visit(artist_path(bob))
    click_on("Delete")

    expect(current_path).to eq(artists_path)
    expect(page).not_to have_content(artist_name)
  end
end
