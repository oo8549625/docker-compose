curl -X POST "localhost:9200/test/_doc/?pretty" -H 'Content-Type: application/json' -d' { "@timestamp": "2024-03-16T16:00:00", "message": "GET /search HTTP/1.1 200 1070000", "user": { "id": "kimchy" } } '
curl -X POST "localhost:9200/test/_doc/?pretty" -H 'Content-Type: application/json' -d' { "@timestamp": "2024-03-16T16:50:00", "message": "GET /search HTTP/1.1 200 1070000", "user": { "id": "kimchy" } } '