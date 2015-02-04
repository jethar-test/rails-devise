class CreateSyllabus < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :code
      t.integer :semester
      t.string :name
      t.references :course, index: true
    end
    add_foreign_key :syllabuses, :courses
  end
end
