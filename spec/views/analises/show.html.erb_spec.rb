require 'rails_helper'

RSpec.describe "analises/show", type: :view do
  before(:each) do
    @analise = assign(:analise, Analise.create!(
      Mg2: 2.5,
      Ca2: 3.5,
      K: 4.5,
      N: 5.5,
      Cl: 6.5,
      SO4: 7.5,
      CO3: 8.5,
      HCO3: 9.5,
      pH: 10.5,
      B: 11.5,
      CEa: 12.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/3.5/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/8.5/)
    expect(rendered).to match(/9.5/)
    expect(rendered).to match(/10.5/)
    expect(rendered).to match(/11.5/)
    expect(rendered).to match(/12.5/)
  end
end
