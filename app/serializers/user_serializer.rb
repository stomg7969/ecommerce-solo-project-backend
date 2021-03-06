class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :created_at, :isAdmin, :orders

  def username
    self.object.username.capitalize
  end

  def orders
    self.object.orders.map do |order|
      {
        id: order.id,
        :total => order.total_amount,
        :ship => order.shipping_method,
        :status => order.status,
        :ordered => order.updated_at,
        :details => order.order_details
      }
    end
  end
end
