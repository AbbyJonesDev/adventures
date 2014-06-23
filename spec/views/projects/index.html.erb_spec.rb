require 'rails_helper'

RSpec.describe "projects/index", :type => :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
        :title => "Title",
        :link => "Link",
        :date => "Date",
        :description => "MyText",
        :category => "Category",
        :status => "Status"
      ),
      Project.create!(
        :title => "Title",
        :link => "Link",
        :date => "Date",
        :description => "MyText",
        :category => "Category",
        :status => "Status"
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Link".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
