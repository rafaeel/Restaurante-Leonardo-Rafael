class AddAttachmentFotoToRestaurantes < ActiveRecord::Migration
  def self.up
    #change_table :restaurantes do |t|
     # t.attachment :foto
    #end
    add_column :restaurantes, :foto_file_name, :string
    add_column :restaurantes, :foto_content_type, :string
    add_column :restaurantes, :foto_file_size, :integer
    add_column :restaurantes, :foto_updated_at, :datetime
  end

  def self.down
    #drop_attached_file :restaurantes, :foto
    remove_column :restaurantes, :foto_file_name
    remove_column :restaurantes, :foto_content_type
    remove_column :restaurantes, :foto_file_size
    remove_column :restaurantes, :foto_updated_at
  end
end
