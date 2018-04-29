Docker image to use with:

https://github.com/ToxicFrog/Ligaturizer

```shell
docker run --rm \
    -v $(PWD)/input-fonts:/usr/src/app/input-fonts \
    -v $(PWD)/output-fonts:/usr/src/app/output-fonts \
    ligaturizer:latest
```