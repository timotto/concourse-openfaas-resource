# Concourse OpenFaaS resource

[Concourse](https://concourse-ci.org) resource to publish functions using a manifest to [OpenFaaS](https://github.com/openfaas).

Docker image at [https://hub.docker.com/r/timotto/concourse-openfaas-resource/](https://hub.docker.com/r/timotto/concourse-openfaas-resource/)

Source code at [https://github.com/timotto/concourse-openfaas-resource](https://github.com/timotto/concourse-openfaas-resource)

## Installing

Add the resource type to your pipeline:

```yaml
resource_types:
- name: openfaas
  type: docker-image
  source:
    repository: timotto/concourse-openfaas-resource
```

## Source Configuration

* `gateway`: *Required.* URL of the OpenFaaS gateway.
* `username`: *Optional.* Username for authentication with the gateway.
* `password`: *Optional.* Password for authentication with the gateway.

## Behavior

### `check`: Not implemented

### `in`: Not implemented

### `out`: Deploy a manifest

Deploys the given manifest to the OpenFaaS Gateway

#### Parameters
* `manifest`: *Required.* [Manifest](https://docs.openfaas.com/cli/templates/) filename.
