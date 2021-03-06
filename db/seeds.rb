# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# First user is the admin of the website
User.destroy_all
User.create(username: 'admin', email: 'admin', password: 'admin', isAdmin: true)
User.create(username: 'user1', email: 'user1', password: 'user1', isAdmin: false)

# Product attributes => name, price, inventory, category, color, gender, material:[], size:[].
Product.destroy_all
Product.create(name: 'Boy Snug-fit White Dino Innerwear', price: 49.00, imgFront: 'https://dl.airtable.com/ul74gey2TbGJhBxEgzXE_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000872_resized.jpg', imgBack: 'https://dl.airtable.com/8GEBjtWQgOE8A2YdYoa1_full_MCCBBMAA07.jpg', inventory: 30, category: 'innerwear', color: 'white', gender: 'boy', material: ['modal', 'cotton', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Boy Snug-fit Black Check Innerwear', price: 59.00, imgFront: 'https://dl.airtable.com/riiX9593TyKCTAEAwPzt_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000906_resized.jpg', imgBack: 'https://dl.airtable.com/aGI38YrlTJ2DgDU4oiRI_full_MCCBBMAA11.jpg', inventory: 30, category: 'innerwear', color: 'black', gender: 'boy', material: ['modal', 'cotton', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Boy Snug-fit Brown Lion Innerwear', price: 34.00, imgFront: 'https://dl.airtable.com/OJlHuRH1RXSaUkV8uB1M_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000764_resized.jpg', imgBack: 'https://dl.airtable.com/I4zOfQucQFql7DoZLBjT_full_MCCBBMAA25.jpg', inventory: 30, category: 'innerwear', color: 'brown', gender: 'boy', material: ['cotton'], size:['small', 'medium', 'large'])
Product.create(name: 'Boy Snug-fit Navy Fox Innerwear', price: 43.00, imgFront: 'https://dl.airtable.com/NDqLNk7DTKS41t6zqAb6_full_33.JPG', imgBack: 'https://dl.airtable.com/14IVVKV4QDe6NgggBZRg_full_MCCBBMAA41.jpg', inventory: 30, category: 'innerwear', color: 'navy', gender: 'boy', material: ['tencel', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Snug-fit Blue Rabbit Innerwear', price: 21.00, imgFront: 'https://dl.airtable.com/6ZtNc3L4TvGN6OOjN3pL_full_20180618GBstyle150719.jpg', imgBack: 'https://dl.airtable.com/qxg4mHlwTUOrxIFHZlxo_full_CDCBBFCB33.jpg', inventory: 30, category: 'innerwear', color: 'blue', gender: 'girl', material: ['modal', 'cotton', 'spandex'], size:['small', 'medium', 'large'])

Product.create(name: 'Girl Snug-fit Yellow Coffee Innerwear', price: 20.00, imgFront: 'https://dl.airtable.com/AFZE5ETHRebaI98Oxvxo_full_20180618GBstyle149897.jpg', imgBack: 'https://dl.airtable.com/QJpGQuZSZaD9AO1XvPjg_full_CDCBBFCB31.jpg', inventory: 30, category: 'innerwear', color: 'yellow', gender: 'girl', material: ['modal', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Snug-fit White House Innerwear', price: 19.00, imgFront: 'https://dl.airtable.com/TBFE1MyBTMm4nkW0QPj6_full_20180618GBstyle151032.jpg', imgBack: 'https://dl.airtable.com/c0lvWJ8iQe64ycbogwO3_full_CDCBBFAB01.jpg', inventory: 30, category: 'innerwear', color: 'white', gender: 'girl', material: ['modal', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Snug-fit Pink Milk Innerwear', price: 54.00, imgFront: 'https://dl.airtable.com/tw9HZCOARF6I8ritHMyO_full_20180618GBstyle149093.jpg', imgBack: 'https://dl.airtable.com/zyTupyRTFC6BP7NECg30_full_CDCBBFAA35.jpg', inventory: 30, category: 'innerwear', color: 'pink', gender: 'girl', material: ['cotton', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Light Pink Flower Dress', price: 78.00, imgFront: 'https://dl.airtable.com/gfJq8SeRR3u9tbRI13Q6_full_mny_outdoor_000.jpg', imgBack: 'https://dl.airtable.com/phfIrqHnQbijujTneJrG_full_MCCBBFED07.jpg', inventory: 30, category: 'dress', color: 'pink', gender: 'girl', material: ['cotton'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Light Pink Rabbit Dress', price: 59.00, imgFront: 'https://dl.airtable.com/euMYb2UREW88IB3AL6i6_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000674_resized.jpg', imgBack: 'https://dl.airtable.com/HewYED2dTXKJDUzX2dwv_full_MCCBBFED09.jpg', inventory: 30, category: 'dress', color: 'pink', gender: 'Girl', material: ['rayon'], size:['small', 'medium', 'large'])

Product.create(name: 'Girl Purple Check Dress', price: 71.00, imgFront: 'https://dl.airtable.com/Utf1nBwnQnyjWx8fASPh_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2001161_resized.jpg', imgBack: 'https://dl.airtable.com/NQacy2WkQc6ZxxRY5Ei4_full_MCCBBFED11.jpg', inventory: 30, category: 'dress', color: 'purple', gender: 'girl', material: ['rayon'], size:['small', 'medium', 'large'])
Product.create(name: 'Navy Star Robe', price: 109.00, imgFront: 'https://dl.airtable.com/0PwTW2e7RsK0EEqDkiMR_full_20180723GBStyle5672.jpg', imgBack: 'https://dl.airtable.com/NgiIWKRjTMKyAeFQhSUx_full_20180723GBStyle5701.jpg', inventory: 30, category: 'robe', color: 'navy', gender: 'unisex', material: ['rayon', 'modal'], size:['small', 'medium', 'large'])
Product.create(name: 'Boy Beige Dino Pajamas', price: 87.00, imgFront: 'https://dl.airtable.com/LFlergqcQMuA3SHjkX01_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000036_resized.jpg', imgBack: 'https://dl.airtable.com/sU9y4TfS5WiNqcI0PacB_full_MCCBBMEA05.jpg', inventory: 30, category: 'pajamas', color: 'beige', gender: 'boy', material: ['cotton'], size:['small', 'medium', 'large'])
Product.create(name: 'Boy Light Blue Space Pajamas', price: 72.00, imgFront: 'https://dl.airtable.com/pJqkEUlTMfrYvZ0p9BVA_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000587_resized.jpg', imgBack: 'https://dl.airtable.com/mwqX023R46orAihwcRVd_full_MCCBBMEA01.jpg', inventory: 30, category: 'pajamas', color: 'blue', gender: 'boy', material: ['rayon', 'cotton'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Light Blue Plain Pajams', price: 75.00, imgFront: 'https://dl.airtable.com/gVdmHnE8RySHWjLEd2Mc_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2001227_resized.jpg', imgBack: 'https://dl.airtable.com/ygkkWesBTYiJpGKZcczm_full_MCCBBFEA11.jpg', inventory: 30, category: 'pajamas', color: 'blue', gender: 'girl', material: ['rayon'], size:['small', 'medium', 'large'])

Product.create(name: 'Girl Pink Flower Pajamas', price: 79.00, imgFront: 'https://dl.airtable.com/SsdOyF4IQwOg3lKjkiBP_full_mny_outdoor_070.jpg', imgBack: 'https://dl.airtable.com/Qov06u6QwS3IW35n9jr9_full_MCCBBFEA05.jpg', inventory: 30, category: 'pajamas', color: 'pink', gender: 'girl', material: ['cotton'], size:['small', 'medium', 'large'])
Product.create(name: 'Navy Star Robe Pajamas', price: 99.00, imgFront: 'https://dl.airtable.com/SIhTsWH5SQupkelOEj8K_full_%EC%A0%9C%EB%AA%A9%20%EC%97%86%EB%8A%94%20%EC%B9%B4%ED%83%88%EB%A1%9D%2000645_resized.jpg', imgBack: 'https://dl.airtable.com/ODjh7akoTASfLN6k3YPx_full_MCCBBAEA01.jpg', inventory: 30, category: 'pajamas', color: 'navy', gender: 'unisex', material: ['rayon', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Girl Pink Red-dot Dress', price: 89.00, imgFront: 'https://dl.airtable.com/.attachmentThumbnails/ebfbc4c490d708d1480b395b32fe00c4/dc3b9e4b', imgBack: 'https://dl.airtable.com/iojuhJJ1Rx2xp2v5O98r_full_MCCBBFED13.jpg', inventory: 30, category: 'dress', color: 'pink', gender: 'girl', material: ['tencel', 'spandex'], size:['small', 'medium', 'large'])
Product.create(name: 'Red Circle Sweater', price: 17.00, imgFront: 'https://dl.airtable.com/ln4wmfBTRJqtjkW1YNVt_full_20180619GBstyle153484.jpg', imgBack: 'https://dl.airtable.com/6X1DAXtiQJWuJAkK7p7X_full_CDCBBACD01.jpg', inventory: 30, category: 'sweater', color: 'red', gender: 'unisex', material: ['rayon', 'tencel'], size:['small', 'medium', 'large'])
Product.create(name: 'Yellow Circle Sweater', price: 17.00, imgFront: 'https://dl.airtable.com/HiFTMurUSpmWwSjCFyXk_full_20180618GBstyle150779.jpg', imgBack: 'https://dl.airtable.com/QiyCLT5SR6WYEzgCB1nQ_full_CDCBBACD03.jpg', inventory: 30, category: 'sweater', color: 'yellow', gender: 'unisex', material: ['rayon', 'tencel'], size:['small', 'medium', 'large'])

Product.create(name: 'Pink Circle Sweater', price: 17.00, imgFront: 'https://dl.airtable.com/jproE3o4SaOPUJ2YPaRz_full_20180618GBstyle150909.jpg', imgBack: 'https://dl.airtable.com/bRwG82KsSWGBZqtb5u85_full_CDCBBACD05.jpg', inventory: 30, category: 'sweater', color: 'pink', gender: 'unisex', material: ['modal', 'tencel'], size:['small', 'medium', 'large'])
Product.create(name: 'Green Stripe Pants', price: 15.00, imgFront: 'https://dl.airtable.com/v6XSBYKSS0uJAqKB3Bfa_full_20180619GBstyle153722.jpg', imgBack: 'https://dl.airtable.com/Ou4EOho1Qg2xo0BbABo6_full_CDCBBACF01.jpg', inventory: 30, category: 'pants', color: 'green', gender: 'unisex', material: ['tencel'], size:['small', 'medium', 'large'])
Product.create(name: 'Blue Plain Pants', price: 15.00, imgFront: 'https://dl.airtable.com/yj49spoTfS47v9K55eHR_full_20180618GBstyle150872.jpg', imgBack: 'https://dl.airtable.com/jzpSbGDuRLaSTX0upzLA_full_CDCBBACF07.jpg', inventory: 30, category: 'pants', color: 'blue', gender: 'unisex', material: ['tencel'], size:['small', 'medium', 'large'])
Product.create(name: 'Black Stripe InnerWear', price: 24.00, imgFront: 'https://dl.airtable.com/pgVIWVTcQeybuuG9afPo_full_20180619GBstyle152594.jpg', imgBack: 'https://dl.airtable.com/FynGIi0QhmPZ2NHHt5QM_full_CDCBBMCB03.jpg', inventory: 30, category: 'innerwear', color: 'black', gender: 'boy', material: ['tencel', 'modal'], size:['small', 'medium', 'large'])

# Order
Order.destroy_all
Order.create(user_id: 2, total_amount: 12.25, shipping_method: 'regular', status: 'pre order')
Order.create(user_id: 2, total_amount: 14.50, shipping_method: 'express', status: 'pending')
Order.create(user_id: 2, total_amount: 17.75, shipping_method: 'over night', status: 'ordered')

# Order detail
OrderDetail.destroy_all
OrderDetail.create(order_id: 1, product_id: 5, quantity: 2, size: 'small')
OrderDetail.create(order_id: 2, product_id: 10, quantity: 3, size: 'medium')
OrderDetail.create(order_id: 3, product_id: 15, quantity: 5, size: 'large')
