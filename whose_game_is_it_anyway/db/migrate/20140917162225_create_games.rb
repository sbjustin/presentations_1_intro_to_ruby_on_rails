class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :number_of_players
      t.belongs_to :person

      t.timestamps
    end
  end
end
