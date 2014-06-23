require 'rails_helper'

RSpec.describe "resources/new", :type => :view do
  before(:each) do
    assign(:resource, Resource.new(
      :title => "MyString",
      :description => "MyText",
      :link => "MyString",
      :category => "MyString"
    ))
  end

  it "renders new resource form" do
    render

    assert_select "form[action=?][method=?]", resources_path, "post" do

      assert_select "input#resource_title[name=?]", "resource[title]"

      assert_select "textarea#resource_description[name=?]", "resource[description]"

      assert_select "input#resource_link[name=?]", "resource[link]"

      assert_select "input#resource_category[name=?]", "resource[category]"
    end
  end
end
