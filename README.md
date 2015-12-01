serverkit-go
================================================================================

[Serverkit](https://github.com/serverkit/serverkit) plug-in for Go package.


Installation
--------------------------------------------------------------------------------


Usage
--------------------------------------------------------------------------------

### Install a Go package

Use `go_package` resource in your serverkit recipe:

```yaml
resources:
  - type: go_package
    path: golang.org/x/tools/cmd/godoc
```


Resource
--------------------------------------------------------------------------------

### go_package

Install specified Go package.

#### Attributes

- path - Path of the package (required)


LICENSE
--------------------------------------------------------------------------------

&copy; 2015 Tomohiro TAIRA.

This project is licensed under the MIT license. See [LICENSE](LICENSE) for details.
