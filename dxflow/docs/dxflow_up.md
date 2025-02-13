## dxflow up

Start the dxflow core and extension services

### Synopsis

Start the dxflow core and extension services using the provided options

```
dxflow up [flags]
```

### Options

```
  -v, --volume string       volume (default "AUTO")
  -s, --secret string       secret (default "AUTO")
  -e, --extensions string   comma separated list of extensions (default "proxy,storage,sync,terminal,orchestrator")
  -N, --no-download         skip downloading the images and use the existing ones
  -h, --help                help for up
```

### Options inherited from parent commands

```
      --no-color   disable color output
```

### SEE ALSO

* [dxflow](dxflow.md)	 - dxflow command line interface

