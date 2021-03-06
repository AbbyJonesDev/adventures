require 'rails_helper'

RSpec.describe "resources/index", :type => :view do
  before(:each) do
    assign(:resources, [
      Resource.create!(
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :category => "Category"
      ),
      Resource.create!(
        :title => "Title",
        :description => "MyText",
        :link => "Link",
        :category => "Category"
      )
    ])
  end

  it "renders a list of resources" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
