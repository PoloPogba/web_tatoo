require 'rails_helper'

RSpec.describe "guests/show.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"



context 'categories' do
  it "displays 'categories'" do
    render
    expect(rendered).to have_content 'Choisissez la catégorie de votre activité'
  end
end


end
