require 'rails_helper'
RSpec.describe "User visits /artists" do
  scenario "and sees all artists" do
    artist_name = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    Artist.create(name: artist_name, image: artist_image_path)

    visit(artists_path)

    expect(page).to have_content(artist_name)
  end
end
