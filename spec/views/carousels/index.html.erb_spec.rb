require 'rails_helper'

RSpec.describe "carousels/index", :type => :view do
  before(:each) do
    assign(:carousels, [
      Carousel.create!(
        :title => "Title",
        :caption => "Caption",
        :image => "Image",
        :visible => false,
        :promotion => false
      ),
      Carousel.create!(
        :title => "Title",
        :caption => "Caption",
        :image => "Image",
        :visible => false,
        :promotion => false
      )
    ])
  end

  it "renders a list of carousels" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
