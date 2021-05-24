# sample

This is a sample project, to present how to deploy sample package

## Usage (For developer who will use this library)

```bash
npm install @dgkim/sample
```

```javascript
const sample = require('@dgkim/sample');

// invoke hello API
sample.hello();
```

## Publish (For maintainers)

- Set dgkim Repository as repository (Only once)

```bash
npm config set @dgkim:registry https://npm.deokgon.kim
```

- Login to dgkim Repository

```bash
npm login --registry https://npm.deokgon.kim
```

- Publish package to dgkim Repository

```bash
npm publish
```

or explicitly specify registry

```bash
npm publish --registry https://npm.deokgon.kim
```

## To remove package from dgkim Repository

```bash
npm unpublish @dgkim/sample@1.0.0
```