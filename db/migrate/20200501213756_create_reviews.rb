class CreateReviews < ActiveRecord::Migration

  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.string :content

      t.timestamps null: false
    end
  end

end
