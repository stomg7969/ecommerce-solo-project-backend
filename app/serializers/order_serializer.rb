class OrderSerializer < ActiveModel::Serializer
  attributes :id, :user, :total_amount, :shipping_method, :status, :created_at, :updated_at

  def user
    {
      :id => self.object.user.id,
      'Ordered by' => self.object.user.username,
      :email => self.object.user.email
    }
  end
end
