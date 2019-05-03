class Product < ApplicationRecord
  has_many :order_details
  has_many :orders, :through => :order_details

  # def self.find_by_materials(materials)
  #   self.all.select do |prod|
  #     # (prod.materials & materials).empty?
  #     prod.materials.any? { |mat| materials.include?(mat) }
  #   end
  # end
  # ONE WAY TO FILTER 
end
