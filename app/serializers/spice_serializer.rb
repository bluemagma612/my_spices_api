class SpiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :imgPath, :cuisines, :dishes
end
