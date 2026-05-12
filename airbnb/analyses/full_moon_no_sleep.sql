WITH mart_fullmoon_reviews AS(
    SELECT * FROM {{ ref('mart_fullmoon_review') }}
)

SELECT
    is_full_moon,
    REVIEW_SENTIMENT,
    COUNT(*) AS reviews
FROM mart_fullmoon_reviews
GROUP BY ALL
ORDER BY
    is_full_moon,
    REVIEW_SENTIMENT