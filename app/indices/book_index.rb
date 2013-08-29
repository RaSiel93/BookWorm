ThinkingSphinx::Index.define :book, :with => :active_record do
  # fields
  indexes title, description
  #indexes description
  #indexes category.name, as: :category
  #indexes user.username, as: :user, sortable: true
  #indexes tags.name, :as => :tags


  # attributes
  #has  user_id, created_at, updated_at
end