class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :created_at, :isAdmin, :orders

  def orders
    self.object.orders.map do |order|
      {
        id: order.id,
        :total => order.total_amount,
        :ship => order.shipping_method,
        :status => order.status,
        :ordered => order.updated_at,
        :detail => order.order_details
      }
    end
  end
end
