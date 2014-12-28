class AddActiveToQa < ActiveRecord::Migration
  def up
    add_column :refinery_qa_answers, :active, :boolean, default: false
  end

  def down
    remove_column :refinery_qa_answers, :active
  end
end
