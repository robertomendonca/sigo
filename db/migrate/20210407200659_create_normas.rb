class CreateNormas < ActiveRecord::Migration[6.0]
  def change
    create_table :normas do |t|
      t.text :descricao
      t.string :idioma
      t.string :repositorio
      t.integer :codigo

      t.timestamps
    end
  end
end
