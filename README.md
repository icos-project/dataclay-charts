# dataclay

![Version: 0.1.3](https://img.shields.io/badge/Version-0.1.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 3.1.0](https://img.shields.io/badge/AppVersion-3.1.0-informational?style=flat-square)

The chart for deploying dataClay in the ICOS controller.

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Alex Barcelo | <alex.barcelo@bsc.es> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| backends.affinity | object | `{}` |  |
| backends.nodeSelector | object | `{}` |  |
| backends.podAnnotations | object | `{}` |  |
| backends.podSecurityContext | object | `{}` |  |
| backends.replicaCount | int | `2` |  |
| backends.resources | object | `{}` |  |
| backends.securityContext | object | `{}` |  |
| backends.service.port | int | `6867` |  |
| backends.service.type | string | `"ClusterIP"` |  |
| backends.tolerations | list | `[]` |  |
| dataclayCredentials.dataset | string | `"testdata"` | Default dataset to use for storing objects (other can be defined on runtime) |
| dataclayCredentials.password | string | `"s3cret"` | Password for basic auth to dataClay services |
| dataclayCredentials.username | string | `"testuser"` | User for basic auth to dataClay services |
| globalAffinity | object | `{}` |  |
| globalNodeSelector | object | `{}` |  |
| globalPodAnnotations | object | `{}` |  |
| globalPodSecurityContext | object | `{}` |  |
| globalSecurityContext | object | `{}` |  |
| globalTolerations | list | `[]` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"harbor.res.eng.it/icos-private/data-management/dataclay-images/main"` | Repository with the dataClay image. Consider the public repo at Docker Hub alexbarcelo/dataclay-icos if you need to perform some development or testing locally (e.g. on minikube, in your laptop). |
| image.tag | string | `"latest"` |  |
| imagePullSecrets | list | `[]` |  |
| mds.affinity | object | `{}` |  |
| mds.nodeSelector | object | `{}` |  |
| mds.podAnnotations | object | `{}` |  |
| mds.podSecurityContext | object | `{}` |  |
| mds.replicaCount | int | `1` |  |
| mds.resources | object | `{}` |  |
| mds.securityContext | object | `{}` |  |
| mds.service.port | int | `16587` |  |
| mds.service.type | string | `"ClusterIP"` |  |
| mds.tolerations | list | `[]` |  |
| model_bootstrap.enabled | bool | `true` | Bootstrap the dataClay service with one or more source code data models |
| model_bootstrap.sources[0].base_path | string | `"/home/bentoml/bento/src"` | Path to the source code in the repository |
| model_bootstrap.sources[0].model_folder | string | `"model"` | Name of the Python package with the model (must be a folder within the base_path) |
| model_bootstrap.sources[0].name | string | `"intelligence-model"` | Descriptive name |
| model_bootstrap.sources[0].pullPolicy | string | `"IfNotPresent"` |  |
| model_bootstrap.sources[0].repository | string | `"harbor.res.eng.it/icos-private/ia/coordination"` |  |
| model_bootstrap.sources[0].tag | string | `"v1.3.1"` |  |
| nameOverride | string | `""` |  |
| persistence.accessMode | string | `"ReadWriteOnce"` |  |
| persistence.enabled | bool | `true` | By default, allow dataClay backends to have some kind of persistence |
| persistence.size | string | `"10Gi"` | Required storage will depend on the datasets used by the applications |
| persistence.storageClass | string | `""` |  |
| proxy.affinity | object | `{}` |  |
| proxy.enabled | bool | `true` |  |
| proxy.nodeSelector | object | `{}` |  |
| proxy.podAnnotations | object | `{}` |  |
| proxy.podSecurityContext | object | `{}` |  |
| proxy.replicaCount | int | `1` |  |
| proxy.resources | object | `{}` |  |
| proxy.securityContext | object | `{}` |  |
| proxy.service.port | int | `8676` |  |
| proxy.service.type | string | `"ClusterIP"` |  |
| proxy.tolerations | list | `[]` |  |
| redis.image.pullPolicy | string | `"IfNotPresent"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"7.2-alpine"` |  |
| redis.persistence.accessMode | string | `"ReadWriteOnce"` |  |
| redis.persistence.enabled | bool | `true` |  |
| redis.persistence.size | string | `"1Gi"` |  |
| redis.persistence.storageClass | string | `""` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the name template |

# Legal
The dataClay Charts component is released under the Creative Commons Zero v1.0 Universal license.
Copyright © 2022-2024 BSC. All rights reserved.

🇪🇺 This work has received funding from the European Union's HORIZON research and innovation programme under grant agreement No. 101070177.

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.13.1](https://github.com/norwoodj/helm-docs/releases/v1.13.1)
