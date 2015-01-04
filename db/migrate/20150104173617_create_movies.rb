class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.belongs_to :category
      t.belongs_to :director

      t.timestamps
    end
  end
end
