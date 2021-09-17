require 'rails_helper'

RSpec.describe "analises/index", type: :view do
  before(:each) do
    assign(:analises, [
      Analise.create!(
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
      ),
      Analise.create!(
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
      )
    ])
  end

  it "renders a list of analises" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.5.to_s, count: 2
    assert_select "tr>td", text: 5.5.to_s, count: 2
    assert_select "tr>td", text: 6.5.to_s, count: 2
    assert_select "tr>td", text: 7.5.to_s, count: 2
    assert_select "tr>td", text: 8.5.to_s, count: 2
    assert_select "tr>td", text: 9.5.to_s, count: 2
    assert_select "tr>td", text: 10.5.to_s, count: 2
    assert_select "tr>td", text: 11.5.to_s, count: 2
    assert_select "tr>td", text: 12.5.to_s, count: 2
  end
end
