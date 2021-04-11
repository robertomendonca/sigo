class AddDataToNormas < ActiveRecord::Migration[6.0]
  def change
    add_column :normas, :data_atualizacao, :datetime
    add_column :normas, :norma_externa, :string
    add_column :normas, :versao, :string
    add_column :normas, :categoria, :string
  end
end
