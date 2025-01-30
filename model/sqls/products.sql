SELECT
  p.product_key, 
  p.product_sku,
  p.product_name, 
  p.model_name,
  p.product_description, 
  p.product_color, 
  p.product_size, 
  p.product_style, 
  p.product_cost, 
  p.product_price, 
  p.product_subcategory_key, 
  sc.subcategory_name AS product_subcategory_name, 
  sc.product_category_key, 
  pc.category_name AS product_category_name
  
FROM
  icebase.sports.products AS p
LEFT JOIN icebase.sports.product_sub_category AS sc ON p.product_subcategory_key = sc.product_subcategory_key
LEFT JOIN icebase.sports.product_category AS pc ON sc.product_category_key=pc.product_category_key