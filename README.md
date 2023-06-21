# application action

This action creates or updates an application.

## Inputs

## `control-tower`
**Required** Control Tower address, e.g. api.foo.example.avassa.net

## `username`
**Required** Control Tower user, allowed to push applications

## `password`
**Required** Control Tower password

## `application-name`
**Required** Application name

## `specification`
**Required** Path to the application specification

## Outputs

None


## Example usage

```
uses: /Avassa-Systems/application-action@v1
  with:
    control-tower: ${{secrets.CONTROL_TOWER}}
    username: ${{secrets.CT_USER}}
    password: ${{secrets.CT_PASSWORD}}
    application-name: theater-room-manager
    specification: theater-room-manager.app.yml
```
