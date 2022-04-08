```shell
psql "sslmode=require host=localhost user=postgres port=5432"

```

```shell
psql "sslmode=verify-ca sslrootcert=root.crt host=localhost user=postgres port=5432"
```