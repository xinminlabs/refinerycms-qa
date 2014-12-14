class CreateQa < ActiveRecord::Migration
  def up
    unless ::Refinery::Qa::Question.table_exists?
      create_table :refinery_qa_questions, :force => true do |t|
        t.string   :title
        t.string   :body
        t.string   :name
        t.timestamps
      end
    end

    unless ::Refinery::Qa::Answer.table_exists?
      create_table :refinery_qa_answers, :force => true do |t|
        t.integer  :question_id
        t.string   :body
        t.timestamps
      end
    end
  end

  def down
    drop_table ::Refinery::Qa::Question.table_name
    drop_table ::Refinery::Qa::Answer.table_name
  end
end
