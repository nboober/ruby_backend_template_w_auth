class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.username :string
      t.avatar :string
      t.firstname :string
      t.lastname :string

      t.timestamps
    end
  end
end
