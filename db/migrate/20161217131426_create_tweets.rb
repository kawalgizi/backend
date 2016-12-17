class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :username
      t.text :tweet

      t.timestamps
    end
  end
end
