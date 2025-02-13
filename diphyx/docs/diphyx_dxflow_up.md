## diphyx dxflow up

Start the dxflow core and extension services

### Synopsis

Start the dxflow core and extension services using the provided options

```
diphyx dxflow up [flags]
```

### Options

```
  -v, --volume string                  volume (default "AUTO")
  -s, --secret string                  secret (default "AUTO")
  -e, --extensions string              comma separated list of extensions (default "proxy,storage,sync,terminal,orchestrator")
  -N, --no-download                    skip downloading the images and use the existing ones
  -U, --compute-unit string            specify the compute unit to connect or create a new one (default "AUTO")
  -P, --compute-unit-protocol string   specify the protocol of the new compute unit (default "AUTO")
  -I, --compute-unit-ip string         specify the IP address of the new compute unit (default "AUTO")
  -h, --help                           help for up
```

### Options inherited from parent commands

```
      --no-color   disable color output
```

### SEE ALSO

* [diphyx dxflow](diphyx_dxflow.md)	 - dxflow command line interface

