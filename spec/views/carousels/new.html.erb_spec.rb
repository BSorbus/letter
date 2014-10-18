require 'rails_helper'

RSpec.describe "carousels/new", :type => :view do
  before(:each) do
    assign(:carousel, Carousel.new(
      :title => "MyString",
      :caption => "MyString",
      :image => "MyString",
      :visible => false,
      :promotion => false
    ))
  end

  it "renders new carousel form" do
    render

    assert_select "form[action=?][method=?]", carousels_path, "post" do

      assert_select "input#carousel_title[name=?]", "carousel[title]"

      assert_select "input#carousel_caption[name=?]", "carousel[caption]"

      assert_select "input#carousel_image[name=?]", "carousel[image]"

      assert_select "input#carousel_visible[name=?]", "carousel[visible]"

      assert_select "input#carousel_promotion[name=?]", "carousel[promotion]"
    end
  end
end
