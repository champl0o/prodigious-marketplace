class AddAttachmentDataToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :attachment_data, :text
  end
end
