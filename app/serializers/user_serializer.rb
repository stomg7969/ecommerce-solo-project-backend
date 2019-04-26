class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :created_at, :password_digest, :isAdmin, :orders

  def orders
    self.object.orders.map do |order|
      {
        'Order#': order.id,
        :total => order.total_amount,
        :ship => order.shipping_method,
        :status => order.status
      }
    end
  end
end
