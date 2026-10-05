-- =====================================================
-- 01_nulls_and_blanks.sql      -- the file name, repeated
-- What this file fixes : blank values that are not real NULLs
-- Problem numbers      : 1, 2 and 3 from the Data Quality Log
-- Written by           : Sahwa Thahseem
-- =====================================================
-- the SQL starts here

DROP VIEW IF EXISTS v_deliveries_clean;
CREATE VIEW v_deliveries_clean AS
SELECT *,
       NULLIF(TRIM(bowler_type),'') AS bowler_type_clean
FROM deliveries;


DROP VIEW IF EXISTS v_players_clean;
CREATE VIEW v_players_clean AS
SELECT *,
       NULLIF(TRIM(field_pos), '') AS field_pos_clean
FROM players;


DROP VIEW IF EXISTS v_matches_pom;
CREATE VIEW v_matches_pom AS
SELECT *,
       NULLIF(TRIM(player_of_match), '') AS pom_clean
FROM matches;