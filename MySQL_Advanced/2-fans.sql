-- Write a SQL script that ranks country origins of bands,
SELECT origin, SUM(fans) AS nb_fans
FROM metal_bands
WHERE origin IN ('USA', 'Sweden', 'Finland', 'United Kingdom', 'Germany', 'Norway', 'Canada', 'The Netherlands', 'Italy')
GROUP BY origin
ORDER BY nb_fans DESC;
  