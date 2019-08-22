class CreateArtists < ActiveRecord::Migration[5.2]
  # up is like do
  def up
  end

  # down is like undo
  def down
  end
  
  # change works for the majority of cases, where Active Record knows how to reverse the migration automatically
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genre
      t.integer :age
      t.string :hometown
    end
  end


end
