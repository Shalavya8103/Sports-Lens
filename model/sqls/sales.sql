SELECT * FROM "icebase"."sports".sales as sales
LEFT JOIN icebase.sports.territory st 
ON sales.territory_key = st.sales_territory_key