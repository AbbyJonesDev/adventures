require 'rails_helper'

RSpec.describe "projects/edit", :type => :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :title => "MyString",
      :link => "MyString",
      :date => "MyString",
      :description => "MyText",
      :category => "MyString",
      :status => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    assert_select "form[action=?][method=?]", project_path(@project), "post" do

      assert_select "input#project_title[name=?]", "project[title]"

      assert_select "input#project_link[name=?]", "project[link]"

      assert_select "input#project_date[name=?]", "project[date]"

      assert_select "textarea#project_description[name=?]", "project[description]"

      assert_select "input#project_category[name=?]", "project[category]"

      assert_select "input#project_status[name=?]", "project[status]"
    end
  end
end
