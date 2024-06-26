CREATE TABLE actors_history_scd (
    actor VARCHAR,
    quality_class VARCHAR,
    is_active BOOLEAN,
    start_date INTEGER,
    end_date INTEGER,
    current_year INTEGER --for incremental loading
)
WITH
    (
        format = 'PARQUET',
        partitioning = ARRAY['current_year']
    )