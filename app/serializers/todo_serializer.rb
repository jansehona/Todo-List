class TodoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status


  # due to the difference between 1.8 and 1.9 with respect to #id and
  # #object_id, we recommend that if you wish to serialize id columns, you
  # do this. Feel free to remove this if you don't feel that it's appropriate.
  #
  # For more: https://github.com/rails-api/active_model_serializers/issues/127
  # def id
  #   object.read_attribute_for_serialization(:id)
  # end
end
