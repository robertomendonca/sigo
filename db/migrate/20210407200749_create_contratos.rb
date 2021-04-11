class CreateContratos < ActiveRecord::Migration[6.0]
  def change
    create_table :contratos do |t|
      t.integer :numero
      t.string :responsavel
      t.references :norma, null: false, foreign_key: true

      t.timestamps
    end
  end
end
