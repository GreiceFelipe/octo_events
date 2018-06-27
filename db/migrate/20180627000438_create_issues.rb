class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.integer :number
      t.string :title
      t.string :github_id

      t.timestamps
    end
  end
end
