require 'rails_helper'

RSpec.describe "resources/edit", :type => :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit resource form" do
    render

    assert_select "form[action=?][method=?]", resource_path(@resource), "post" do

      assert_select "input#resource_title[name=?]", "resource[title]"

      assert_select "textarea#resource_description[name=?]", "resource[description]"

      assert_select "input#resource_link[name=?]", "resource[link]"

      assert_select "input#resource_category[name=?]", "resource[category]"
    end
  end
end
