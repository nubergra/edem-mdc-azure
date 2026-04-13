import json
import time
import datetime

print("Starting job...", flush=True)

time.sleep(2)

data = [
    {"id": 1, "name": "alice", "score": 10},
    {"id": 2, "name": "bob", "score": 15}
]

print(f"Loaded {len(data)} records", flush=True)

for r in data:
    r["name"] = r["name"].upper()
    r["score"] += 5
    r["processed_at"] = datetime.datetime.utcnow().isoformat()

time.sleep(2)

print("Result:")
print(json.dumps(data, indent=2), flush=True)

print("Job completed successfully!", flush=True)