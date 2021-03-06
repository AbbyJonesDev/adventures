require 'rails_helper'

RSpec.describe "resources/show", :type => :view do
  before(:each) do
    @resource = assign(:resource, Resource.create!(
      :title => "Title",
      :description => "MyText",
      :link => "Link",
      :category => "Category"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/Category/)
  end
end
