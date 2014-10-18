require 'rails_helper'

RSpec.describe "carousels/show", :type => :view do
  before(:each) do
    @carousel = assign(:carousel, Carousel.create!(
      :title => "Title",
      :caption => "Caption",
      :image => "Image",
      :visible => false,
      :promotion => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
