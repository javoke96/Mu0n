class V1::CitySerializer < ActiveModel::Serializer
  attributes :id, :name, :prev, :status
end
