require 'rails_helper'

RSpec.describe "carousels/edit", :type => :view do
  before(:each) do
    @carousel = assign(:carousel, Carousel.create!(
      :title => "MyString",
      :caption => "MyString",
      :image => "MyString",
      :visible => false,
      :promotion => false
    ))
  end

  it "renders the edit carousel form" do
    render

    assert_select "form[action=?][method=?]", carousel_path(@carousel), "post" do

      assert_select "input#carousel_title[name=?]", "carousel[title]"

      assert_select "input#carousel_caption[name=?]", "carousel[caption]"

      assert_select "input#carousel_image[name=?]", "carousel[image]"

      assert_select "input#carousel_visible[name=?]", "carousel[visible]"

      assert_select "input#carousel_promotion[name=?]", "carousel[promotion]"
    end
  end
end
