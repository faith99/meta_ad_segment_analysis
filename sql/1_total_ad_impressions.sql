SELECT SUM(impressions)
FROM ad_performance AS ap
JOIN audience_segments AS aseg
ON ap.audience_segment_id = aseg.audience_segment_id
WHERE ap.date BETWEEN '2024-10-01' AND '2024-10-31'
AND segment_name LIKE 'Custom Audience%';