migration 1, :add_picture_attatchment_to_photos do

  up do
    modify_table :photos do
      add_column :picture_file_name     , "varchar(255)"
      add_column :picture_content_type  , "varchar(255)"
      add_column :picture_file_size     , "integer"
      add_column :picture_updated_at    , "datetime"
    end
  end

  down do
    modify_table :photos do
      drop_columns :picture_file_name, :picture_content_type, :picture_file_size, :picture_updated_at
    end
  end

end
