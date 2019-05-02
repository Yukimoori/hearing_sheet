class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|

      t.string :companyname
      t.string:tool
      t.string:property
      t.integer:people
      t.integer:goal
      t.integer:budget
      t.integer:start
      t.string:weekday
      t.integer:examination, default: 0
      t.string:aid
      t.integer:lastpassrate
      t.string :others
      t.integer:status, default: 0

      t.timestamps
    end
  end
end
