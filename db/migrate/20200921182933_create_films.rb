class CreateFilms < ActiveRecord::Migration[6.0]
  def change
    create_table :films do |t|
      t.string :title
      t.string :poster
      t.date :release_date
      t.string :director

      t.timestamps
    end
  end
end
