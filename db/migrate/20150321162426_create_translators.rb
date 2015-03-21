class CreateTranslators < ActiveRecord::Migration
  def change
    create_table :translators do |t|
      t.belongs_to :user, index: true
      t.text :original_text
      t.string :audio
      t.text :translator_key

      t.timestamps
    end
  end
end
