require 'rails_helper'

RSpec.describe "analises/edit", type: :view do
  before(:each) do
    @analise = assign(:analise, Analise.create!(
      Mg2: 1.5,
      Ca2: 1.5,
      K: 1.5,
      N: 1.5,
      Cl: 1.5,
      SO4: 1.5,
      CO3: 1.5,
      HCO3: 1.5,
      pH: 1.5,
      B: 1.5,
      CEa: 1.5
    ))
  end

  it "renders the edit analise form" do
    render

    assert_select "form[action=?][method=?]", analise_path(@analise), "post" do

      assert_select "input[name=?]", "analise[Mg2]"

      assert_select "input[name=?]", "analise[Ca2]"

      assert_select "input[name=?]", "analise[K]"

      assert_select "input[name=?]", "analise[N]"

      assert_select "input[name=?]", "analise[Cl]"

      assert_select "input[name=?]", "analise[SO4]"

      assert_select "input[name=?]", "analise[CO3]"

      assert_select "input[name=?]", "analise[HCO3]"

      assert_select "input[name=?]", "analise[pH]"

      assert_select "input[name=?]", "analise[B]"

      assert_select "input[name=?]", "analise[CEa]"
    end
  end
end
