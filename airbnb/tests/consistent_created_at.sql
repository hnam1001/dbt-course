SELECT *

FROM {{ ref('fct_reviews') }} l

INNER JOIN {{ ref('dim_listings_cleansed') }} r

USING(listing_id)

WHERE r.created_at > l.review_date