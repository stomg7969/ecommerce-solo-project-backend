class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :details, :total_amount, :shipping_method, :status, :created_at, :updated_at

  def user
    {
      :id => self.object.user.id,
      'Ordered by' => self.object.user.username,
      :email => self.object.user.email
    }
  end

  def details
    self.object.order_details.map do |detail|
      {
        id: detail.id,
        order: detail.updated_at,
        quantity: detail.quantity,
        size: detail.size,
        product: {
          :id => detail.product.id,
          :name => detail.product.name,
          :price => detail.product.price,
          :image => detail.product.imgBack,
          :category => detail.product.category,
          :inventory => detail.product.inventory
        }
      }
    end
  end
end
