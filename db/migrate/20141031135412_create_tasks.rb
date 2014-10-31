class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :description
      # Not mentioned here. We will also get a primary key called id.
      t.timestamps
    end
  end
end
