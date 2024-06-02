# Postgresql

- In this repo, we use docker-compose to run two containers: 
    - PostgreSQL + python3 + jupyter notebook
    - Adminer (DB UI)

# Set Env
```bash
$docker-compose up -d
```

# Get into postgresql container
```bash
# method 1:
$docker exec -it db_postgres /bin/bash

# method 2:
$./start.sh
```

# Tips
- You can use **tutorial.sh** to CURD your table.
- In db_postgres container, You can use **start-jupyer.sh** to set your jupyter environment, and start jupyter notebook server: "http://localhost:8888/"
- Adminer (DB UI) is build-in: "http://localhost:8080/"