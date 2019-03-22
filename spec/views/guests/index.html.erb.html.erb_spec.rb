require 'rails_helper'

RSpec.describe "guests/index.html.erb", type: :view do
#  pending "add some examples to (or delete) #{__FILE__}"


context 'proposal of website' do
  it "displays 'j'ai besoin d'un site pour'" do
    # génére la page
    render

    # le contenu "j'ai besoin d'un site pour:" doit être dans la page
    expect(rendered).to have_content 'un site pour'
  end
  end




context 'partnership' do
  it "displays 'nos partenaires'" do
    render
    expect(rendered).to have_content 'Nos partenaires'
  end
end

end
