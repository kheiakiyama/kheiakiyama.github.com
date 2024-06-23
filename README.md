# kheiakiyama.github.com
-------
<a href="https://github.com/kheiakiyama/kheiakiyama.github.com/actions"><img alt="kheiakiyama.github.com status" src="https://github.com/kheiakiyama/kheiakiyama.github.com/actions/workflows/deploy.yml/badge.svg"></a>


## Prerequisites
- hugo

## develop
- Check Hugo official page
https://gohugo.io/getting-started/quick-start/

```
# build and launch local server
hugo server -D
# build
hugo -D
```

## deploy setting for blob

```
az ad sp create-for-rbac --years 100 --sdk-auth true --scopes {RESOURCE_GROUP_ID}
# put result to github secret as `AZURE_CREDENTIALS`
az role assignment create --role "Storage Blob Data Owner" --assignee-object-id {OBJECT_ID}
```
