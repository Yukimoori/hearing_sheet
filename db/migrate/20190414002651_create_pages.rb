class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|

      t.string :companyname
      t.integer:tool, default: 0
      t.integer:property, default: 0
      t.integer:people
      t.integer:goal
      t.integer:budget
      t.integer:start
      t.integer:weekday, default: 0
      t.integer:examination, default: 0
      t.integer:aid, default: 0
      t.integer:lastpassrate
      t.string :others
      t.integer:status, default: 0

      t.timestamps
    end
  end
end
