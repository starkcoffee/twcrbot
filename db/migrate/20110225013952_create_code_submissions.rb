class CreateCodeSubmissions < ActiveRecord::Migration
  def self.up
    create_table :code_submissions do |t|
      t.string :applicant_name
      t.string :language
      t.string :problem

      t.timestamps
    end
  end

  def self.down
    drop_table :code_submissions
  end
end
