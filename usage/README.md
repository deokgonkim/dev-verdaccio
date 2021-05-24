# Usage

In order to use NPM repository, you should set registry setting in your environment. [.npmrc](~/.npmrc)

## (PREFERED) To use @dgkim packages from dgkim Repository

Only packages prefixed '@dgkim' will be downloaded from dgkim Repository.
Other packages like axios will be downloaded from central repository.

```bash
npm config set @dgkim:registry https://npm.deokgon.kim
```

- .npmrc content

```
@dgkim:registry=https://npm.deokgon.kim
```

## (ALTERNATIVE) To use dgkim Repository only

All the dependencies are downloaded from dgkim Repository

```bash
npm config set registry https://npm.deokgon.kim
```

- .npmrc content

```
registry=https://npm.deokgon.kim
```

## Login

To download or upload package, you should login via npm command

```bash
npm login --registry=https://npm.deokgon.kim
```

- .npmrc content (do not edit manually, unless you know what you are doing)

```
//npm.deokgon.kim/:_authToken="1fHgWFHluBlGnDj7Qh/Lig=="
```

## Usage sample

```bash
npm install @dgkim/sample
```

```javascript
const sample = require('@dgkim/sample');

// invoke hello API
sample.hello();
```
