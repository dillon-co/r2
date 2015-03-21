class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.integer :user_id
      t.text :original_text
      t.string :audio
      t.text :translator_key

      t.timestamps
    end
  end
end
