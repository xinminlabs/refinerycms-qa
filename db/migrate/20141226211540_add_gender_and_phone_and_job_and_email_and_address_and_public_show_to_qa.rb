class AddGenderAndPhoneAndJobAndEmailAndAddressAndPublicShowToQa < ActiveRecord::Migration
  def up
    add_column :refinery_qa_questions, :gender, :string
    add_column :refinery_qa_questions, :phone, :string
    add_column :refinery_qa_questions, :job, :string
    add_column :refinery_qa_questions, :email, :string
    add_column :refinery_qa_questions, :address, :string
    add_column :refinery_qa_questions, :public_show, :boolean
  end

  def down
    remove_column :refinery_qa_questions, :gender
    remove_column :refinery_qa_questions, :phone
    remove_column :refinery_qa_questions, :job
    remove_column :refinery_qa_questions, :email
    remove_column :refinery_qa_questions, :address
    remove_column :refinery_qa_questions, :public_show
  end
end
