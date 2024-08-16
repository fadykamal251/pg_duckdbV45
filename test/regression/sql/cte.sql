CREATE TABLE t(a INT);

-- Not supported by DuckDB, so we shouldn't send it there
WITH modifying_cte AS (
    INSERT INTO t VALUES (1) RETURNING *
) select * from modifying_cte;

DROP TABLE t;