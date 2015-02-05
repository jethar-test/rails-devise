class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :title
      t.integer :number
      t.references :syllabus, index: true

      t.timestamps null: false
    end
    add_foreign_key :chapters, :syllabuses
  end
end
