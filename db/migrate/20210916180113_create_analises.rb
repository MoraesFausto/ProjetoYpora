class CreateAnalises < ActiveRecord::Migration[6.1]
  def change
    create_table :analises do |t|
      t.float :Mg2
      t.float :Ca2
      t.float :K
      t.float :N
      t.float :Cl
      t.float :SO4
      t.float :CO3
      t.float :HCO3
      t.float :pH
      t.float :B
      t.float :CEa

      t.timestamps
    end
  end
end
