class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status

end
