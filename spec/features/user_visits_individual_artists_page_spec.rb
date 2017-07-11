require 'rails_helper'

RSpec.describe "User visits artist page" do
  scenario "and sees name and image" do
    artist_name = "Bob Marley"
    artist_image_path = "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg"
    Artist.create(name: artist_name, image: artist_image_path)

    visit('/artists')
    click_link(artist_name)

    expect(page).to have_content(artist_name)
    expect(page).to have_css("img[src=\"#{artist_image_path}\"]")
  end
end
