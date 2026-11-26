# REST API & JSON Parsing Summary

## 1. What is a REST API?
A REST API (Representational State Transfer Application Programming Interface) is a web architecture standard that allows software applications to communicate over HTTP using standard methods like GET, POST, PUT, and DELETE. Clients send requests to specific resource URLs (endpoints), and the server returns structured data—typically in JSON format—without exposing its internal database.

## 2. HTTP Status Codes Observed
- **200 OK:** The request succeeded and the server returned the requested JSON resource (observed when querying `/users/namankr0077-ops` and `/posts`).
- **404 Not Found:** The server could not locate the requested endpoint or user resource (for example, requesting a nonexistent GitHub username or invalid API path).

## 3. jq Filter Explanation
Command used:
`cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'`

- **`{ ... }`:** Constructs a new JSON object containing only the selected fields.
- **`name:.name`:** Creates the key `"name"` mapped to the `.name` field from the response.
- **`repos:.public_repos`:** Extracts `.public_repos` and renames the key to `"repos"`.
- **`followers:.followers`:** Extracts the `.followers` count under `"followers"`.
- **`joined:.created_at`:** Extracts the `.created_at` timestamp and renames the key to `"joined"`.
