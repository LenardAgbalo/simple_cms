class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|
      t.integer "subject_id" # Forieng_Key in Subjects
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :defailt => false
      t.timestamps
    end
    add_index("pages", "subject_id")
    add_index("pages", "permalink")
    # Hindi masasama sa pag drop kasi i aadd ulit
  end

  def down
    # don't need to drop indexes when dropping the whole table
    drop_table :pages
  end
end
