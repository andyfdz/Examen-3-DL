class CreateVotos < ActiveRecord::Migration
  def change
    create_table :votos do |t|
      t.string :heroe
      t.string :email

      t.timestamps null: false
    end
  end
end
