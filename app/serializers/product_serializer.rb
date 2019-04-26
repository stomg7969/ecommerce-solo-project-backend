class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :imgFront, :imgBack, :inventory, :category, :color, :gender, :material, :size, :created_at, :updated_at
end
