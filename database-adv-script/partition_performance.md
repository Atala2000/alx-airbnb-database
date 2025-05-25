Include:

Querying performance on booking_partitioned

Compare with original booking table using EXPLAIN

Using partitioning by year helped speed up range queries on start_date significantly, reducing scan size from N rows to the size of a single partition.