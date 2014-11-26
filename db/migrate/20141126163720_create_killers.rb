class CreateKillers < ActiveRecord::Migration
  def change
    create_table :killers do |t|

      t.timestamps
    end
  end
end
