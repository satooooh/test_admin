ActiveAdmin.register Author do
  permit_params :name, :description, author_books_attributes: [:author_id, :_destroy, :id]

end
