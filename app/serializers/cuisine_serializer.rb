class CuisineSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :imgPath, :spices, :dishes
end
