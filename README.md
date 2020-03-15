# kheiakiyama.github.com
-------
<a href="https://github.com/kheiakiyama/kheiakiyama.github.com/actions"><img alt="kheiakiyama.github.com status" src="https://github.com/kheiakiyama/kheiakiyama.github.com/workflows/release/badge.svg"></a>


## debug

```
docker-compose build
docker-compose up
# open http://localhost:8001
```

## deploy setting

```
az ad sp create-for-rbac --years 100 --sdk-auth true --scopes {RESOURCE_GROUP_ID}
# put result to github secret as `AZURE_CREDENTIALS`
az role assignment create --role "Storage Blob Data Owner" --assignee-object-id {OBJECT_ID}
```

## resumecard
-------
This design is powered by [resumecard](https://ddbullfrog.github.io/resumecard)
