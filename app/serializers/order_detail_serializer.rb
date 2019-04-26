class OrderDetailSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :size, :product, :order, :user, :created_at

  def product
    {
      :id => self.object.product.id,
      :name => self.object.product.name,
      :price => self.object.product.price
    }
  end

  def order
    {
      :id => self.object.order.id,
      :total => self.object.order.total_amount,
      :ship => self.object.order.shipping_method,
      :status => self.object.order.status
    }
  end

  def user
    {
      :id => self.object.order.user.id,
      :username => self.object.order.user.username,
      :email => self.object.order.user.email
    }
  end
end
