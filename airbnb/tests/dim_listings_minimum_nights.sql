SELECT TOP 10 * FROM {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
