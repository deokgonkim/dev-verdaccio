# dev-verdaccio

Private NPM Repository (with LDAP authentication integration)

## Usage Examples

- For application developer (who will download packages from repository) See [Usage](usage/README.md)

- For library developer (who will upload packages to repository) See [Sample](sample/README.md)

## About Infrastructure creation

### Cloudformation

* EFS Volume
* ECS Fargate Task Definition
* ECS Service Definition
* ELB

### Build and upload

```bash
cd aws/ecr
./push-image.sh
```

### Create

```bash
cd aws/cloudformation/test
./cloudformation.sh
```
