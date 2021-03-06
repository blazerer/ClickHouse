#!/usr/bin/env bash
set -e

echo -ne '\\tHello\t123\t\\N\n\\N\t\t2000-01-01 00:00:00\n' | clickhouse-local --input-format=TabSeparated --output-format=TabSeparated --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne 'Hello,123,\\N\n\\N,0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=TabSeparated --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '"\\Hello",123,\\N\n"\\N",0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=TabSeparated --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '{"s" : null, "x" : 123}, {"s" : "\N", "t":"2000-01-01 00:00:00"}' | clickhouse-local --input-format=JSONEachRow --output-format=TabSeparated --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo "(NULL, 111, '2000-01-01 00:00:00'), ('\N', NULL, NULL), ('a\Nb', NULL, NULL)" | clickhouse-local --input-format=Values --output-format=TabSeparated --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null

echo -ne '\\tHello\t123\t\\N\n\\N\t\t2000-01-01 00:00:00\n' | clickhouse-local --input-format=TabSeparated --output-format=CSV --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne 'Hello,123,\\N\n\\N,0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=CSV --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '"\\Hello",123,\\N\n"\\N",0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=CSV --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '{"s" : null, "x" : 123}, {"s" : "\N", "t":"2000-01-01 00:00:00"}' | clickhouse-local --input-format=JSONEachRow --output-format=CSV --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo "(NULL, 111, '2000-01-01 00:00:00'), ('\N', NULL, NULL), ('a\Nb', NULL, NULL)" | clickhouse-local --input-format=Values --output-format=CSV --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null

echo -ne '\\tHello\t123\t\\N\n\\N\t\t2000-01-01 00:00:00\n' | clickhouse-local --input-format=TabSeparated --output-format=JSONEachRow --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne 'Hello,123,\\N\n\\N,0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=JSONEachRow --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '"\\Hello",123,\\N\n"\\N",0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=JSONEachRow --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '{"s" : null, "x" : 123}, {"s" : "\N", "t":"2000-01-01 00:00:00"}' | clickhouse-local --input-format=JSONEachRow --output-format=JSONEachRow --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo "(NULL, 111, '2000-01-01 00:00:00'), ('\N', NULL, NULL), ('a\Nb', NULL, NULL)" | clickhouse-local --input-format=Values --output-format=JSONEachRow --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null

echo -ne '\\tHello\t123\t\\N\n\\N\t\t2000-01-01 00:00:00\n' | clickhouse-local --input-format=TabSeparated --output-format=Values --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne 'Hello,123,\\N\n\\N,0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=Values --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '"\\Hello",123,\\N\n"\\N",0,"2000-01-01 00:00:00"' | clickhouse-local --input-format=CSV --output-format=Values --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo -ne '{"s" : null, "x" : 123}, {"s" : "\N", "t":"2000-01-01 00:00:00"}' | clickhouse-local --input-format=JSONEachRow --output-format=Values --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
echo "(NULL, 111, '2000-01-01 00:00:00'), ('\N', NULL, NULL), ('a\Nb', NULL, NULL)" | clickhouse-local --input-format=Values --output-format=Values --structure='s Nullable(String), x Nullable(UInt64), t Nullable(DateTime)' --query="SELECT * FROM table" 2>/dev/null
