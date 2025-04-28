SELECT segment_name, SUM(ad_spend)/SUM(conversions) AS cost_per_conversion
FROM ad_performance AS ap
JOIN audience_segments AS aseg
ON ap.audience_segment_id = aseg.audience_segment_id
WHERE (segment_name LIKE '%Custom Audience%' OR segment_name LIKE '%Lookalike Audience%')
AND (ad_spend <> 0 AND conversions <> 0)
GROUP BY segment_name;