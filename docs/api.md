
---

## 4️⃣ `docs/api.md` — API / commandes `curl`

```markdown
# API

Voici quelques exemples d’utilisation de l’API avec `curl`.

## Créer une tâche

```bash
curl -s -X POST http://127.0.0.1:8000/tasks \
  -H "Content-Type: application/json" \
  -d '{"title":"Écrire tests API","description":"Ajouter des assertions sur /tasks"}' | jq
