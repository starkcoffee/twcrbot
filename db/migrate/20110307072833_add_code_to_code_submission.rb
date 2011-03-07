class AddCodeToCodeSubmission < ActiveRecord::Migration
  def self.up
      add_column :code_submissions, :code_file_name,    :string
      add_column :code_submissions, :code_content_type, :string
      add_column :code_submissions, :code_file_size,    :integer
      add_column :code_submissions, :code_updated_at,   :datetime
    end

    def self.down
      remove_column :code_submissions, :code_file_name
      remove_column :code_submissions, :code_content_type
      remove_column :code_submissions, :code_file_size
      remove_column :code_submissions, :code_updated_at
    end
end
