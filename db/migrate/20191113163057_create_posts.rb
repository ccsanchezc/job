class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :job_type
      t.string :location
      t.boolean :remote_ok
      t.string :apply_url

      t.timestamps
    end
  end
end
