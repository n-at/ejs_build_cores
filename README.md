# Build cores for EmulatorJS

Build image:

```sh
docker image build -t ejs-build-cores .
```

Build cores:

```sh
docker run --rm -v $(pwd):/build ejs-build-cores
```
