#!/bin/bash
_nombreProject=$1
#Package-lock.json
packagelock='
{
  "name": "angular7-crud",
  "version": "0.0.0",
  "lockfileVersion": 1,
  "requires": true,
  "dependencies": {
    "@angular-devkit/architect": {
      "version": "0.10.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/architect/-/architect-0.10.7.tgz",
      "integrity": "sha512-S49LSslNRxIflHzrIrEgK7mGQ7HzETr/FU0fyTbB0vubcmfzMoYTsgYdK7SUz583lovc+UvASoUAhPJI3e35ng==",
      "dev": true,
      "requires": {
        "@angular-devkit/core": "7.0.7",
        "rxjs": "6.3.3"
      }
    },
    "@angular-devkit/build-angular": {
      "version": "0.10.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/build-angular/-/build-angular-0.10.7.tgz",
      "integrity": "sha512-wjhlMWWkGSSkdwd9elKfeeEgyig/eZGyF2wY5kZmWPBdeK/GfdBLyO15qh4ppRYI2SjyRvzl0tWDOA2Y0hKL0w==",
      "dev": true,
      "requires": {
        "@angular-devkit/architect": "0.10.7",
        "@angular-devkit/build-optimizer": "0.10.7",
        "@angular-devkit/build-webpack": "0.10.7",
        "@angular-devkit/core": "7.0.7",
        "@ngtools/webpack": "7.0.7",
        "ajv": "6.5.3",
        "autoprefixer": "9.1.5",
        "circular-dependency-plugin": "5.0.2",
        "clean-css": "4.2.1",
        "copy-webpack-plugin": "4.5.4",
        "file-loader": "2.0.0",
        "glob": "7.1.3",
        "istanbul": "0.4.5",
        "istanbul-instrumenter-loader": "3.0.1",
        "karma-source-map-support": "1.3.0",
        "less": "3.8.1",
        "less-loader": "4.1.0",
        "license-webpack-plugin": "2.0.2",
        "loader-utils": "1.1.0",
        "mini-css-extract-plugin": "0.4.3",
        "minimatch": "3.0.4",
        "node-sass": "4.9.3",
        "opn": "5.3.0",
        "parse5": "4.0.0",
        "portfinder": "1.0.17",
        "postcss": "7.0.5",
        "postcss-import": "12.0.0",
        "postcss-loader": "3.0.0",
        "raw-loader": "0.5.1",
        "rxjs": "6.3.3",
        "sass-loader": "7.1.0",
        "semver": "5.5.1",
        "source-map-loader": "0.2.4",
        "source-map-support": "0.5.9",
        "speed-measure-webpack-plugin": "^1.2.3",
        "stats-webpack-plugin": "0.7.0",
        "style-loader": "0.23.0",
        "stylus": "0.54.5",
        "stylus-loader": "3.0.2",
        "terser-webpack-plugin": "1.1.0",
        "tree-kill": "1.2.0",
        "webpack": "4.19.1",
        "webpack-dev-middleware": "3.3.0",
        "webpack-dev-server": "3.1.8",
        "webpack-merge": "4.1.4",
        "webpack-sources": "1.2.0",
        "webpack-subresource-integrity": "1.1.0-rc.6"
      },
      "dependencies": {
        "glob": {
          "version": "7.1.3",
          "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.3.tgz",
          "integrity": "sha512-vcfuiIxogLV4DlGBHIUOwI0IbrJ8HWPc4MU7HzviGeNho/UJDfi6B5p3sHeWIQ0KGIU0Jpxi5ZHxemQfLkkAwQ==",
          "dev": true,
          "requires": {
            "fs.realpath": "^1.0.0",
            "inflight": "^1.0.4",
            "inherits": "2",
            "minimatch": "^3.0.4",
            "once": "^1.3.0",
            "path-is-absolute": "^1.0.0"
          }
        },
        "semver": {
          "version": "5.5.1",
          "resolved": "https://registry.npmjs.org/semver/-/semver-5.5.1.tgz",
          "integrity": "sha512-PqpAxfrEhlSUWge8dwIp4tZnQ25DIOthpiaHNIthsjEFQD6EvqUKUDM7L8O2rShkFccYo1VjJR0coWfNkCubRw==",
          "dev": true
        }
      }
    },
    "@angular-devkit/build-optimizer": {
      "version": "0.10.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/build-optimizer/-/build-optimizer-0.10.7.tgz",
      "integrity": "sha512-Ztj2U21B8zRO2csQS8mLv/+WKPPLePzaqJDk53Ou2r2HV+kh9GzYvgu1UFeGf/RyEeJi+9KnJGG2wPaeNqDNxg==",
      "dev": true,
      "requires": {
        "loader-utils": "1.1.0",
        "source-map": "0.5.6",
        "typescript": "3.1.6",
        "webpack-sources": "1.2.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.5.6",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.5.6.tgz",
          "integrity": "sha1-dc449SvwczxafwwRjYEzSiu19BI=",
          "dev": true
        }
      }
    },
    "@angular-devkit/build-webpack": {
      "version": "0.10.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/build-webpack/-/build-webpack-0.10.7.tgz",
      "integrity": "sha512-sUzgIhm5yWHvRo3GF6mc1J58PCuY5nJDF2vlE8Jhlwkq+/VbJ/NVfTDYRQCeqI1jLcdMaVrVQXnXAWc4KpFNig==",
      "dev": true,
      "requires": {
        "@angular-devkit/architect": "0.10.7",
        "@angular-devkit/core": "7.0.7",
        "rxjs": "6.3.3"
      }
    },
    "@angular-devkit/core": {
      "version": "7.0.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/core/-/core-7.0.7.tgz",
      "integrity": "sha512-M8tTT9r3nUtWI3YyiyynHIQn+lQQgeKkxVZ+rdxvyvgE3U9+wn0yep5HkFLQETTuJetu9ARRRD94sD2XL3F/3A==",
      "dev": true,
      "requires": {
        "ajv": "6.5.3",
        "chokidar": "2.0.4",
        "fast-json-stable-stringify": "2.0.0",
        "rxjs": "6.3.3",
        "source-map": "0.7.3"
      },
      "dependencies": {
        "fast-json-stable-stringify": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz",
          "integrity": "sha1-1RQsDK7msRifh9OnYREGT4bIu/I=",
          "dev": true
        },
        "source-map": {
          "version": "0.7.3",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.7.3.tgz",
          "integrity": "sha512-CkCj6giN3S+n9qrYiBTX5gystlENnRW5jZeNLHpe6aue+SrHcG5VYwujhW9s4dY31mEGsxBDrHR6oI69fTXsaQ==",
          "dev": true
        }
      }
    },
    "@angular-devkit/schematics": {
      "version": "7.0.7",
      "resolved": "https://registry.npmjs.org/@angular-devkit/schematics/-/schematics-7.0.7.tgz",
      "integrity": "sha512-E6GHu4257PvymRjFDtpGc0ykdcIcpFIfXr73lq8qxo1SBkqH7Y1/C670elDg9nrCte8PhnhJVNiwNgNS/ZTAzQ==",
      "dev": true,
      "requires": {
        "@angular-devkit/core": "7.0.7",
        "rxjs": "6.3.3"
      }
    },
    "@angular/animations": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/animations/-/animations-7.0.4.tgz",
      "integrity": "sha512-QfFikT0FzYNMjdVg0LWTBijdu9JDJyzejnhCFlXxv+KR4zolpRK98/rU7CFW1Fg2jjL3/yL9PT1sf5I0fTJZYA==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/cli": {
      "version": "7.0.7",
      "resolved": "https://registry.npmjs.org/@angular/cli/-/cli-7.0.7.tgz",
      "integrity": "sha512-SV3CcHa2oxDKwhOvHqZtysVRRT9pkO04Kv0Z1HEhlgIwqHyIU201R9/mo1gYmBHTNGxowKdvsGLsHQNpsHmQJw==",
      "dev": true,
      "requires": {
        "@angular-devkit/architect": "0.10.7",
        "@angular-devkit/core": "7.0.7",
        "@angular-devkit/schematics": "7.0.7",
        "@schematics/angular": "7.0.7",
        "@schematics/update": "0.10.7",
        "inquirer": "6.2.0",
        "opn": "5.3.0",
        "rxjs": "6.3.3",
        "semver": "5.5.1",
        "symbol-observable": "1.2.0"
      },
      "dependencies": {
        "semver": {
          "version": "5.5.1",
          "resolved": "https://registry.npmjs.org/semver/-/semver-5.5.1.tgz",
          "integrity": "sha512-PqpAxfrEhlSUWge8dwIp4tZnQ25DIOthpiaHNIthsjEFQD6EvqUKUDM7L8O2rShkFccYo1VjJR0coWfNkCubRw==",
          "dev": true
        }
      }
    },
    "@angular/common": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/common/-/common-7.0.4.tgz",
      "integrity": "sha512-akQojdqY/RBlItkDWAPI3k0Llk1wnbAp+f47yySi3cgQz9SaZ1/RLNWZV84I/cKrksb4ehorT/lTqRBojsAD1A==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/compiler": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/compiler/-/compiler-7.0.4.tgz",
      "integrity": "sha512-ExDhH1cJkuJkUsgNRZyZBse0a7wWkQyG5O8HONi3Rzig9dalFEuve9jD04zfA1Jx1GTXhovqtGnF72x4kw0V8Q==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/compiler-cli": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/compiler-cli/-/compiler-cli-7.0.4.tgz",
      "integrity": "sha512-kvhWt6OTb1Uduns9Vm+Dwd/UUBNSEU6Jgu+QOPeHr7lg+4NTyr9uQLU0DtfBP0ljOlds8esmfii5IIFTeUQw1Q==",
      "dev": true,
      "requires": {
        "canonical-path": "1.0.0",
        "chokidar": "^1.4.2",
        "convert-source-map": "^1.5.1",
        "dependency-graph": "^0.7.2",
        "magic-string": "^0.25.0",
        "minimist": "^1.2.0",
        "reflect-metadata": "^0.1.2",
        "shelljs": "^0.8.1",
        "source-map": "^0.6.1",
        "tslib": "^1.9.0",
        "yargs": "9.0.1"
      },
      "dependencies": {
        "ansi-regex": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-3.0.0.tgz",
          "integrity": "sha1-7QMXwyIGT3lGbAKWa922Bas32Zg=",
          "dev": true
        },
        "anymatch": {
          "version": "1.3.2",
          "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-1.3.2.tgz",
          "integrity": "sha512-0XNayC8lTHQ2OI8aljNCN3sSx6hsr/1+rlcDAotXJR7C1oZZHCNsfpbKwMjRA3Uqb5tF1Rae2oloTr4xpq+WjA==",
          "dev": true,
          "requires": {
            "micromatch": "^2.1.5",
            "normalize-path": "^2.0.0"
          }
        },
        "arr-diff": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/arr-diff/-/arr-diff-2.0.0.tgz",
          "integrity": "sha1-jzuCf5Vai9ZpaX5KQlasPOrjVs8=",
          "dev": true,
          "requires": {
            "arr-flatten": "^1.0.1"
          }
        },
        "array-unique": {
          "version": "0.2.1",
          "resolved": "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz",
          "integrity": "sha1-odl8yvy8JiXMcPrc6zalDFiwGlM=",
          "dev": true
        },
        "braces": {
          "version": "1.8.5",
          "resolved": "https://registry.npmjs.org/braces/-/braces-1.8.5.tgz",
          "integrity": "sha1-uneWLhLf+WnWt2cR6RS3N4V79qc=",
          "dev": true,
          "requires": {
            "expand-range": "^1.8.1",
            "preserve": "^0.2.0",
            "repeat-element": "^1.1.2"
          }
        },
        "camelcase": {
          "version": "4.1.0",
          "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-4.1.0.tgz",
          "integrity": "sha1-1UVjW+HjPFQmScaRc+Xeas+uNN0=",
          "dev": true
        },
        "chokidar": {
          "version": "1.7.0",
          "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-1.7.0.tgz",
          "integrity": "sha1-eY5ol3gVHIB2tLNg5e3SjNortGg=",
          "dev": true,
          "requires": {
            "anymatch": "^1.3.0",
            "async-each": "^1.0.0",
            "fsevents": "^1.0.0",
            "glob-parent": "^2.0.0",
            "inherits": "^2.0.1",
            "is-binary-path": "^1.0.0",
            "is-glob": "^2.0.0",
            "path-is-absolute": "^1.0.0",
            "readdirp": "^2.0.0"
          }
        },
        "cross-spawn": {
          "version": "5.1.0",
          "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-5.1.0.tgz",
          "integrity": "sha1-6L0O/uWPz/b4+UUQoKVUu/ojVEk=",
          "dev": true,
          "requires": {
            "lru-cache": "^4.0.1",
            "shebang-command": "^1.2.0",
            "which": "^1.2.9"
          }
        },
        "execa": {
          "version": "0.7.0",
          "resolved": "https://registry.npmjs.org/execa/-/execa-0.7.0.tgz",
          "integrity": "sha1-lEvs00zEHuMqY6n68nrVpl/Fl3c=",
          "dev": true,
          "requires": {
            "cross-spawn": "^5.0.1",
            "get-stream": "^3.0.0",
            "is-stream": "^1.1.0",
            "npm-run-path": "^2.0.0",
            "p-finally": "^1.0.0",
            "signal-exit": "^3.0.0",
            "strip-eof": "^1.0.0"
          }
        },
        "expand-brackets": {
          "version": "0.1.5",
          "resolved": "https://registry.npmjs.org/expand-brackets/-/expand-brackets-0.1.5.tgz",
          "integrity": "sha1-3wcoTjQqgHzXM6xa9yQR5YHRF3s=",
          "dev": true,
          "requires": {
            "is-posix-bracket": "^0.1.0"
          }
        },
        "extglob": {
          "version": "0.3.2",
          "resolved": "https://registry.npmjs.org/extglob/-/extglob-0.3.2.tgz",
          "integrity": "sha1-Lhj/PS9JqydlzskCPwEdqo2DSaE=",
          "dev": true,
          "requires": {
            "is-extglob": "^1.0.0"
          }
        },
        "get-stream": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/get-stream/-/get-stream-3.0.0.tgz",
          "integrity": "sha1-jpQ9E1jcN1VQVOy+LtsFqhdO3hQ=",
          "dev": true
        },
        "glob-parent": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz",
          "integrity": "sha1-gTg9ctsFT8zPUzbaqQLxgvbtuyg=",
          "dev": true,
          "requires": {
            "is-glob": "^2.0.0"
          }
        },
        "invert-kv": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/invert-kv/-/invert-kv-1.0.0.tgz",
          "integrity": "sha1-EEqOSqym09jNFXqO+L+rLXo//bY=",
          "dev": true
        },
        "is-extglob": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz",
          "integrity": "sha1-rEaBd8SUNAWgkvyPKXYMb/xiBsA=",
          "dev": true
        },
        "is-fullwidth-code-point": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz",
          "integrity": "sha1-o7MKXE8ZkYMWeqq5O+764937ZU8=",
          "dev": true
        },
        "is-glob": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz",
          "integrity": "sha1-0Jb5JqPe1WAPP9/ZEZjLCIjC2GM=",
          "dev": true,
          "requires": {
            "is-extglob": "^1.0.0"
          }
        },
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        },
        "lcid": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz",
          "integrity": "sha1-MIrMr6C8SDo4Z7S28rlQYlHRuDU=",
          "dev": true,
          "requires": {
            "invert-kv": "^1.0.0"
          }
        },
        "load-json-file": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-2.0.0.tgz",
          "integrity": "sha1-eUfkIUmvgNaWy/eXvKq8/h/inKg=",
          "dev": true,
          "requires": {
            "graceful-fs": "^4.1.2",
            "parse-json": "^2.2.0",
            "pify": "^2.0.0",
            "strip-bom": "^3.0.0"
          }
        },
        "mem": {
          "version": "1.1.0",
          "resolved": "https://registry.npmjs.org/mem/-/mem-1.1.0.tgz",
          "integrity": "sha1-Xt1StIXKHZAP5kiVUFOZoN+kX3Y=",
          "dev": true,
          "requires": {
            "mimic-fn": "^1.0.0"
          }
        },
        "micromatch": {
          "version": "2.3.11",
          "resolved": "https://registry.npmjs.org/micromatch/-/micromatch-2.3.11.tgz",
          "integrity": "sha1-hmd8l9FyCzY0MdBNDRUpO9OMFWU=",
          "dev": true,
          "requires": {
            "arr-diff": "^2.0.0",
            "array-unique": "^0.2.1",
            "braces": "^1.8.2",
            "expand-brackets": "^0.1.4",
            "extglob": "^0.3.1",
            "filename-regex": "^2.0.0",
            "is-extglob": "^1.0.0",
            "is-glob": "^2.0.1",
            "kind-of": "^3.0.2",
            "normalize-path": "^2.0.1",
            "object.omit": "^2.0.0",
            "parse-glob": "^3.0.4",
            "regex-cache": "^0.4.2"
          }
        },
        "mimic-fn": {
          "version": "1.2.0",
          "resolved": "https://registry.npmjs.org/mimic-fn/-/mimic-fn-1.2.0.tgz",
          "integrity": "sha512-jf84uxzwiuiIVKiOLpfYk7N46TSy8ubTonmneY9vrpHNAnp0QBt2BxWV9dO3/j+BoVAb+a5G6YDPW3M5HOdMWQ==",
          "dev": true
        },
        "os-locale": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/os-locale/-/os-locale-2.1.0.tgz",
          "integrity": "sha512-3sslG3zJbEYcaC4YVAvDorjGxc7tv6KVATnLPZONiljsUncvihe9BQoVCEs0RZ1kmf4Hk9OBqlZfJZWI4GanKA==",
          "dev": true,
          "requires": {
            "execa": "^0.7.0",
            "lcid": "^1.0.0",
            "mem": "^1.1.0"
          }
        },
        "path-type": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/path-type/-/path-type-2.0.0.tgz",
          "integrity": "sha1-8BLMuEFbcJb8LaoQVMPXI4lZTHM=",
          "dev": true,
          "requires": {
            "pify": "^2.0.0"
          }
        },
        "pify": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
          "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
          "dev": true
        },
        "read-pkg": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-2.0.0.tgz",
          "integrity": "sha1-jvHAYjxqbbDcZxPEv6xGMysjaPg=",
          "dev": true,
          "requires": {
            "load-json-file": "^2.0.0",
            "normalize-package-data": "^2.3.2",
            "path-type": "^2.0.0"
          }
        },
        "read-pkg-up": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-2.0.0.tgz",
          "integrity": "sha1-a3KoBImE4MQeeVEP1en6mbO1Sb4=",
          "dev": true,
          "requires": {
            "find-up": "^2.0.0",
            "read-pkg": "^2.0.0"
          }
        },
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        },
        "string-width": {
          "version": "2.1.1",
          "resolved": "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz",
          "integrity": "sha512-nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==",
          "dev": true,
          "requires": {
            "is-fullwidth-code-point": "^2.0.0",
            "strip-ansi": "^4.0.0"
          }
        },
        "strip-ansi": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
          "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
          "dev": true,
          "requires": {
            "ansi-regex": "^3.0.0"
          }
        },
        "strip-bom": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz",
          "integrity": "sha1-IzTBjpx1n3vdVv3vfprj1YjmjtM=",
          "dev": true
        },
        "y18n": {
          "version": "3.2.1",
          "resolved": "https://registry.npmjs.org/y18n/-/y18n-3.2.1.tgz",
          "integrity": "sha1-bRX7qITAhnnA136I53WegR4H+kE=",
          "dev": true
        },
        "yargs": {
          "version": "9.0.1",
          "resolved": "https://registry.npmjs.org/yargs/-/yargs-9.0.1.tgz",
          "integrity": "sha1-UqzCP+7Kw0BCB47njAwAf1CF20w=",
          "dev": true,
          "requires": {
            "camelcase": "^4.1.0",
            "cliui": "^3.2.0",
            "decamelize": "^1.1.1",
            "get-caller-file": "^1.0.1",
            "os-locale": "^2.0.0",
            "read-pkg-up": "^2.0.0",
            "require-directory": "^2.1.1",
            "require-main-filename": "^1.0.1",
            "set-blocking": "^2.0.0",
            "string-width": "^2.0.0",
            "which-module": "^2.0.0",
            "y18n": "^3.2.1",
            "yargs-parser": "^7.0.0"
          }
        },
        "yargs-parser": {
          "version": "7.0.0",
          "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-7.0.0.tgz",
          "integrity": "sha1-jQrELxbqVd69MyyvTEA4s+P139k=",
          "dev": true,
          "requires": {
            "camelcase": "^4.1.0"
          }
        }
      }
    },
    "@angular/core": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/core/-/core-7.0.4.tgz",
      "integrity": "sha512-17SSmCz1wQoZKnVHF/T8UkWYPpDm5kPyoc1okkTTv8ZA2EAMMuZFFnRSAxEL5i7mNB9z5CvRqF2tRx/DbgbIRA==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/forms": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/forms/-/forms-7.0.4.tgz",
      "integrity": "sha512-W3nN9n1VY9On9+9f7PDRbzJUg+mMq1bjkhWsk/b7DfaYdmlzpG+Wd6OfArob2edsqGqH1dvTM8q8aGbWiFZ7dA==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/http": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/http/-/http-7.0.4.tgz",
      "integrity": "sha512-oUGT7xS7FZYajuHq0DP6MgahacB5sJTRgxiUU4uhQ/mqV7aREODVJJgw7oHDhM7Cnyzzo0B9D0zpEljKmeCLWQ==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/language-service": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/language-service/-/language-service-7.0.4.tgz",
      "integrity": "sha512-CuJ2Ii97sNoN1HOZOLxG1lEHsQFi8K/RSB/k2suWPKzdM53ldSkKoYRac38zW/uqNABYItgvxb7w0Vi7HhxLsg==",
      "dev": true
    },
    "@angular/platform-browser": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/platform-browser/-/platform-browser-7.0.4.tgz",
      "integrity": "sha512-4brYZZgsCJk1/a6JoSwaiVWO9+/T4iyE27dAgstao1nOf/jrBNKW2HnZtkWZmCCBK0WIk15wlB0Xr87OZbjNVA==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/platform-browser-dynamic": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/platform-browser-dynamic/-/platform-browser-dynamic-7.0.4.tgz",
      "integrity": "sha512-k1I53zIg8YWhtQizLfq/tWrUUdY5vHV8pGHyt0/UTGDqat5TORd6LDFfzCSux0r3qZujCOGNi9f4/AbyV8B9lw==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@angular/router": {
      "version": "7.0.4",
      "resolved": "https://registry.npmjs.org/@angular/router/-/router-7.0.4.tgz",
      "integrity": "sha512-nt1jJsxN+JmYZ6URamMdULUpH4aHdnNVKjWtjDI0OpdZvPx7PMFD8cfc92q0tavy2KqqexcceIb4BIC965gtpA==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "@babel/code-frame": {
      "version": "7.8.3",
      "resolved": "https://registry.npmjs.org/@babel/code-frame/-/code-frame-7.8.3.tgz",
      "integrity": "sha512-a9gxpmdXtZEInkCSHUJDLHZVBgb1QS0jhss4cPP93EW7s+uC5bikET2twEF3KV+7rDblJcmNvTR7VJejqd2C2g==",
      "dev": true,
      "requires": {
        "@babel/highlight": "^7.8.3"
      }
    },
    "@babel/generator": {
      "version": "7.9.6",
      "resolved": "https://registry.npmjs.org/@babel/generator/-/generator-7.9.6.tgz",
      "integrity": "sha512-+htwWKJbH2bL72HRluF8zumBxzuX0ZZUFl3JLNyoUjM/Ho8wnVpPXM6aUz8cfKDqQ/h7zHqKt4xzJteUosckqQ==",
      "dev": true,
      "requires": {
        "@babel/types": "^7.9.6",
        "jsesc": "^2.5.1",
        "lodash": "^4.17.13",
        "source-map": "^0.5.0"
      },
      "dependencies": {
        "jsesc": {
          "version": "2.5.2",
          "resolved": "https://registry.npmjs.org/jsesc/-/jsesc-2.5.2.tgz",
          "integrity": "sha512-OYu7XEzjkCQ3C5Ps3QIZsQfNpqoJyZZA99wd9aWd05NCtC5pWOkShK2mkL6HXQR6/Cy2lbNdPlZBpuQHXE63gA==",
          "dev": true
        }
      }
    },
    "@babel/helper-function-name": {
      "version": "7.9.5",
      "resolved": "https://registry.npmjs.org/@babel/helper-function-name/-/helper-function-name-7.9.5.tgz",
      "integrity": "sha512-JVcQZeXM59Cd1qanDUxv9fgJpt3NeKUaqBqUEvfmQ+BCOKq2xUgaWZW2hr0dkbyJgezYuplEoh5knmrnS68efw==",
      "dev": true,
      "requires": {
        "@babel/helper-get-function-arity": "^7.8.3",
        "@babel/template": "^7.8.3",
        "@babel/types": "^7.9.5"
      }
    },
    "@babel/helper-get-function-arity": {
      "version": "7.8.3",
      "resolved": "https://registry.npmjs.org/@babel/helper-get-function-arity/-/helper-get-function-arity-7.8.3.tgz",
      "integrity": "sha512-FVDR+Gd9iLjUMY1fzE2SR0IuaJToR4RkCDARVfsBBPSP53GEqSFjD8gNyxg246VUyc/ALRxFaAK8rVG7UT7xRA==",
      "dev": true,
      "requires": {
        "@babel/types": "^7.8.3"
      }
    },
    "@babel/helper-split-export-declaration": {
      "version": "7.8.3",
      "resolved": "https://registry.npmjs.org/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.8.3.tgz",
      "integrity": "sha512-3x3yOeyBhW851hroze7ElzdkeRXQYQbFIb7gLK1WQYsw2GWDay5gAJNw1sWJ0VFP6z5J1whqeXH/WCdCjZv6dA==",
      "dev": true,
      "requires": {
        "@babel/types": "^7.8.3"
      }
    },
    "@babel/helper-validator-identifier": {
      "version": "7.9.5",
      "resolved": "https://registry.npmjs.org/@babel/helper-validator-identifier/-/helper-validator-identifier-7.9.5.tgz",
      "integrity": "sha512-/8arLKUFq882w4tWGj9JYzRpAlZgiWUJ+dtteNTDqrRBz9Iguck9Rn3ykuBDoUwh2TO4tSAJlrxDUOXWklJe4g==",
      "dev": true
    },
    "@babel/highlight": {
      "version": "7.9.0",
      "resolved": "https://registry.npmjs.org/@babel/highlight/-/highlight-7.9.0.tgz",
      "integrity": "sha512-lJZPilxX7Op3Nv/2cvFdnlepPXDxi29wxteT57Q965oc5R9v86ztx0jfxVrTcBk8C2kcPkkDa2Z4T3ZsPPVWsQ==",
      "dev": true,
      "requires": {
        "@babel/helper-validator-identifier": "^7.9.0",
        "chalk": "^2.0.0",
        "js-tokens": "^4.0.0"
      },
      "dependencies": {
        "js-tokens": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/js-tokens/-/js-tokens-4.0.0.tgz",
          "integrity": "sha512-RdJUflcE3cUzKiMqQgsCu06FPu9UdIJO0beYbPhHN4k6apgJtifcoCtT9bcxOpYBtpD2kCM6Sbzg4CausW/PKQ==",
          "dev": true
        }
      }
    },
    "@babel/parser": {
      "version": "7.9.6",
      "resolved": "https://registry.npmjs.org/@babel/parser/-/parser-7.9.6.tgz",
      "integrity": "sha512-AoeIEJn8vt+d/6+PXDRPaksYhnlbMIiejioBZvvMQsOjW/JYK6k/0dKnvvP3EhK5GfMBWDPtrxRtegWdAcdq9Q==",
      "dev": true
    },
    "@babel/template": {
      "version": "7.8.6",
      "resolved": "https://registry.npmjs.org/@babel/template/-/template-7.8.6.tgz",
      "integrity": "sha512-zbMsPMy/v0PWFZEhQJ66bqjhH+z0JgMoBWuikXybgG3Gkd/3t5oQ1Rw2WQhnSrsOmsKXnZOx15tkC4qON/+JPg==",
      "dev": true,
      "requires": {
        "@babel/code-frame": "^7.8.3",
        "@babel/parser": "^7.8.6",
        "@babel/types": "^7.8.6"
      }
    },
    "@babel/traverse": {
      "version": "7.9.6",
      "resolved": "https://registry.npmjs.org/@babel/traverse/-/traverse-7.9.6.tgz",
      "integrity": "sha512-b3rAHSjbxy6VEAvlxM8OV/0X4XrG72zoxme6q1MOoe2vd0bEc+TwayhuC1+Dfgqh1QEG+pj7atQqvUprHIccsg==",
      "dev": true,
      "requires": {
        "@babel/code-frame": "^7.8.3",
        "@babel/generator": "^7.9.6",
        "@babel/helper-function-name": "^7.9.5",
        "@babel/helper-split-export-declaration": "^7.8.3",
        "@babel/parser": "^7.9.6",
        "@babel/types": "^7.9.6",
        "debug": "^4.1.0",
        "globals": "^11.1.0",
        "lodash": "^4.17.13"
      },
      "dependencies": {
        "debug": {
          "version": "4.1.1",
          "resolved": "https://registry.npmjs.org/debug/-/debug-4.1.1.tgz",
          "integrity": "sha512-pYAIzeRo8J6KPEaJ0VWOh5Pzkbw/RetuzehGM7QRRX5he4fPHx2rdKMB256ehJCkX+XRQm16eZLqLNS8RSZXZw==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "globals": {
          "version": "11.12.0",
          "resolved": "https://registry.npmjs.org/globals/-/globals-11.12.0.tgz",
          "integrity": "sha512-WOBp/EEGUiIsJSp7wcv/y6MO+lV9UoncWqxuFfm8eBwzWNgyfBd6Gz+IeKQ9jCmyhoH99g15M3T+QaVHFjizVA==",
          "dev": true
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "@babel/types": {
      "version": "7.9.6",
      "resolved": "https://registry.npmjs.org/@babel/types/-/types-7.9.6.tgz",
      "integrity": "sha512-qxXzvBO//jO9ZnoasKF1uJzHd2+M6Q2ZPIVfnFps8JJvXy0ZBbwbNOmE6SGIY5XOY6d1Bo5lb9d9RJ8nv3WSeA==",
      "dev": true,
      "requires": {
        "@babel/helper-validator-identifier": "^7.9.5",
        "lodash": "^4.17.13",
        "to-fast-properties": "^2.0.0"
      },
      "dependencies": {
        "to-fast-properties": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-2.0.0.tgz",
          "integrity": "sha1-3F5pjL0HkmW8c+A3doGk5Og/YW4=",
          "dev": true
        }
      }
    },
    "@ngtools/webpack": {
      "version": "7.0.7",
      "resolved": "https://registry.npmjs.org/@ngtools/webpack/-/webpack-7.0.7.tgz",
      "integrity": "sha512-ukZv/8vhiVWLsEEWF1uena8GHRVUpwbPJ+8AupW25d2nNpwfsDtTIXKzTzRYeIQFFCnHJxr04lK18CVsn1lFaQ==",
      "dev": true,
      "requires": {
        "@angular-devkit/core": "7.0.7",
        "enhanced-resolve": "4.1.0",
        "rxjs": "6.3.3",
        "tree-kill": "1.2.0",
        "webpack-sources": "1.2.0"
      }
    },
    "@schematics/angular": {
      "version": "7.0.7",
      "resolved": "https://registry.npmjs.org/@schematics/angular/-/angular-7.0.7.tgz",
      "integrity": "sha512-xDSMAtOdKNa5uqsEfbwBVHVCjpNSmIIcadi0Rki+5Nmobf5nnQWPly1/xj5aHzT6SKuV4BIMvsBG9UgI9Ss/Iw==",
      "dev": true,
      "requires": {
        "@angular-devkit/core": "7.0.7",
        "@angular-devkit/schematics": "7.0.7",
        "typescript": "3.1.6"
      }
    },
    "@schematics/update": {
      "version": "0.10.7",
      "resolved": "https://registry.npmjs.org/@schematics/update/-/update-0.10.7.tgz",
      "integrity": "sha512-E4txrdnIcNn1K0xFPmY4ywAnVj+hN2QB1wBijoAMezYTEjcKxW0g6thPfUv6qhIPcphxrCOqwl6cIELZjq2dtA==",
      "dev": true,
      "requires": {
        "@angular-devkit/core": "7.0.7",
        "@angular-devkit/schematics": "7.0.7",
        "npm-registry-client": "8.6.0",
        "rxjs": "6.3.3",
        "semver": "5.5.1",
        "semver-intersect": "1.4.0"
      },
      "dependencies": {
        "semver": {
          "version": "5.5.1",
          "resolved": "https://registry.npmjs.org/semver/-/semver-5.5.1.tgz",
          "integrity": "sha512-PqpAxfrEhlSUWge8dwIp4tZnQ25DIOthpiaHNIthsjEFQD6EvqUKUDM7L8O2rShkFccYo1VjJR0coWfNkCubRw==",
          "dev": true
        }
      }
    },
    "@types/jasmine": {
      "version": "2.8.16",
      "resolved": "https://registry.npmjs.org/@types/jasmine/-/jasmine-2.8.16.tgz",
      "integrity": "sha512-056oRlBBp7MDzr+HoU5su099s/s7wjZ3KcHxLfv+Byqb9MwdLUvsfLgw1VS97hsh3ddxSPyQu+olHMnoVTUY6g==",
      "dev": true
    },
    "@types/jasminewd2": {
      "version": "2.0.8",
      "resolved": "https://registry.npmjs.org/@types/jasminewd2/-/jasminewd2-2.0.8.tgz",
      "integrity": "sha512-d9p31r7Nxk0ZH0U39PTH0hiDlJ+qNVGjlt1ucOoTUptxb2v+Y5VMnsxfwN+i3hK4yQnqBi3FMmoMFcd1JHDxdg==",
      "dev": true,
      "requires": {
        "@types/jasmine": "*"
      }
    },
    "@types/node": {
      "version": "8.9.5",
      "resolved": "https://registry.npmjs.org/@types/node/-/node-8.9.5.tgz",
      "integrity": "sha512-jRHfWsvyMtXdbhnz5CVHxaBgnV6duZnPlQuRSo/dm/GnmikNcmZhxIES4E9OZjUmQ8C+HCl4KJux+cXN/ErGDQ==",
      "dev": true
    },
    "@types/q": {
      "version": "0.0.32",
      "resolved": "https://registry.npmjs.org/@types/q/-/q-0.0.32.tgz",
      "integrity": "sha1-vShOV8hPEyXacCur/IKlMoGQwMU=",
      "dev": true
    },
    "@types/selenium-webdriver": {
      "version": "3.0.17",
      "resolved": "https://registry.npmjs.org/@types/selenium-webdriver/-/selenium-webdriver-3.0.17.tgz",
      "integrity": "sha512-tGomyEuzSC1H28y2zlW6XPCaDaXFaD6soTdb4GNdmte2qfHtrKqhy0ZFs4r/1hpazCfEZqeTSRLvSasmEx89uw==",
      "dev": true
    },
    "@webassemblyjs/ast": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/ast/-/ast-1.7.6.tgz",
      "integrity": "sha512-8nkZS48EVsMUU0v6F1LCIOw4RYWLm2plMtbhFTjNgeXmsTNLuU3xTRtnljt9BFQB+iPbLRobkNrCWftWnNC7wQ==",
      "dev": true,
      "requires": {
        "@webassemblyjs/helper-module-context": "1.7.6",
        "@webassemblyjs/helper-wasm-bytecode": "1.7.6",
        "@webassemblyjs/wast-parser": "1.7.6",
        "mamacro": "^0.0.3"
      }
    },
    "@webassemblyjs/floating-point-hex-parser": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/floating-point-hex-parser/-/floating-point-hex-parser-1.7.6.tgz",
      "integrity": "sha512-VBOZvaOyBSkPZdIt5VBMg3vPWxouuM13dPXGWI1cBh3oFLNcFJ8s9YA7S9l4mPI7+Q950QqOmqj06oa83hNWBA==",
      "dev": true
    },
    "@webassemblyjs/helper-api-error": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-api-error/-/helper-api-error-1.7.6.tgz",
      "integrity": "sha512-SCzhcQWHXfrfMSKcj8zHg1/kL9kb3aa5TN4plc/EREOs5Xop0ci5bdVBApbk2yfVi8aL+Ly4Qpp3/TRAUInjrg==",
      "dev": true
    },
    "@webassemblyjs/helper-buffer": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-buffer/-/helper-buffer-1.7.6.tgz",
      "integrity": "sha512-1/gW5NaGsEOZ02fjnFiU8/OEEXU1uVbv2um0pQ9YVL3IHSkyk6xOwokzyqqO1qDZQUAllb+V8irtClPWntbVqw==",
      "dev": true
    },
    "@webassemblyjs/helper-code-frame": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-code-frame/-/helper-code-frame-1.7.6.tgz",
      "integrity": "sha512-+suMJOkSn9+vEvDvgyWyrJo5vJsWSDXZmJAjtoUq4zS4eqHyXImpktvHOZwXp1XQjO5H+YQwsBgqTQEc0J/5zg==",
      "dev": true,
      "requires": {
        "@webassemblyjs/wast-printer": "1.7.6"
      }
    },
    "@webassemblyjs/helper-fsm": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-fsm/-/helper-fsm-1.7.6.tgz",
      "integrity": "sha512-HCS6KN3wgxUihGBW7WFzEC/o8Eyvk0d56uazusnxXthDPnkWiMv+kGi9xXswL2cvfYfeK5yiM17z2K5BVlwypw==",
      "dev": true
    },
    "@webassemblyjs/helper-module-context": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-module-context/-/helper-module-context-1.7.6.tgz",
      "integrity": "sha512-e8/6GbY7OjLM+6OsN7f2krC2qYVNaSr0B0oe4lWdmq5sL++8dYDD1TFbD1TdAdWMRTYNr/Qq7ovXWzia2EbSjw==",
      "dev": true,
      "requires": {
        "mamacro": "^0.0.3"
      }
    },
    "@webassemblyjs/helper-wasm-bytecode": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-wasm-bytecode/-/helper-wasm-bytecode-1.7.6.tgz",
      "integrity": "sha512-PzYFCb7RjjSdAOljyvLWVqd6adAOabJW+8yRT+NWhXuf1nNZWH+igFZCUK9k7Cx7CsBbzIfXjJc7u56zZgFj9Q==",
      "dev": true
    },
    "@webassemblyjs/helper-wasm-section": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/helper-wasm-section/-/helper-wasm-section-1.7.6.tgz",
      "integrity": "sha512-3GS628ppDPSuwcYlQ7cDCGr4W2n9c4hLzvnRKeuz+lGsJSmc/ADVoYpm1ts2vlB1tGHkjtQMni+yu8mHoMlKlA==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-buffer": "1.7.6",
        "@webassemblyjs/helper-wasm-bytecode": "1.7.6",
        "@webassemblyjs/wasm-gen": "1.7.6"
      }
    },
    "@webassemblyjs/ieee754": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/ieee754/-/ieee754-1.7.6.tgz",
      "integrity": "sha512-V4cIp0ruyw+hawUHwQLn6o2mFEw4t50tk530oKsYXQhEzKR+xNGDxs/SFFuyTO7X3NzEu4usA3w5jzhl2RYyzQ==",
      "dev": true,
      "requires": {
        "@xtuc/ieee754": "^1.2.0"
      }
    },
    "@webassemblyjs/leb128": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/leb128/-/leb128-1.7.6.tgz",
      "integrity": "sha512-ojdlG8WpM394lBow4ncTGJoIVZ4aAtNOWHhfAM7m7zprmkVcKK+2kK5YJ9Bmj6/ketTtOn7wGSHCtMt+LzqgYQ==",
      "dev": true,
      "requires": {
        "@xtuc/long": "4.2.1"
      }
    },
    "@webassemblyjs/utf8": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/utf8/-/utf8-1.7.6.tgz",
      "integrity": "sha512-oId+tLxQ+AeDC34ELRYNSqJRaScB0TClUU6KQfpB8rNT6oelYlz8axsPhf6yPTg7PBJ/Z5WcXmUYiHEWgbbHJw==",
      "dev": true
    },
    "@webassemblyjs/wasm-edit": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wasm-edit/-/wasm-edit-1.7.6.tgz",
      "integrity": "sha512-pTNjLO3o41v/Vz9VFLl+I3YLImpCSpodFW77pNoH4agn5I6GgSxXHXtvWDTvYJFty0jSeXZWLEmbaSIRUDlekg==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-buffer": "1.7.6",
        "@webassemblyjs/helper-wasm-bytecode": "1.7.6",
        "@webassemblyjs/helper-wasm-section": "1.7.6",
        "@webassemblyjs/wasm-gen": "1.7.6",
        "@webassemblyjs/wasm-opt": "1.7.6",
        "@webassemblyjs/wasm-parser": "1.7.6",
        "@webassemblyjs/wast-printer": "1.7.6"
      }
    },
    "@webassemblyjs/wasm-gen": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wasm-gen/-/wasm-gen-1.7.6.tgz",
      "integrity": "sha512-mQvFJVumtmRKEUXMohwn8nSrtjJJl6oXwF3FotC5t6e2hlKMh8sIaW03Sck2MDzw9xPogZD7tdP5kjPlbH9EcQ==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-wasm-bytecode": "1.7.6",
        "@webassemblyjs/ieee754": "1.7.6",
        "@webassemblyjs/leb128": "1.7.6",
        "@webassemblyjs/utf8": "1.7.6"
      }
    },
    "@webassemblyjs/wasm-opt": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wasm-opt/-/wasm-opt-1.7.6.tgz",
      "integrity": "sha512-go44K90fSIsDwRgtHhX14VtbdDPdK2sZQtZqUcMRvTojdozj5tLI0VVJAzLCfz51NOkFXezPeVTAYFqrZ6rI8Q==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-buffer": "1.7.6",
        "@webassemblyjs/wasm-gen": "1.7.6",
        "@webassemblyjs/wasm-parser": "1.7.6"
      }
    },
    "@webassemblyjs/wasm-parser": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wasm-parser/-/wasm-parser-1.7.6.tgz",
      "integrity": "sha512-t1T6TfwNY85pDA/HWPA8kB9xA4sp9ajlRg5W7EKikqrynTyFo+/qDzIpvdkOkOGjlS6d4n4SX59SPuIayR22Yg==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-api-error": "1.7.6",
        "@webassemblyjs/helper-wasm-bytecode": "1.7.6",
        "@webassemblyjs/ieee754": "1.7.6",
        "@webassemblyjs/leb128": "1.7.6",
        "@webassemblyjs/utf8": "1.7.6"
      }
    },
    "@webassemblyjs/wast-parser": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wast-parser/-/wast-parser-1.7.6.tgz",
      "integrity": "sha512-1MaWTErN0ziOsNUlLdvwS+NS1QWuI/kgJaAGAMHX8+fMJFgOJDmN/xsG4h/A1Gtf/tz5VyXQciaqHZqp2q0vfg==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/floating-point-hex-parser": "1.7.6",
        "@webassemblyjs/helper-api-error": "1.7.6",
        "@webassemblyjs/helper-code-frame": "1.7.6",
        "@webassemblyjs/helper-fsm": "1.7.6",
        "@xtuc/long": "4.2.1",
        "mamacro": "^0.0.3"
      }
    },
    "@webassemblyjs/wast-printer": {
      "version": "1.7.6",
      "resolved": "https://registry.npmjs.org/@webassemblyjs/wast-printer/-/wast-printer-1.7.6.tgz",
      "integrity": "sha512-vHdHSK1tOetvDcl1IV1OdDeGNe/NDDQ+KzuZHMtqTVP1xO/tZ/IKNpj5BaGk1OYFdsDWQqb31PIwdEyPntOWRQ==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/wast-parser": "1.7.6",
        "@xtuc/long": "4.2.1"
      }
    },
    "@xtuc/ieee754": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/@xtuc/ieee754/-/ieee754-1.2.0.tgz",
      "integrity": "sha512-DX8nKgqcGwsc0eJSqYt5lwP4DH5FlHnmuWWBRy7X0NcaGR0ZtuyeESgMwTYVEtxmsNGY+qit4QYT/MIYTOTPeA==",
      "dev": true
    },
    "@xtuc/long": {
      "version": "4.2.1",
      "resolved": "https://registry.npmjs.org/@xtuc/long/-/long-4.2.1.tgz",
      "integrity": "sha512-FZdkNBDqBRHKQ2MEbSC17xnPFOhZxeJ2YGSfr2BKf3sujG49Qe3bB+rGCwQfIaA7WHnGeGkSijX4FuBCdrzW/g==",
      "dev": true
    },
    "abbrev": {
      "version": "1.0.9",
      "resolved": "https://registry.npmjs.org/abbrev/-/abbrev-1.0.9.tgz",
      "integrity": "sha1-kbR5JYinc4wl813W9jdSovh3YTU=",
      "dev": true
    },
    "accepts": {
      "version": "1.3.7",
      "resolved": "https://registry.npmjs.org/accepts/-/accepts-1.3.7.tgz",
      "integrity": "sha512-Il80Qs2WjYlJIBNzNkK6KYqlVMTbZLXgHx2oT0pU/fjRHyEp+PEfEPY0R3WCwAGVOtauxh1hOxNgIf5bv7dQpA==",
      "dev": true,
      "requires": {
        "mime-types": "~2.1.24",
        "negotiator": "0.6.2"
      }
    },
    "acorn": {
      "version": "5.7.4",
      "resolved": "https://registry.npmjs.org/acorn/-/acorn-5.7.4.tgz",
      "integrity": "sha512-1D++VG7BhrtvQpNbBzovKNc1FLGGEE/oGe7b9xJm/RFHMBeUaUGpluV9RLjZa47YFdPcDAenEYuq9pQPcMdLJg==",
      "dev": true
    },
    "acorn-dynamic-import": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/acorn-dynamic-import/-/acorn-dynamic-import-3.0.0.tgz",
      "integrity": "sha512-zVWV8Z8lislJoOKKqdNMOB+s6+XV5WERty8MnKBeFgwA+19XJjJHs2RP5dzM57FftIs+jQnRToLiWazKr6sSWg==",
      "dev": true,
      "requires": {
        "acorn": "^5.0.0"
      }
    },
    "adm-zip": {
      "version": "0.4.14",
      "resolved": "https://registry.npmjs.org/adm-zip/-/adm-zip-0.4.14.tgz",
      "integrity": "sha512-/9aQCnQHF+0IiCl0qhXoK7qs//SwYE7zX8lsr/DNk1BRAHYxeLZPL4pguwK29gUEqasYQjqPtEpDRSWEkdHn9g==",
      "dev": true
    },
    "after": {
      "version": "0.8.2",
      "resolved": "https://registry.npmjs.org/after/-/after-0.8.2.tgz",
      "integrity": "sha1-/ts5T58OAqqXaOcCvaI7UF+ufh8=",
      "dev": true
    },
    "agent-base": {
      "version": "4.3.0",
      "resolved": "https://registry.npmjs.org/agent-base/-/agent-base-4.3.0.tgz",
      "integrity": "sha512-salcGninV0nPrwpGNn4VTXBb1SOuXQBiqbrNXoeizJsHrsL6ERFM2Ne3JUSBWRE6aeNJI2ROP/WEEIDUiDe3cg==",
      "dev": true,
      "requires": {
        "es6-promisify": "^5.0.0"
      }
    },
    "ajv": {
      "version": "6.5.3",
      "resolved": "https://registry.npmjs.org/ajv/-/ajv-6.5.3.tgz",
      "integrity": "sha512-LqZ9wY+fx3UMiiPd741yB2pj3hhil+hQc8taf4o2QGRFpWgZ2V5C8HA165DY9sS3fJwsk7uT7ZlFEyC3Ig3lLg==",
      "dev": true,
      "requires": {
        "fast-deep-equal": "^2.0.1",
        "fast-json-stable-stringify": "^2.0.0",
        "json-schema-traverse": "^0.4.1",
        "uri-js": "^4.2.2"
      }
    },
    "ajv-errors": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/ajv-errors/-/ajv-errors-1.0.1.tgz",
      "integrity": "sha512-DCRfO/4nQ+89p/RK43i8Ezd41EqdGIU4ld7nGF8OQ14oc/we5rEntLCUa7+jrn3nn83BosfwZA0wb4pon2o8iQ==",
      "dev": true
    },
    "ajv-keywords": {
      "version": "3.4.1",
      "resolved": "https://registry.npmjs.org/ajv-keywords/-/ajv-keywords-3.4.1.tgz",
      "integrity": "sha512-RO1ibKvd27e6FEShVFfPALuHI3WjSVNeK5FIsmme/LYRNxjKuNj+Dt7bucLa6NdSv3JcVTyMlm9kGR84z1XpaQ==",
      "dev": true
    },
    "amdefine": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/amdefine/-/amdefine-1.0.1.tgz",
      "integrity": "sha1-SlKCrBZHKek2Gbz9OtFR+BfOkfU=",
      "dev": true
    },
    "ansi-colors": {
      "version": "3.2.4",
      "resolved": "https://registry.npmjs.org/ansi-colors/-/ansi-colors-3.2.4.tgz",
      "integrity": "sha512-hHUXGagefjN2iRrID63xckIvotOXOojhQKWIPUZ4mNUZ9nLZW+7FMNoE1lOkEhNWYsx/7ysGIuJYCiMAA9FnrA==",
      "dev": true
    },
    "ansi-escapes": {
      "version": "3.2.0",
      "resolved": "https://registry.npmjs.org/ansi-escapes/-/ansi-escapes-3.2.0.tgz",
      "integrity": "sha512-cBhpre4ma+U0T1oM5fXg7Dy1Jw7zzwv7lt/GoCpr+hDQJoYnKVPLL4dCvSEFMmQurOQvSrwT7SL/DAlhBI97RQ==",
      "dev": true
    },
    "ansi-html": {
      "version": "0.0.7",
      "resolved": "https://registry.npmjs.org/ansi-html/-/ansi-html-0.0.7.tgz",
      "integrity": "sha1-gTWEAhliqenm/QOflA0S9WynhZ4=",
      "dev": true
    },
    "ansi-regex": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-2.1.1.tgz",
      "integrity": "sha1-w7M6te42DYbg5ijwRorn7yfWVN8=",
      "dev": true
    },
    "ansi-styles": {
      "version": "3.2.1",
      "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-3.2.1.tgz",
      "integrity": "sha512-VT0ZI6kZRdTh8YyJw3SMbYm/u+NqfsAxEpWO0Pf9sq8/e94WxxOpPKx9FR1FlyCtOVDNOQ+8ntlqFxiRc+r5qA==",
      "dev": true,
      "requires": {
        "color-convert": "^1.9.0"
      }
    },
    "anymatch": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/anymatch/-/anymatch-2.0.0.tgz",
      "integrity": "sha512-5teOsQWABXHHBFP9y3skS5P3d/WfWXpv3FUpy+LorMrNYaT9pI4oLMQX7jzQ2KklNpGpWHzdCXTDT2Y3XGlZBw==",
      "dev": true,
      "requires": {
        "micromatch": "^3.1.4",
        "normalize-path": "^2.1.1"
      }
    },
    "app-root-path": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/app-root-path/-/app-root-path-2.2.1.tgz",
      "integrity": "sha512-91IFKeKk7FjfmezPKkwtaRvSpnUc4gDwPAjA1YZ9Gn0q0PPeW+vbeUsZuyDwjI7+QTHhcLen2v25fi/AmhvbJA==",
      "dev": true
    },
    "append-transform": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/append-transform/-/append-transform-1.0.0.tgz",
      "integrity": "sha512-P009oYkeHyU742iSZJzZZywj4QRJdnTWffaKuJQLablCZ1uz6/cW4yaRgcDaoQ+uwOxxnt0gRUcwfsNP2ri0gw==",
      "dev": true,
      "requires": {
        "default-require-extensions": "^2.0.0"
      }
    },
    "aproba": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/aproba/-/aproba-1.2.0.tgz",
      "integrity": "sha512-Y9J6ZjXtoYh8RnXVCMOU/ttDmk1aBjunq9vO0ta5x85WDQiQfUF9sIPBITdbiiIVcBo03Hi3jMxigBtsddlXRw==",
      "dev": true
    },
    "are-we-there-yet": {
      "version": "1.1.5",
      "resolved": "https://registry.npmjs.org/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz",
      "integrity": "sha512-5hYdAkZlcG8tOLujVDTgCT+uPX0VnpAH28gWsLfzpXYm7wP6mp5Q/gYyR7YQ0cKVJcXJnl3j2kpBan13PtQf6w==",
      "dev": true,
      "optional": true,
      "requires": {
        "delegates": "^1.0.0",
        "readable-stream": "^2.0.6"
      }
    },
    "argparse": {
      "version": "1.0.10",
      "resolved": "https://registry.npmjs.org/argparse/-/argparse-1.0.10.tgz",
      "integrity": "sha512-o5Roy6tNG4SL/FOkCAN6RzjiakZS25RLYFrcMttJqbdd8BWrnA+fGz57iN5Pb06pvBGvl5gQ0B48dJlslXvoTg==",
      "dev": true,
      "requires": {
        "sprintf-js": "~1.0.2"
      }
    },
    "arr-diff": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/arr-diff/-/arr-diff-4.0.0.tgz",
      "integrity": "sha1-1kYQdP6/7HHn4VI1dhoyml3HxSA=",
      "dev": true
    },
    "arr-flatten": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/arr-flatten/-/arr-flatten-1.1.0.tgz",
      "integrity": "sha512-L3hKV5R/p5o81R7O02IGnwpDmkp6E982XhtbuwSe3O4qOtMMMtodicASA1Cny2U+aCXcNpml+m4dPsvsJ3jatg==",
      "dev": true
    },
    "arr-union": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/arr-union/-/arr-union-3.1.0.tgz",
      "integrity": "sha1-45sJrqne+Gao8gbiiK9jkZuuOcQ=",
      "dev": true
    },
    "array-find-index": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/array-find-index/-/array-find-index-1.0.2.tgz",
      "integrity": "sha1-3wEKoSh+Fku9pvlyOwqWoexBh6E=",
      "dev": true
    },
    "array-flatten": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-2.1.2.tgz",
      "integrity": "sha512-hNfzcOV8W4NdualtqBFPyVO+54DSJuZGY9qT4pRroB6S9e3iiido2ISIC5h9R2sPJ8H3FHCIiEnsv1lPXO3KtQ==",
      "dev": true
    },
    "array-slice": {
      "version": "0.2.3",
      "resolved": "https://registry.npmjs.org/array-slice/-/array-slice-0.2.3.tgz",
      "integrity": "sha1-3Tz7gO15c6dRF82sabC5nshhhvU=",
      "dev": true
    },
    "array-union": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/array-union/-/array-union-1.0.2.tgz",
      "integrity": "sha1-mjRBDk9OPaI96jdb5b5w8kd47Dk=",
      "dev": true,
      "requires": {
        "array-uniq": "^1.0.1"
      }
    },
    "array-uniq": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/array-uniq/-/array-uniq-1.0.3.tgz",
      "integrity": "sha1-r2rId6Jcx/dOBYiUdThY39sk/bY=",
      "dev": true
    },
    "array-unique": {
      "version": "0.3.2",
      "resolved": "https://registry.npmjs.org/array-unique/-/array-unique-0.3.2.tgz",
      "integrity": "sha1-qJS3XUvE9s1nnvMkSp/Y9Gri1Cg=",
      "dev": true
    },
    "arraybuffer.slice": {
      "version": "0.0.7",
      "resolved": "https://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.7.tgz",
      "integrity": "sha512-wGUIVQXuehL5TCqQun8OW81jGzAWycqzFF8lFp+GOM5BXLYj3bKNsYC4daB7n6XjCqxQA/qgTJ+8ANR3acjrog==",
      "dev": true
    },
    "arrify": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/arrify/-/arrify-1.0.1.tgz",
      "integrity": "sha1-iYUI2iIm84DfkEcoRWhJwVAaSw0=",
      "dev": true
    },
    "asap": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/asap/-/asap-2.0.6.tgz",
      "integrity": "sha1-5QNHYR1+aQlDIIu9r+vLwvuGbUY=",
      "dev": true,
      "optional": true
    },
    "asn1": {
      "version": "0.2.4",
      "resolved": "https://registry.npmjs.org/asn1/-/asn1-0.2.4.tgz",
      "integrity": "sha512-jxwzQpLQjSmWXgwaCZE9Nz+glAG01yF1QnWgbhGwHI5A6FRIEY6IVqtHhIepHqI7/kyEyQEagBC5mBEFlIYvdg==",
      "dev": true,
      "requires": {
        "safer-buffer": "~2.1.0"
      }
    },
    "asn1.js": {
      "version": "4.10.1",
      "resolved": "https://registry.npmjs.org/asn1.js/-/asn1.js-4.10.1.tgz",
      "integrity": "sha512-p32cOF5q0Zqs9uBiONKYLm6BClCoBCM5O9JfeUSlnQLBTxYdTK+pW+nXflm8UkKd2UYlEbYz5qEi0JuZR9ckSw==",
      "dev": true,
      "requires": {
        "bn.js": "^4.0.0",
        "inherits": "^2.0.1",
        "minimalistic-assert": "^1.0.0"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "assert": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/assert/-/assert-1.5.0.tgz",
      "integrity": "sha512-EDsgawzwoun2CZkCgtxJbv392v4nbk9XDD06zI+kQYoBM/3RBWLlEyJARDOmhAAosBjWACEkKL6S+lIZtcAubA==",
      "dev": true,
      "requires": {
        "object-assign": "^4.1.1",
        "util": "0.10.3"
      },
      "dependencies": {
        "inherits": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.1.tgz",
          "integrity": "sha1-sX0I0ya0Qj5Wjv9xn5GwscvfafE=",
          "dev": true
        },
        "util": {
          "version": "0.10.3",
          "resolved": "https://registry.npmjs.org/util/-/util-0.10.3.tgz",
          "integrity": "sha1-evsa/lCAUkZInj23/g7TeTNqwPk=",
          "dev": true,
          "requires": {
            "inherits": "2.0.1"
          }
        }
      }
    },
    "assert-plus": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/assert-plus/-/assert-plus-1.0.0.tgz",
      "integrity": "sha1-8S4PPF13sLHN2RRpQuTpbB5N1SU=",
      "dev": true
    },
    "assign-symbols": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/assign-symbols/-/assign-symbols-1.0.0.tgz",
      "integrity": "sha1-WWZ/QfrdTyDMvCu5a41Pf3jsA2c=",
      "dev": true
    },
    "async": {
      "version": "1.5.2",
      "resolved": "https://registry.npmjs.org/async/-/async-1.5.2.tgz",
      "integrity": "sha1-7GphrlZIDAw8skHJVhjiCJL5Zyo=",
      "dev": true
    },
    "async-each": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/async-each/-/async-each-1.0.3.tgz",
      "integrity": "sha512-z/WhQ5FPySLdvREByI2vZiTWwCnF0moMJ1hK9YQwDTHKh6I7/uSckMetoRGb5UBZPC1z0jlw+n/XCgjeH7y1AQ==",
      "dev": true
    },
    "async-foreach": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/async-foreach/-/async-foreach-0.1.3.tgz",
      "integrity": "sha1-NhIfhFwFeBct5Bmpfb6x0W7DRUI=",
      "dev": true,
      "optional": true
    },
    "async-limiter": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/async-limiter/-/async-limiter-1.0.1.tgz",
      "integrity": "sha512-csOlWGAcRFJaI6m+F2WKdnMKr4HhdhFVBk0H/QbJFMCr+uO2kwohwXQPxw/9OCxp05r5ghVBFSyioixx3gfkNQ==",
      "dev": true
    },
    "asynckit": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/asynckit/-/asynckit-0.4.0.tgz",
      "integrity": "sha1-x57Zf380y48robyXkLzDZkdLS3k=",
      "dev": true
    },
    "atob": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/atob/-/atob-2.1.2.tgz",
      "integrity": "sha512-Wm6ukoaOGJi/73p/cl2GvLjTI5JM1k/O14isD73YML8StrH/7/lRFgmg8nICZgD3bZZvjwCGxtMOD3wWNAu8cg==",
      "dev": true
    },
    "autoprefixer": {
      "version": "9.1.5",
      "resolved": "https://registry.npmjs.org/autoprefixer/-/autoprefixer-9.1.5.tgz",
      "integrity": "sha512-kk4Zb6RUc58ld7gdosERHMF3DzIYJc2fp5sX46qEsGXQQy5bXsu8qyLjoxuY1NuQ/cJuCYnx99BfjwnRggrYIw==",
      "dev": true,
      "requires": {
        "browserslist": "^4.1.0",
        "caniuse-lite": "^1.0.30000884",
        "normalize-range": "^0.1.2",
        "num2fraction": "^1.2.2",
        "postcss": "^7.0.2",
        "postcss-value-parser": "^3.2.3"
      }
    },
    "aws-sign2": {
      "version": "0.7.0",
      "resolved": "https://registry.npmjs.org/aws-sign2/-/aws-sign2-0.7.0.tgz",
      "integrity": "sha1-tG6JCTSpWR8tL2+G1+ap8bP+dqg=",
      "dev": true
    },
    "aws4": {
      "version": "1.9.1",
      "resolved": "https://registry.npmjs.org/aws4/-/aws4-1.9.1.tgz",
      "integrity": "sha512-wMHVg2EOHaMRxbzgFJ9gtjOOCrI80OHLG14rxi28XwOW8ux6IiEbRCGGGqCtdAIg4FQCbW20k9RsT4y3gJlFug==",
      "dev": true
    },
    "babel-code-frame": {
      "version": "6.26.0",
      "resolved": "https://registry.npmjs.org/babel-code-frame/-/babel-code-frame-6.26.0.tgz",
      "integrity": "sha1-Y/1D99weO7fONZR9uP42mj9Yx0s=",
      "dev": true,
      "requires": {
        "chalk": "^1.1.3",
        "esutils": "^2.0.2",
        "js-tokens": "^3.0.2"
      },
      "dependencies": {
        "ansi-styles": {
          "version": "2.2.1",
          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz",
          "integrity": "sha1-tDLdM1i2NM914eRmQ2gkBTPB3b4=",
          "dev": true
        },
        "chalk": {
          "version": "1.1.3",
          "resolved": "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz",
          "integrity": "sha1-qBFcVeSnAv5NFQq9OHKCKn4J/Jg=",
          "dev": true,
          "requires": {
            "ansi-styles": "^2.2.1",
            "escape-string-regexp": "^1.0.2",
            "has-ansi": "^2.0.0",
            "strip-ansi": "^3.0.0",
            "supports-color": "^2.0.0"
          }
        },
        "supports-color": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz",
          "integrity": "sha1-U10EXOa2Nj+kARcIRimZXp3zJMc=",
          "dev": true
        }
      }
    },
    "babel-generator": {
      "version": "6.26.1",
      "resolved": "https://registry.npmjs.org/babel-generator/-/babel-generator-6.26.1.tgz",
      "integrity": "sha512-HyfwY6ApZj7BYTcJURpM5tznulaBvyio7/0d4zFOeMPUmfxkCjHocCuoLa2SAGzBI8AREcH3eP3758F672DppA==",
      "dev": true,
      "requires": {
        "babel-messages": "^6.23.0",
        "babel-runtime": "^6.26.0",
        "babel-types": "^6.26.0",
        "detect-indent": "^4.0.0",
        "jsesc": "^1.3.0",
        "lodash": "^4.17.4",
        "source-map": "^0.5.7",
        "trim-right": "^1.0.1"
      }
    },
    "babel-messages": {
      "version": "6.23.0",
      "resolved": "https://registry.npmjs.org/babel-messages/-/babel-messages-6.23.0.tgz",
      "integrity": "sha1-8830cDhYA1sqKVHG7F7fbGLyYw4=",
      "dev": true,
      "requires": {
        "babel-runtime": "^6.22.0"
      }
    },
    "babel-runtime": {
      "version": "6.26.0",
      "resolved": "https://registry.npmjs.org/babel-runtime/-/babel-runtime-6.26.0.tgz",
      "integrity": "sha1-llxwWGaOgrVde/4E/yM3vItWR/4=",
      "dev": true,
      "requires": {
        "core-js": "^2.4.0",
        "regenerator-runtime": "^0.11.0"
      }
    },
    "babel-template": {
      "version": "6.26.0",
      "resolved": "https://registry.npmjs.org/babel-template/-/babel-template-6.26.0.tgz",
      "integrity": "sha1-3gPi0WOWsGn0bdn/+FIfsaDjXgI=",
      "dev": true,
      "requires": {
        "babel-runtime": "^6.26.0",
        "babel-traverse": "^6.26.0",
        "babel-types": "^6.26.0",
        "babylon": "^6.18.0",
        "lodash": "^4.17.4"
      }
    },
    "babel-traverse": {
      "version": "6.26.0",
      "resolved": "https://registry.npmjs.org/babel-traverse/-/babel-traverse-6.26.0.tgz",
      "integrity": "sha1-RqnL1+3MYsjlwGTi0tjQ9ANXZu4=",
      "dev": true,
      "requires": {
        "babel-code-frame": "^6.26.0",
        "babel-messages": "^6.23.0",
        "babel-runtime": "^6.26.0",
        "babel-types": "^6.26.0",
        "babylon": "^6.18.0",
        "debug": "^2.6.8",
        "globals": "^9.18.0",
        "invariant": "^2.2.2",
        "lodash": "^4.17.4"
      }
    },
    "babel-types": {
      "version": "6.26.0",
      "resolved": "https://registry.npmjs.org/babel-types/-/babel-types-6.26.0.tgz",
      "integrity": "sha1-o7Bz+Uq0nrb6Vc1lInozQ4BjJJc=",
      "dev": true,
      "requires": {
        "babel-runtime": "^6.26.0",
        "esutils": "^2.0.2",
        "lodash": "^4.17.4",
        "to-fast-properties": "^1.0.3"
      }
    },
    "babylon": {
      "version": "6.18.0",
      "resolved": "https://registry.npmjs.org/babylon/-/babylon-6.18.0.tgz",
      "integrity": "sha512-q/UEjfGJ2Cm3oKV71DJz9d25TPnq5rhBVL2Q4fA5wcC3jcrdn7+SssEybFIxwAvvP+YCsCYNKughoF33GxgycQ==",
      "dev": true
    },
    "backo2": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz",
      "integrity": "sha1-MasayLEpNjRj41s+u2n038+6eUc=",
      "dev": true
    },
    "balanced-match": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/balanced-match/-/balanced-match-1.0.0.tgz",
      "integrity": "sha1-ibTRmasr7kneFk6gK4nORi1xt2c=",
      "dev": true
    },
    "base": {
      "version": "0.11.2",
      "resolved": "https://registry.npmjs.org/base/-/base-0.11.2.tgz",
      "integrity": "sha512-5T6P4xPgpp0YDFvSWwEZ4NoE3aM4QBQXDzmVbraCkFj8zHM+mba8SyqB5DbZWyR7mYHo6Y7BdQo3MoA4m0TeQg==",
      "dev": true,
      "requires": {
        "cache-base": "^1.0.1",
        "class-utils": "^0.3.5",
        "component-emitter": "^1.2.1",
        "define-property": "^1.0.0",
        "isobject": "^3.0.1",
        "mixin-deep": "^1.2.0",
        "pascalcase": "^0.1.1"
      },
      "dependencies": {
        "define-property": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-1.0.0.tgz",
          "integrity": "sha1-dp66rz9KY6rTr56NMEybvnm/sOY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^1.0.0"
          }
        },
        "is-accessor-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz",
          "integrity": "sha512-m5hnHTkcVsPfqx3AKlyttIPb7J+XykHvJP2B9bZDjlhLIoEq4XoK64Vg7boZlVWYK6LUY94dYPEE7Lh0ZkZKcQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-data-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz",
          "integrity": "sha512-jbRXy1FmtAoCjQkVmIVYwuuqDFUbaOeDjmed1tOGPrsMhtJA4rD9tkgA0F1qJ3gRFRXcHYVkdeaP50Q5rE/jLQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-descriptor": {
          "version": "1.0.2",
          "resolved": "https://registry.npmjs.org/is-descriptor/-/is-descriptor-1.0.2.tgz",
          "integrity": "sha512-2eis5WqQGV7peooDyLmNEPUrps9+SXX5c9pL3xEB+4e9HnGuDa7mB7kHxHw4CbqS9k1T2hOH3miL8n8WtiYVtg==",
          "dev": true,
          "requires": {
            "is-accessor-descriptor": "^1.0.0",
            "is-data-descriptor": "^1.0.0",
            "kind-of": "^6.0.2"
          }
        }
      }
    },
    "base64-arraybuffer": {
      "version": "0.1.5",
      "resolved": "https://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.5.tgz",
      "integrity": "sha1-c5JncZI7Whl0etZmqlzUv5xunOg=",
      "dev": true
    },
    "base64-js": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/base64-js/-/base64-js-1.3.1.tgz",
      "integrity": "sha512-mLQ4i2QO1ytvGWFWmcngKO//JXAQueZvwEKtjgQFM4jIK0kU+ytMfplL8j+n5mspOfjHwoAg+9yhb7BwAHm36g==",
      "dev": true
    },
    "base64id": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/base64id/-/base64id-1.0.0.tgz",
      "integrity": "sha1-R2iMuZu2gE8OBtPnY7HDLlfY5rY=",
      "dev": true
    },
    "batch": {
      "version": "0.6.1",
      "resolved": "https://registry.npmjs.org/batch/-/batch-0.6.1.tgz",
      "integrity": "sha1-3DQxT05nkxgJP8dgJyUl+UvyXBY=",
      "dev": true
    },
    "bcrypt-pbkdf": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz",
      "integrity": "sha1-pDAdOJtqQ/m2f/PKEaP2Y342Dp4=",
      "dev": true,
      "requires": {
        "tweetnacl": "^0.14.3"
      }
    },
    "better-assert": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/better-assert/-/better-assert-1.0.2.tgz",
      "integrity": "sha1-QIZrnhueC1W0gYlDEeaPr/rrxSI=",
      "dev": true,
      "requires": {
        "callsite": "1.0.0"
      }
    },
    "big.js": {
      "version": "3.2.0",
      "resolved": "https://registry.npmjs.org/big.js/-/big.js-3.2.0.tgz",
      "integrity": "sha512-+hN/Zh2D08Mx65pZ/4g5bsmNiZUuChDiQfTUQ7qJr4/kuopCr88xZsAXv6mBoZEsUI4OuGHlX59qE94K2mMW8Q==",
      "dev": true
    },
    "binary-extensions": {
      "version": "1.13.1",
      "resolved": "https://registry.npmjs.org/binary-extensions/-/binary-extensions-1.13.1.tgz",
      "integrity": "sha512-Un7MIEDdUC5gNpcGDV97op1Ywk748MpHcFTHoYs6qnj1Z3j7I53VG3nwZhKzoBZmbdRNnb6WRdFlwl7tSDuZGw==",
      "dev": true
    },
    "bindings": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/bindings/-/bindings-1.5.0.tgz",
      "integrity": "sha512-p2q/t/mhvuOj/UeLlV6566GD/guowlr0hHxClI0W9m7MWYkL1F0hLo+0Aexs9HSPCtR1SXQ0TD3MMKrXZajbiQ==",
      "dev": true,
      "optional": true,
      "requires": {
        "file-uri-to-path": "1.0.0"
      }
    },
    "blob": {
      "version": "0.0.5",
      "resolved": "https://registry.npmjs.org/blob/-/blob-0.0.5.tgz",
      "integrity": "sha512-gaqbzQPqOoamawKg0LGVd7SzLgXS+JH61oWprSLH+P+abTczqJbhTR8CmJ2u9/bUYNmHTGJx/UEmn6doAvvuig==",
      "dev": true
    },
    "block-stream": {
      "version": "0.0.9",
      "resolved": "https://registry.npmjs.org/block-stream/-/block-stream-0.0.9.tgz",
      "integrity": "sha1-E+v+d4oDIFz+A3UUgeu0szAMEmo=",
      "dev": true,
      "optional": true,
      "requires": {
        "inherits": "~2.0.0"
      }
    },
    "blocking-proxy": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/blocking-proxy/-/blocking-proxy-1.0.1.tgz",
      "integrity": "sha512-KE8NFMZr3mN2E0HcvCgRtX7DjhiIQrwle+nSVJVC/yqFb9+xznHl2ZcoBp2L9qzkI4t4cBFJ1efXF8Dwi132RA==",
      "dev": true,
      "requires": {
        "minimist": "^1.2.0"
      }
    },
    "bluebird": {
      "version": "3.7.2",
      "resolved": "https://registry.npmjs.org/bluebird/-/bluebird-3.7.2.tgz",
      "integrity": "sha512-XpNj6GDQzdfW+r2Wnn7xiSAd7TM3jzkxGXBGTtWKuSXv1xUV+azxAm8jdWZN06QTQk+2N2XB9jRDkvbmQmcRtg==",
      "dev": true
    },
    "bn.js": {
      "version": "5.1.1",
      "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-5.1.1.tgz",
      "integrity": "sha512-IUTD/REb78Z2eodka1QZyyEk66pciRcP6Sroka0aI3tG/iwIdYLrBD62RsubR7vqdt3WyX8p4jxeatzmRSphtA==",
      "dev": true
    },
    "body-parser": {
      "version": "1.19.0",
      "resolved": "https://registry.npmjs.org/body-parser/-/body-parser-1.19.0.tgz",
      "integrity": "sha512-dhEPs72UPbDnAQJ9ZKMNTP6ptJaionhP5cBb541nXPlW60Jepo9RV/a4fX4XWW9CuFNK22krhrj1+rgzifNCsw==",
      "dev": true,
      "requires": {
        "bytes": "3.1.0",
        "content-type": "~1.0.4",
        "debug": "2.6.9",
        "depd": "~1.1.2",
        "http-errors": "1.7.2",
        "iconv-lite": "0.4.24",
        "on-finished": "~2.3.0",
        "qs": "6.7.0",
        "raw-body": "2.4.0",
        "type-is": "~1.6.17"
      },
      "dependencies": {
        "bytes": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.1.0.tgz",
          "integrity": "sha512-zauLjrfCG+xvoyaqLoV8bLVXXNGC4JqlxFCutSDWA6fJrTo2ZuvLYTqZ7aHBLZSMOopbzwv8f+wZcVzfVTI2Dg==",
          "dev": true
        },
        "qs": {
          "version": "6.7.0",
          "resolved": "https://registry.npmjs.org/qs/-/qs-6.7.0.tgz",
          "integrity": "sha512-VCdBRNFTX1fyE7Nb6FYoURo/SPe62QCaAyzJvUjwRaIsc+NePBEniHlvxFmmX56+HZphIGtV0XeCirBtpDrTyQ==",
          "dev": true
        }
      }
    },
    "bonjour": {
      "version": "3.5.0",
      "resolved": "https://registry.npmjs.org/bonjour/-/bonjour-3.5.0.tgz",
      "integrity": "sha1-jokKGD2O6aI5OzhExpGkK897yfU=",
      "dev": true,
      "requires": {
        "array-flatten": "^2.1.0",
        "deep-equal": "^1.0.1",
        "dns-equal": "^1.0.0",
        "dns-txt": "^2.0.2",
        "multicast-dns": "^6.0.1",
        "multicast-dns-service-types": "^1.1.0"
      }
    },
    "bootstrap": {
      "version": "4.4.1",
      "resolved": "https://registry.npmjs.org/bootstrap/-/bootstrap-4.4.1.tgz",
      "integrity": "sha512-tbx5cHubwE6e2ZG7nqM3g/FZ5PQEDMWmMGNrCUBVRPHXTJaH7CBDdsLeu3eCh3B1tzAxTnAbtmrzvWEvT2NNEA=="
    },
    "brace-expansion": {
      "version": "1.1.11",
      "resolved": "https://registry.npmjs.org/brace-expansion/-/brace-expansion-1.1.11.tgz",
      "integrity": "sha512-iCuPHDFgrHX7H2vEI/5xpz07zSHB00TpugqhmYtVmMO6518mCuRMoOYFldEBl0g187ufozdaHgWKcYFb61qGiA==",
      "dev": true,
      "requires": {
        "balanced-match": "^1.0.0",
        "concat-map": "0.0.1"
      }
    },
    "braces": {
      "version": "2.3.2",
      "resolved": "https://registry.npmjs.org/braces/-/braces-2.3.2.tgz",
      "integrity": "sha512-aNdbnj9P8PjdXU4ybaWLK2IF3jc/EoDYbC7AazW6to3TRsfXxscC9UXOB5iDiEQrkyIbWp2SLQda4+QAa7nc3w==",
      "dev": true,
      "requires": {
        "arr-flatten": "^1.1.0",
        "array-unique": "^0.3.2",
        "extend-shallow": "^2.0.1",
        "fill-range": "^4.0.0",
        "isobject": "^3.0.1",
        "repeat-element": "^1.1.2",
        "snapdragon": "^0.8.1",
        "snapdragon-node": "^2.0.1",
        "split-string": "^3.0.2",
        "to-regex": "^3.0.1"
      },
      "dependencies": {
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        }
      }
    },
    "brorand": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/brorand/-/brorand-1.1.0.tgz",
      "integrity": "sha1-EsJe/kCkXjwyPrhnWgoM5XsiNx8=",
      "dev": true
    },
    "browserify-aes": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/browserify-aes/-/browserify-aes-1.2.0.tgz",
      "integrity": "sha512-+7CHXqGuspUn/Sl5aO7Ea0xWGAtETPXNSAjHo48JfLdPWcMng33Xe4znFvQweqc/uzk5zSOI3H52CYnjCfb5hA==",
      "dev": true,
      "requires": {
        "buffer-xor": "^1.0.3",
        "cipher-base": "^1.0.0",
        "create-hash": "^1.1.0",
        "evp_bytestokey": "^1.0.3",
        "inherits": "^2.0.1",
        "safe-buffer": "^5.0.1"
      }
    },
    "browserify-cipher": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/browserify-cipher/-/browserify-cipher-1.0.1.tgz",
      "integrity": "sha512-sPhkz0ARKbf4rRQt2hTpAHqn47X3llLkUGn+xEJzLjwY8LRs2p0v7ljvI5EyoRO/mexrNunNECisZs+gw2zz1w==",
      "dev": true,
      "requires": {
        "browserify-aes": "^1.0.4",
        "browserify-des": "^1.0.0",
        "evp_bytestokey": "^1.0.0"
      }
    },
    "browserify-des": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/browserify-des/-/browserify-des-1.0.2.tgz",
      "integrity": "sha512-BioO1xf3hFwz4kc6iBhI3ieDFompMhrMlnDFC4/0/vd5MokpuAc3R+LYbwTA9A5Yc9pq9UYPqffKpW2ObuwX5A==",
      "dev": true,
      "requires": {
        "cipher-base": "^1.0.1",
        "des.js": "^1.0.0",
        "inherits": "^2.0.1",
        "safe-buffer": "^5.1.2"
      }
    },
    "browserify-rsa": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/browserify-rsa/-/browserify-rsa-4.0.1.tgz",
      "integrity": "sha1-IeCr+vbyApzy+vsTNWenAdQTVSQ=",
      "dev": true,
      "requires": {
        "bn.js": "^4.1.0",
        "randombytes": "^2.0.1"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "browserify-sign": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/browserify-sign/-/browserify-sign-4.1.0.tgz",
      "integrity": "sha512-VYxo7cDCeYUoBZ0ZCy4UyEUCP3smyBd4DRQM5nrFS1jJjPJjX7rP3oLRpPoWfkhQfyJ0I9ZbHbKafrFD/SGlrg==",
      "dev": true,
      "requires": {
        "bn.js": "^5.1.1",
        "browserify-rsa": "^4.0.1",
        "create-hash": "^1.2.0",
        "create-hmac": "^1.1.7",
        "elliptic": "^6.5.2",
        "inherits": "^2.0.4",
        "parse-asn1": "^5.1.5",
        "readable-stream": "^3.6.0"
      },
      "dependencies": {
        "readable-stream": {
          "version": "3.6.0",
          "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.0.tgz",
          "integrity": "sha512-BViHy7LKeTz4oNnkcLJ+lVSL6vpiFeX6/d3oSH8zCW7UxP2onchk+vTGB143xuFjHS3deTgkKoXXymXqymiIdA==",
          "dev": true,
          "requires": {
            "inherits": "^2.0.3",
            "string_decoder": "^1.1.1",
            "util-deprecate": "^1.0.1"
          }
        }
      }
    },
    "browserify-zlib": {
      "version": "0.2.0",
      "resolved": "https://registry.npmjs.org/browserify-zlib/-/browserify-zlib-0.2.0.tgz",
      "integrity": "sha512-Z942RysHXmJrhqk88FmKBVq/v5tqmSkDz7p54G/MGyjMnCFFnC79XWNbg+Vta8W6Wb2qtSZTSxIGkJrRpCFEiA==",
      "dev": true,
      "requires": {
        "pako": "~1.0.5"
      }
    },
    "browserslist": {
      "version": "4.12.0",
      "resolved": "https://registry.npmjs.org/browserslist/-/browserslist-4.12.0.tgz",
      "integrity": "sha512-UH2GkcEDSI0k/lRkuDSzFl9ZZ87skSy9w2XAn1MsZnL+4c4rqbBd3e82UWHbYDpztABrPBhZsTEeuxVfHppqDg==",
      "dev": true,
      "requires": {
        "caniuse-lite": "^1.0.30001043",
        "electron-to-chromium": "^1.3.413",
        "node-releases": "^1.1.53",
        "pkg-up": "^2.0.0"
      }
    },
    "browserstack": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/browserstack/-/browserstack-1.6.0.tgz",
      "integrity": "sha512-HJDJ0TSlmkwnt9RZ+v5gFpa1XZTBYTj0ywvLwJ3241J7vMw2jAsGNVhKHtmCOyg+VxeLZyaibO9UL71AsUeDIw==",
      "dev": true,
      "requires": {
        "https-proxy-agent": "^2.2.1"
      }
    },
    "buffer": {
      "version": "4.9.2",
      "resolved": "https://registry.npmjs.org/buffer/-/buffer-4.9.2.tgz",
      "integrity": "sha512-xq+q3SRMOxGivLhBNaUdC64hDTQwejJ+H0T/NB1XMtTVEwNTrfFF3gAxiyW0Bu/xWEGhjVKgUcMhCrUy2+uCWg==",
      "dev": true,
      "requires": {
        "base64-js": "^1.0.2",
        "ieee754": "^1.1.4",
        "isarray": "^1.0.0"
      }
    },
    "buffer-alloc": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/buffer-alloc/-/buffer-alloc-1.2.0.tgz",
      "integrity": "sha512-CFsHQgjtW1UChdXgbyJGtnm+O/uLQeZdtbDo8mfUgYXCHSM1wgrVxXm6bSyrUuErEb+4sYVGCzASBRot7zyrow==",
      "dev": true,
      "requires": {
        "buffer-alloc-unsafe": "^1.1.0",
        "buffer-fill": "^1.0.0"
      }
    },
    "buffer-alloc-unsafe": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/buffer-alloc-unsafe/-/buffer-alloc-unsafe-1.1.0.tgz",
      "integrity": "sha512-TEM2iMIEQdJ2yjPJoSIsldnleVaAk1oW3DBVUykyOLsEsFmEc9kn+SFFPz+gl54KQNxlDnAwCXosOS9Okx2xAg==",
      "dev": true
    },
    "buffer-fill": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/buffer-fill/-/buffer-fill-1.0.0.tgz",
      "integrity": "sha1-+PeLdniYiO858gXNY39o5wISKyw=",
      "dev": true
    },
    "buffer-from": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/buffer-from/-/buffer-from-1.1.1.tgz",
      "integrity": "sha512-MQcXEUbCKtEo7bhqEs6560Hyd4XaovZlO/k9V3hjVUF/zwW7KBVdSK4gIt/bzwS9MbR5qob+F5jusZsb0YQK2A==",
      "dev": true
    },
    "buffer-indexof": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/buffer-indexof/-/buffer-indexof-1.1.1.tgz",
      "integrity": "sha512-4/rOEg86jivtPTeOUUT61jJO1Ya1TrR/OkqCSZDyq84WJh3LuuiphBYJN+fm5xufIk4XAFcEwte/8WzC8If/1g==",
      "dev": true
    },
    "buffer-xor": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/buffer-xor/-/buffer-xor-1.0.3.tgz",
      "integrity": "sha1-JuYe0UIvtw3ULm42cp7VHYVf6Nk=",
      "dev": true
    },
    "builtin-modules": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/builtin-modules/-/builtin-modules-1.1.1.tgz",
      "integrity": "sha1-Jw8HbFpywC9bZaR9+Uxf46J4iS8=",
      "dev": true
    },
    "builtin-status-codes": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz",
      "integrity": "sha1-hZgoeOIbmOHGZCXgPQF0eI9Wnug=",
      "dev": true
    },
    "builtins": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/builtins/-/builtins-1.0.3.tgz",
      "integrity": "sha1-y5T662HIaWRR2zZTThQi+U8K7og=",
      "dev": true
    },
    "bytes": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.0.0.tgz",
      "integrity": "sha1-0ygVQE1olpn4Wk6k+odV3ROpYEg=",
      "dev": true
    },
    "cacache": {
      "version": "10.0.4",
      "resolved": "https://registry.npmjs.org/cacache/-/cacache-10.0.4.tgz",
      "integrity": "sha512-Dph0MzuH+rTQzGPNT9fAnrPmMmjKfST6trxJeK7NQuHRaVw24VzPRWTmg9MpcwOVQZO0E1FBICUlFeNaKPIfHA==",
      "dev": true,
      "requires": {
        "bluebird": "^3.5.1",
        "chownr": "^1.0.1",
        "glob": "^7.1.2",
        "graceful-fs": "^4.1.11",
        "lru-cache": "^4.1.1",
        "mississippi": "^2.0.0",
        "mkdirp": "^0.5.1",
        "move-concurrently": "^1.0.1",
        "promise-inflight": "^1.0.1",
        "rimraf": "^2.6.2",
        "ssri": "^5.2.4",
        "unique-filename": "^1.1.0",
        "y18n": "^4.0.0"
      }
    },
    "cache-base": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/cache-base/-/cache-base-1.0.1.tgz",
      "integrity": "sha512-AKcdTnFSWATd5/GCPRxr2ChwIJ85CeyrEyjRHlKxQ56d4XJMGym0uAiKn0xbLOGOl3+yRpOTi484dVCEc5AUzQ==",
      "dev": true,
      "requires": {
        "collection-visit": "^1.0.0",
        "component-emitter": "^1.2.1",
        "get-value": "^2.0.6",
        "has-value": "^1.0.0",
        "isobject": "^3.0.1",
        "set-value": "^2.0.0",
        "to-object-path": "^0.3.0",
        "union-value": "^1.0.0",
        "unset-value": "^1.0.0"
      }
    },
    "caller-callsite": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/caller-callsite/-/caller-callsite-2.0.0.tgz",
      "integrity": "sha1-hH4PzgoiN1CpoCfFSzNzGtMVQTQ=",
      "dev": true,
      "requires": {
        "callsites": "^2.0.0"
      }
    },
    "caller-path": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/caller-path/-/caller-path-2.0.0.tgz",
      "integrity": "sha1-Ro+DBE42mrIBD6xfBs7uFbsssfQ=",
      "dev": true,
      "requires": {
        "caller-callsite": "^2.0.0"
      }
    },
    "callsite": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/callsite/-/callsite-1.0.0.tgz",
      "integrity": "sha1-KAOY5dZkvXQDi28JBRU+borxvCA=",
      "dev": true
    },
    "callsites": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/callsites/-/callsites-2.0.0.tgz",
      "integrity": "sha1-BuuE8A7qQT2oav/vrL/7Ngk7PFA=",
      "dev": true
    },
    "camelcase": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-2.1.1.tgz",
      "integrity": "sha1-fB0W1nmhu+WcoCys7PsBHiAfWh8=",
      "dev": true,
      "optional": true
    },
    "camelcase-keys": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/camelcase-keys/-/camelcase-keys-2.1.0.tgz",
      "integrity": "sha1-MIvur/3ygRkFHvodkyITyRuPkuc=",
      "dev": true,
      "optional": true,
      "requires": {
        "camelcase": "^2.0.0",
        "map-obj": "^1.0.0"
      }
    },
    "caniuse-lite": {
      "version": "1.0.30001055",
      "resolved": "https://registry.npmjs.org/caniuse-lite/-/caniuse-lite-1.0.30001055.tgz",
      "integrity": "sha512-MbwsBmKrBSKIWldfdIagO5OJWZclpJtS4h0Jrk/4HFrXJxTdVdH23Fd+xCiHriVGvYcWyW8mR/CPsYajlH8Iuw==",
      "dev": true
    },
    "canonical-path": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/canonical-path/-/canonical-path-1.0.0.tgz",
      "integrity": "sha512-feylzsbDxi1gPZ1IjystzIQZagYYLvfKrSuygUCgf7z6x790VEzze5QEkdSV1U58RA7Hi0+v6fv4K54atOzATg==",
      "dev": true
    },
    "caseless": {
      "version": "0.12.0",
      "resolved": "https://registry.npmjs.org/caseless/-/caseless-0.12.0.tgz",
      "integrity": "sha1-G2gcIf+EAzyCZUMJBolCDRhxUdw=",
      "dev": true
    },
    "chalk": {
      "version": "2.4.2",
      "resolved": "https://registry.npmjs.org/chalk/-/chalk-2.4.2.tgz",
      "integrity": "sha512-Mti+f9lpJNcwF4tWV8/OrTTtF1gZi+f8FqlyAdouralcFWFQWF2+NgCHShjkCb+IFBLq9buZwE1xckQU4peSuQ==",
      "dev": true,
      "requires": {
        "ansi-styles": "^3.2.1",
        "escape-string-regexp": "^1.0.5",
        "supports-color": "^5.3.0"
      }
    },
    "chardet": {
      "version": "0.7.0",
      "resolved": "https://registry.npmjs.org/chardet/-/chardet-0.7.0.tgz",
      "integrity": "sha512-mT8iDcrh03qDGRRmoA2hmBJnxpllMR+0/0qlzjqZES6NdiWDcZkCNAk4rPFZ9Q85r27unkiNNg8ZOiwZXBHwcA==",
      "dev": true
    },
    "chokidar": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-2.0.4.tgz",
      "integrity": "sha512-z9n7yt9rOvIJrMhvDtDictKrkFHeihkNl6uWMmZlmL6tJtX9Cs+87oK+teBx+JIgzvbX3yZHT3eF8vpbDxHJXQ==",
      "dev": true,
      "requires": {
        "anymatch": "^2.0.0",
        "async-each": "^1.0.0",
        "braces": "^2.3.0",
        "fsevents": "^1.2.2",
        "glob-parent": "^3.1.0",
        "inherits": "^2.0.1",
        "is-binary-path": "^1.0.0",
        "is-glob": "^4.0.0",
        "lodash.debounce": "^4.0.8",
        "normalize-path": "^2.1.1",
        "path-is-absolute": "^1.0.0",
        "readdirp": "^2.0.0",
        "upath": "^1.0.5"
      }
    },
    "chownr": {
      "version": "1.1.4",
      "resolved": "https://registry.npmjs.org/chownr/-/chownr-1.1.4.tgz",
      "integrity": "sha512-jJ0bqzaylmJtVnNgzTeSOs8DPavpbYgEr/b0YL8/2GO3xJEhInFmhKMUnEJQjZumK7KXGFhUy89PrsJWlakBVg==",
      "dev": true
    },
    "chrome-trace-event": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/chrome-trace-event/-/chrome-trace-event-1.0.2.tgz",
      "integrity": "sha512-9e/zx1jw7B4CO+c/RXoCsfg/x1AfUBioy4owYH0bJprEYAx5hRFLRhWBqHAG57D0ZM4H7vxbP7bPe0VwhQRYDQ==",
      "dev": true,
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "cipher-base": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/cipher-base/-/cipher-base-1.0.4.tgz",
      "integrity": "sha512-Kkht5ye6ZGmwv40uUDZztayT2ThLQGfnj/T71N/XzeZeo3nf8foyW7zGTsPYkEya3m5f3cAypH+qe7YOrM1U2Q==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.1",
        "safe-buffer": "^5.0.1"
      }
    },
    "circular-dependency-plugin": {
      "version": "5.0.2",
      "resolved": "https://registry.npmjs.org/circular-dependency-plugin/-/circular-dependency-plugin-5.0.2.tgz",
      "integrity": "sha512-oC7/DVAyfcY3UWKm0sN/oVoDedQDQiw/vIiAnuTWTpE5s0zWf7l3WY417Xw/Fbi/QbAjctAkxgMiS9P0s3zkmA==",
      "dev": true
    },
    "circular-json": {
      "version": "0.5.9",
      "resolved": "https://registry.npmjs.org/circular-json/-/circular-json-0.5.9.tgz",
      "integrity": "sha512-4ivwqHpIFJZBuhN3g/pEcdbnGUywkBblloGbkglyloVjjR3uT6tieI89MVOfbP2tHX5sgb01FuLgAOzebNlJNQ==",
      "dev": true
    },
    "class-utils": {
      "version": "0.3.6",
      "resolved": "https://registry.npmjs.org/class-utils/-/class-utils-0.3.6.tgz",
      "integrity": "sha512-qOhPa/Fj7s6TY8H8esGu5QNpMMQxz79h+urzrNYN6mn+9BnxlDGf5QZ+XeCDsxSjPqsSR56XOZOJmpeurnLMeg==",
      "dev": true,
      "requires": {
        "arr-union": "^3.1.0",
        "define-property": "^0.2.5",
        "isobject": "^3.0.0",
        "static-extend": "^0.1.1"
      },
      "dependencies": {
        "define-property": {
          "version": "0.2.5",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz",
          "integrity": "sha1-w1se+RjsPJkPmlvFe+BKrOxcgRY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^0.1.0"
          }
        }
      }
    },
    "clean-css": {
      "version": "4.2.1",
      "resolved": "https://registry.npmjs.org/clean-css/-/clean-css-4.2.1.tgz",
      "integrity": "sha512-4ZxI6dy4lrY6FHzfiy1aEOXgu4LIsW2MhwG0VBKdcoGoH/XLFgaHSdLTGr4O8Be6A8r3MOphEiI8Gc1n0ecf3g==",
      "dev": true,
      "requires": {
        "source-map": "~0.6.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "cli-cursor": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/cli-cursor/-/cli-cursor-2.1.0.tgz",
      "integrity": "sha1-s12sN2R5+sw+lHR9QdDQ9SOP/LU=",
      "dev": true,
      "requires": {
        "restore-cursor": "^2.0.0"
      }
    },
    "cli-width": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/cli-width/-/cli-width-2.2.1.tgz",
      "integrity": "sha512-GRMWDxpOB6Dgk2E5Uo+3eEBvtOOlimMmpbFiKuLFnQzYDavtLFY3K5ona41jgN/WdRZtG7utuVSVTL4HbZHGkw==",
      "dev": true
    },
    "cliui": {
      "version": "3.2.0",
      "resolved": "https://registry.npmjs.org/cliui/-/cliui-3.2.0.tgz",
      "integrity": "sha1-EgYBU3qRbSmUD5NNo7SNWFo5IT0=",
      "dev": true,
      "requires": {
        "string-width": "^1.0.1",
        "strip-ansi": "^3.0.1",
        "wrap-ansi": "^2.0.0"
      }
    },
    "clone": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/clone/-/clone-2.1.2.tgz",
      "integrity": "sha1-G39Ln1kfHo+DZwQBYANFoCiHQ18=",
      "dev": true
    },
    "clone-deep": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/clone-deep/-/clone-deep-2.0.2.tgz",
      "integrity": "sha512-SZegPTKjCgpQH63E+eN6mVEEPdQBOUzjyJm5Pora4lrwWRFS8I0QAxV/KD6vV/i0WuijHZWQC1fMsPEdxfdVCQ==",
      "dev": true,
      "requires": {
        "for-own": "^1.0.0",
        "is-plain-object": "^2.0.4",
        "kind-of": "^6.0.0",
        "shallow-clone": "^1.0.0"
      }
    },
    "co": {
      "version": "4.6.0",
      "resolved": "https://registry.npmjs.org/co/-/co-4.6.0.tgz",
      "integrity": "sha1-bqa989hTrlTMuOR7+gvz+QMfsYQ=",
      "dev": true
    },
    "code-point-at": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/code-point-at/-/code-point-at-1.1.0.tgz",
      "integrity": "sha1-DQcLTQQ6W+ozovGkDi7bPZpMz3c=",
      "dev": true
    },
    "codelyzer": {
      "version": "4.5.0",
      "resolved": "https://registry.npmjs.org/codelyzer/-/codelyzer-4.5.0.tgz",
      "integrity": "sha512-oO6vCkjqsVrEsmh58oNlnJkRXuA30hF8cdNAQV9DytEalDwyOFRvHMnlKFzmOStNerOmPGZU9GAHnBo4tGvtiQ==",
      "dev": true,
      "requires": {
        "app-root-path": "^2.1.0",
        "css-selector-tokenizer": "^0.7.0",
        "cssauron": "^1.4.0",
        "semver-dsl": "^1.0.1",
        "source-map": "^0.5.7",
        "sprintf-js": "^1.1.1"
      },
      "dependencies": {
        "sprintf-js": {
          "version": "1.1.2",
          "resolved": "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.1.2.tgz",
          "integrity": "sha512-VE0SOVEHCk7Qc8ulkWw3ntAzXuqf7S2lvwQaDLRnUeIEaKNQJzV6BwmLKhOqT61aGhfUMrXeaBk+oDGCzvhcug==",
          "dev": true
        }
      }
    },
    "collection-visit": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/collection-visit/-/collection-visit-1.0.0.tgz",
      "integrity": "sha1-S8A3PBZLwykbTTaMgpzxqApZ3KA=",
      "dev": true,
      "requires": {
        "map-visit": "^1.0.0",
        "object-visit": "^1.0.0"
      }
    },
    "color-convert": {
      "version": "1.9.3",
      "resolved": "https://registry.npmjs.org/color-convert/-/color-convert-1.9.3.tgz",
      "integrity": "sha512-QfAUtd+vFdAtFQcC8CCyYt1fYWxSqAiK2cSD6zDB8N3cpsEBAvRxp9zOGg6G/SHHJYAT88/az/IuDGALsNVbGg==",
      "dev": true,
      "requires": {
        "color-name": "1.1.3"
      }
    },
    "color-name": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/color-name/-/color-name-1.1.3.tgz",
      "integrity": "sha1-p9BVi9icQveV3UIyj3QIMcpTvCU=",
      "dev": true
    },
    "colors": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/colors/-/colors-1.1.2.tgz",
      "integrity": "sha1-FopHAXVran9RoSzgyXv6KMCE7WM=",
      "dev": true
    },
    "combine-lists": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/combine-lists/-/combine-lists-1.0.1.tgz",
      "integrity": "sha1-RYwH4J4NkA/Ci3Cj/sLazR0st/Y=",
      "dev": true,
      "requires": {
        "lodash": "^4.5.0"
      }
    },
    "combined-stream": {
      "version": "1.0.8",
      "resolved": "https://registry.npmjs.org/combined-stream/-/combined-stream-1.0.8.tgz",
      "integrity": "sha512-FQN4MRfuJeHf7cBbBMJFXhKSDq+2kAArBlmRBvcvFE5BB1HZKXtSFASDhdlz9zOYwxh8lDdnvmMOe/+5cdoEdg==",
      "dev": true,
      "requires": {
        "delayed-stream": "~1.0.0"
      }
    },
    "commander": {
      "version": "2.20.3",
      "resolved": "https://registry.npmjs.org/commander/-/commander-2.20.3.tgz",
      "integrity": "sha512-GpVkmM8vF2vQUkj2LvZmD35JxeJOLCwJ9cUkugyk2nuhbv3+mJvpLYYt+0+USMxE+oj+ey/lJEnhZw75x/OMcQ==",
      "dev": true
    },
    "commondir": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/commondir/-/commondir-1.0.1.tgz",
      "integrity": "sha1-3dgA2gxmEnOTzKWVDqloo6rxJTs=",
      "dev": true
    },
    "compare-versions": {
      "version": "3.6.0",
      "resolved": "https://registry.npmjs.org/compare-versions/-/compare-versions-3.6.0.tgz",
      "integrity": "sha512-W6Af2Iw1z4CB7q4uU4hv646dW9GQuBM+YpC0UvUCWSD8w90SJjp+ujJuXaEMtAXBtSqGfMPuFOVn4/+FlaqfBA==",
      "dev": true
    },
    "component-bind": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz",
      "integrity": "sha1-AMYIq33Nk4l8AAllGx06jh5zu9E=",
      "dev": true
    },
    "component-emitter": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/component-emitter/-/component-emitter-1.3.0.tgz",
      "integrity": "sha512-Rd3se6QB+sO1TwqZjscQrurpEPIfO0/yYnSin6Q/rD3mOutHvUrCAhJub3r90uNb+SESBuE0QYoB90YdfatsRg==",
      "dev": true
    },
    "component-inherit": {
      "version": "0.0.3",
      "resolved": "https://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz",
      "integrity": "sha1-ZF/ErfWLcrZJ1crmUTVhnbJv8UM=",
      "dev": true
    },
    "compressible": {
      "version": "2.0.18",
      "resolved": "https://registry.npmjs.org/compressible/-/compressible-2.0.18.tgz",
      "integrity": "sha512-AF3r7P5dWxL8MxyITRMlORQNaOA2IkAFaTr4k7BUumjPtRpGDTZpl0Pb1XCO6JeDCBdp126Cgs9sMxqSjgYyRg==",
      "dev": true,
      "requires": {
        "mime-db": ">= 1.43.0 < 2"
      }
    },
    "compression": {
      "version": "1.7.4",
      "resolved": "https://registry.npmjs.org/compression/-/compression-1.7.4.tgz",
      "integrity": "sha512-jaSIDzP9pZVS4ZfQ+TzvtiWhdpFhE2RDHz8QJkpX9SIpLq88VueF5jJw6t+6CUQcAoA6t+x89MLrWAqpfDE8iQ==",
      "dev": true,
      "requires": {
        "accepts": "~1.3.5",
        "bytes": "3.0.0",
        "compressible": "~2.0.16",
        "debug": "2.6.9",
        "on-headers": "~1.0.2",
        "safe-buffer": "5.1.2",
        "vary": "~1.1.2"
      }
    },
    "concat-map": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/concat-map/-/concat-map-0.0.1.tgz",
      "integrity": "sha1-2Klr13/Wjfd5OnMDajug1UBdR3s=",
      "dev": true
    },
    "concat-stream": {
      "version": "1.6.2",
      "resolved": "https://registry.npmjs.org/concat-stream/-/concat-stream-1.6.2.tgz",
      "integrity": "sha512-27HBghJxjiZtIk3Ycvn/4kbJk/1uZuJFfuPEns6LaEvpvG1f0hTea8lilrouyo9mVc2GWdcEZ8OLoGmSADlrCw==",
      "dev": true,
      "requires": {
        "buffer-from": "^1.0.0",
        "inherits": "^2.0.3",
        "readable-stream": "^2.2.2",
        "typedarray": "^0.0.6"
      }
    },
    "connect": {
      "version": "3.7.0",
      "resolved": "https://registry.npmjs.org/connect/-/connect-3.7.0.tgz",
      "integrity": "sha512-ZqRXc+tZukToSNmh5C2iWMSoV3X1YUcPbqEM4DkEG5tNQXrQUZCNVGGv3IuicnkMtPfGf3Xtp8WCXs295iQ1pQ==",
      "dev": true,
      "requires": {
        "debug": "2.6.9",
        "finalhandler": "1.1.2",
        "parseurl": "~1.3.3",
        "utils-merge": "1.0.1"
      }
    },
    "connect-history-api-fallback": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/connect-history-api-fallback/-/connect-history-api-fallback-1.6.0.tgz",
      "integrity": "sha512-e54B99q/OUoH64zYYRf3HBP5z24G38h5D3qXu23JGRoigpX5Ss4r9ZnDk3g0Z8uQC2x2lPaJ+UlWBc1ZWBWdLg==",
      "dev": true
    },
    "console-browserify": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/console-browserify/-/console-browserify-1.2.0.tgz",
      "integrity": "sha512-ZMkYO/LkF17QvCPqM0gxw8yUzigAOZOSWSHg91FH6orS7vcEj5dVZTidN2fQ14yBSdg97RqhSNwLUXInd52OTA==",
      "dev": true
    },
    "console-control-strings": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/console-control-strings/-/console-control-strings-1.1.0.tgz",
      "integrity": "sha1-PXz0Rk22RG6mRL9LOVB/mFEAjo4=",
      "dev": true,
      "optional": true
    },
    "constants-browserify": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/constants-browserify/-/constants-browserify-1.0.0.tgz",
      "integrity": "sha1-wguW2MYXdIqvHBYCF2DNJ/y4y3U=",
      "dev": true
    },
    "content-disposition": {
      "version": "0.5.3",
      "resolved": "https://registry.npmjs.org/content-disposition/-/content-disposition-0.5.3.tgz",
      "integrity": "sha512-ExO0774ikEObIAEV9kDo50o+79VCUdEB6n6lzKgGwupcVeRlhrj3qGAfwq8G6uBJjkqLrhT0qEYFcWng8z1z0g==",
      "dev": true,
      "requires": {
        "safe-buffer": "5.1.2"
      }
    },
    "content-type": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/content-type/-/content-type-1.0.4.tgz",
      "integrity": "sha512-hIP3EEPs8tB9AT1L+NUqtwOAps4mk2Zob89MWXMHjHWg9milF/j4osnnQLXBCBFBk/tvIG/tUc9mOUJiPBhPXA==",
      "dev": true
    },
    "convert-source-map": {
      "version": "1.7.0",
      "resolved": "https://registry.npmjs.org/convert-source-map/-/convert-source-map-1.7.0.tgz",
      "integrity": "sha512-4FJkXzKXEDB1snCFZlLP4gpC3JILicCpGbzG9f9G7tGqGCzETQ2hWPrcinA9oU4wtf2biUaEH5065UnMeR33oA==",
      "dev": true,
      "requires": {
        "safe-buffer": "~5.1.1"
      }
    },
    "cookie": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/cookie/-/cookie-0.4.0.tgz",
      "integrity": "sha512-+Hp8fLp57wnUSt0tY0tHEXh4voZRDnoIrZPqlo3DPiI4y9lwg/jqx+1Om94/W6ZaPDOUbnjOt/99w66zk+l1Xg==",
      "dev": true
    },
    "cookie-signature": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.0.6.tgz",
      "integrity": "sha1-4wOogrNCzD7oylE6eZmXNNqzriw=",
      "dev": true
    },
    "copy-concurrently": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/copy-concurrently/-/copy-concurrently-1.0.5.tgz",
      "integrity": "sha512-f2domd9fsVDFtaFcbaRZuYXwtdmnzqbADSwhSWYxYB/Q8zsdUUFMXVRwXGDMWmbEzAn1kdRrtI1T/KTFOL4X2A==",
      "dev": true,
      "requires": {
        "aproba": "^1.1.1",
        "fs-write-stream-atomic": "^1.0.8",
        "iferr": "^0.1.5",
        "mkdirp": "^0.5.1",
        "rimraf": "^2.5.4",
        "run-queue": "^1.0.0"
      }
    },
    "copy-descriptor": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/copy-descriptor/-/copy-descriptor-0.1.1.tgz",
      "integrity": "sha1-Z29us8OZl8LuGsOpJP1hJHSPV40=",
      "dev": true
    },
    "copy-webpack-plugin": {
      "version": "4.5.4",
      "resolved": "https://registry.npmjs.org/copy-webpack-plugin/-/copy-webpack-plugin-4.5.4.tgz",
      "integrity": "sha512-0lstlEyj74OAtYMrDxlNZsU7cwFijAI3Ofz2fD6Mpo9r4xCv4yegfa3uHIKvZY1NSuOtE9nvG6TAhJ+uz9gDaQ==",
      "dev": true,
      "requires": {
        "cacache": "^10.0.4",
        "find-cache-dir": "^1.0.0",
        "globby": "^7.1.1",
        "is-glob": "^4.0.0",
        "loader-utils": "^1.1.0",
        "minimatch": "^3.0.4",
        "p-limit": "^1.0.0",
        "serialize-javascript": "^1.4.0"
      }
    },
    "core-js": {
      "version": "2.6.11",
      "resolved": "https://registry.npmjs.org/core-js/-/core-js-2.6.11.tgz",
      "integrity": "sha512-5wjnpaT/3dV+XB4borEsnAYQchn00XSgTAWKDkEqv+K8KevjbzmofK6hfJ9TZIlpj2N0xQpazy7PiRQiWHqzWg=="
    },
    "core-util-is": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/core-util-is/-/core-util-is-1.0.2.tgz",
      "integrity": "sha1-tf1UIgqivFq1eqtxQMlAdUUDwac=",
      "dev": true
    },
    "cosmiconfig": {
      "version": "5.2.1",
      "resolved": "https://registry.npmjs.org/cosmiconfig/-/cosmiconfig-5.2.1.tgz",
      "integrity": "sha512-H65gsXo1SKjf8zmrJ67eJk8aIRKV5ff2D4uKZIBZShbhGSpEmsQOPW/SKMKYhSTrqR7ufy6RP69rPogdaPh/kA==",
      "dev": true,
      "requires": {
        "import-fresh": "^2.0.0",
        "is-directory": "^0.3.1",
        "js-yaml": "^3.13.1",
        "parse-json": "^4.0.0"
      },
      "dependencies": {
        "parse-json": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/parse-json/-/parse-json-4.0.0.tgz",
          "integrity": "sha1-vjX1Qlvh9/bHRxhPmKeIy5lHfuA=",
          "dev": true,
          "requires": {
            "error-ex": "^1.3.1",
            "json-parse-better-errors": "^1.0.1"
          }
        }
      }
    },
    "create-ecdh": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/create-ecdh/-/create-ecdh-4.0.3.tgz",
      "integrity": "sha512-GbEHQPMOswGpKXM9kCWVrremUcBmjteUaQ01T9rkKCPDXfUHX0IoP9LpHYo2NPFampa4e+/pFDc3jQdxrxQLaw==",
      "dev": true,
      "requires": {
        "bn.js": "^4.1.0",
        "elliptic": "^6.0.0"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "create-hash": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/create-hash/-/create-hash-1.2.0.tgz",
      "integrity": "sha512-z00bCGNHDG8mHAkP7CtT1qVu+bFQUPjYq/4Iv3C3kWjTFV10zIjfSoeqXo9Asws8gwSHDGj/hl2u4OGIjapeCg==",
      "dev": true,
      "requires": {
        "cipher-base": "^1.0.1",
        "inherits": "^2.0.1",
        "md5.js": "^1.3.4",
        "ripemd160": "^2.0.1",
        "sha.js": "^2.4.0"
      }
    },
    "create-hmac": {
      "version": "1.1.7",
      "resolved": "https://registry.npmjs.org/create-hmac/-/create-hmac-1.1.7.tgz",
      "integrity": "sha512-MJG9liiZ+ogc4TzUwuvbER1JRdgvUFSB5+VR/g5h82fGaIRWMWddtKBHi7/sVhfjQZ6SehlyhvQYrcYkaUIpLg==",
      "dev": true,
      "requires": {
        "cipher-base": "^1.0.3",
        "create-hash": "^1.1.0",
        "inherits": "^2.0.1",
        "ripemd160": "^2.0.0",
        "safe-buffer": "^5.0.1",
        "sha.js": "^2.4.8"
      }
    },
    "cross-spawn": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-3.0.1.tgz",
      "integrity": "sha1-ElYDfsufDF9549bvE14wdwGEuYI=",
      "dev": true,
      "optional": true,
      "requires": {
        "lru-cache": "^4.0.1",
        "which": "^1.2.9"
      }
    },
    "crypto-browserify": {
      "version": "3.12.0",
      "resolved": "https://registry.npmjs.org/crypto-browserify/-/crypto-browserify-3.12.0.tgz",
      "integrity": "sha512-fz4spIh+znjO2VjL+IdhEpRJ3YN6sMzITSBijk6FK2UvTqruSQW+/cCZTSNsMiZNvUeq0CqurF+dAbyiGOY6Wg==",
      "dev": true,
      "requires": {
        "browserify-cipher": "^1.0.0",
        "browserify-sign": "^4.0.0",
        "create-ecdh": "^4.0.0",
        "create-hash": "^1.1.0",
        "create-hmac": "^1.1.0",
        "diffie-hellman": "^5.0.0",
        "inherits": "^2.0.1",
        "pbkdf2": "^3.0.3",
        "public-encrypt": "^4.0.0",
        "randombytes": "^2.0.0",
        "randomfill": "^1.0.3"
      }
    },
    "css-parse": {
      "version": "1.7.0",
      "resolved": "https://registry.npmjs.org/css-parse/-/css-parse-1.7.0.tgz",
      "integrity": "sha1-Mh9s9zeCpv91ERE5D8BeLGV9jJs=",
      "dev": true
    },
    "css-selector-tokenizer": {
      "version": "0.7.2",
      "resolved": "https://registry.npmjs.org/css-selector-tokenizer/-/css-selector-tokenizer-0.7.2.tgz",
      "integrity": "sha512-yj856NGuAymN6r8bn8/Jl46pR+OC3eEvAhfGYDUe7YPtTPAYrSSw4oAniZ9Y8T5B92hjhwTBLUen0/vKPxf6pw==",
      "dev": true,
      "requires": {
        "cssesc": "^3.0.0",
        "fastparse": "^1.1.2",
        "regexpu-core": "^4.6.0"
      }
    },
    "cssauron": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/cssauron/-/cssauron-1.4.0.tgz",
      "integrity": "sha1-pmAt/34EqDBtwNuaVR6S6LVmKtg=",
      "dev": true,
      "requires": {
        "through": "X.X.X"
      }
    },
    "cssesc": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/cssesc/-/cssesc-3.0.0.tgz",
      "integrity": "sha512-/Tb/JcjK111nNScGob5MNtsntNM1aCNUDipB/TkwZFhyDrrE47SOx/18wF2bbjgc3ZzCSKW1T5nt5EbFoAz/Vg==",
      "dev": true
    },
    "currently-unhandled": {
      "version": "0.4.1",
      "resolved": "https://registry.npmjs.org/currently-unhandled/-/currently-unhandled-0.4.1.tgz",
      "integrity": "sha1-mI3zP+qxke95mmE2nddsF635V+o=",
      "dev": true,
      "requires": {
        "array-find-index": "^1.0.1"
      }
    },
    "custom-event": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/custom-event/-/custom-event-1.0.1.tgz",
      "integrity": "sha1-XQKkaFCt8bSjF5RqOSj8y1v9BCU=",
      "dev": true
    },
    "cyclist": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/cyclist/-/cyclist-1.0.1.tgz",
      "integrity": "sha1-WW6WmP0MgOEgOMK4LW6xs1tiJNk=",
      "dev": true
    },
    "dashdash": {
      "version": "1.14.1",
      "resolved": "https://registry.npmjs.org/dashdash/-/dashdash-1.14.1.tgz",
      "integrity": "sha1-hTz6D3y+L+1d4gMmuN1YEDX24vA=",
      "dev": true,
      "requires": {
        "assert-plus": "^1.0.0"
      }
    },
    "date-format": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/date-format/-/date-format-1.2.0.tgz",
      "integrity": "sha1-YV6CjiM90aubua4JUODOzPpuytg=",
      "dev": true
    },
    "debug": {
      "version": "2.6.9",
      "resolved": "https://registry.npmjs.org/debug/-/debug-2.6.9.tgz",
      "integrity": "sha512-bC7ElrdJaJnPbAP+1EotYvqZsb3ecl5wi6Bfi6BJTUcNowp6cvspg0jXznRTKDjm/E7AdgFBVeAPVMNcKGsHMA==",
      "dev": true,
      "requires": {
        "ms": "2.0.0"
      }
    },
    "decamelize": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/decamelize/-/decamelize-1.2.0.tgz",
      "integrity": "sha1-9lNNFRSCabIDUue+4m9QH5oZEpA=",
      "dev": true
    },
    "decode-uri-component": {
      "version": "0.2.0",
      "resolved": "https://registry.npmjs.org/decode-uri-component/-/decode-uri-component-0.2.0.tgz",
      "integrity": "sha1-6zkTMzRYd1y4TNGh+uBiEGu4dUU=",
      "dev": true
    },
    "deep-equal": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/deep-equal/-/deep-equal-1.1.1.tgz",
      "integrity": "sha512-yd9c5AdiqVcR+JjcwUQb9DkhJc8ngNr0MahEBGvDiJw8puWab2yZlh+nkasOnZP+EGTAP6rRp2JzJhJZzvNF8g==",
      "dev": true,
      "requires": {
        "is-arguments": "^1.0.4",
        "is-date-object": "^1.0.1",
        "is-regex": "^1.0.4",
        "object-is": "^1.0.1",
        "object-keys": "^1.1.1",
        "regexp.prototype.flags": "^1.2.0"
      }
    },
    "deep-is": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/deep-is/-/deep-is-0.1.3.tgz",
      "integrity": "sha1-s2nW+128E+7PUk+RsHD+7cNXzzQ=",
      "dev": true
    },
    "default-gateway": {
      "version": "2.7.2",
      "resolved": "https://registry.npmjs.org/default-gateway/-/default-gateway-2.7.2.tgz",
      "integrity": "sha512-lAc4i9QJR0YHSDFdzeBQKfZ1SRDG3hsJNEkrpcZa8QhBfidLAilT60BDEIVUUGqosFp425KOgB3uYqcnQrWafQ==",
      "dev": true,
      "requires": {
        "execa": "^0.10.0",
        "ip-regex": "^2.1.0"
      },
      "dependencies": {
        "cross-spawn": {
          "version": "6.0.5",
          "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-6.0.5.tgz",
          "integrity": "sha512-eTVLrBSt7fjbDygz805pMnstIs2VTBNkRm0qxZd+M7A5XDdxVRWO5MxGBXZhjY4cqLYLdtrGqRf8mBPmzwSpWQ==",
          "dev": true,
          "requires": {
            "nice-try": "^1.0.4",
            "path-key": "^2.0.1",
            "semver": "^5.5.0",
            "shebang-command": "^1.2.0",
            "which": "^1.2.9"
          }
        },
        "execa": {
          "version": "0.10.0",
          "resolved": "https://registry.npmjs.org/execa/-/execa-0.10.0.tgz",
          "integrity": "sha512-7XOMnz8Ynx1gGo/3hyV9loYNPWM94jG3+3T3Y8tsfSstFmETmENCMU/A/zj8Lyaj1lkgEepKepvd6240tBRvlw==",
          "dev": true,
          "requires": {
            "cross-spawn": "^6.0.0",
            "get-stream": "^3.0.0",
            "is-stream": "^1.1.0",
            "npm-run-path": "^2.0.0",
            "p-finally": "^1.0.0",
            "signal-exit": "^3.0.0",
            "strip-eof": "^1.0.0"
          }
        },
        "get-stream": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/get-stream/-/get-stream-3.0.0.tgz",
          "integrity": "sha1-jpQ9E1jcN1VQVOy+LtsFqhdO3hQ=",
          "dev": true
        }
      }
    },
    "default-require-extensions": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/default-require-extensions/-/default-require-extensions-2.0.0.tgz",
      "integrity": "sha1-9fj7sYp9bVCyH2QfZJ67Uiz+JPc=",
      "dev": true,
      "requires": {
        "strip-bom": "^3.0.0"
      },
      "dependencies": {
        "strip-bom": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/strip-bom/-/strip-bom-3.0.0.tgz",
          "integrity": "sha1-IzTBjpx1n3vdVv3vfprj1YjmjtM=",
          "dev": true
        }
      }
    },
    "define-properties": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/define-properties/-/define-properties-1.1.3.tgz",
      "integrity": "sha512-3MqfYKj2lLzdMSf8ZIZE/V+Zuy+BgD6f164e8K2w7dgnpKArBDerGYpM46IYYcjnkdPNMjPk9A6VFB8+3SKlXQ==",
      "dev": true,
      "requires": {
        "object-keys": "^1.0.12"
      }
    },
    "define-property": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/define-property/-/define-property-2.0.2.tgz",
      "integrity": "sha512-jwK2UV4cnPpbcG7+VRARKTZPUWowwXA8bzH5NP6ud0oeAxyYPuGZUAC7hMugpCdz4BeSZl2Dl9k66CHJ/46ZYQ==",
      "dev": true,
      "requires": {
        "is-descriptor": "^1.0.2",
        "isobject": "^3.0.1"
      },
      "dependencies": {
        "is-accessor-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz",
          "integrity": "sha512-m5hnHTkcVsPfqx3AKlyttIPb7J+XykHvJP2B9bZDjlhLIoEq4XoK64Vg7boZlVWYK6LUY94dYPEE7Lh0ZkZKcQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-data-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz",
          "integrity": "sha512-jbRXy1FmtAoCjQkVmIVYwuuqDFUbaOeDjmed1tOGPrsMhtJA4rD9tkgA0F1qJ3gRFRXcHYVkdeaP50Q5rE/jLQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-descriptor": {
          "version": "1.0.2",
          "resolved": "https://registry.npmjs.org/is-descriptor/-/is-descriptor-1.0.2.tgz",
          "integrity": "sha512-2eis5WqQGV7peooDyLmNEPUrps9+SXX5c9pL3xEB+4e9HnGuDa7mB7kHxHw4CbqS9k1T2hOH3miL8n8WtiYVtg==",
          "dev": true,
          "requires": {
            "is-accessor-descriptor": "^1.0.0",
            "is-data-descriptor": "^1.0.0",
            "kind-of": "^6.0.2"
          }
        }
      }
    },
    "del": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/del/-/del-3.0.0.tgz",
      "integrity": "sha1-U+z2mf/LyzljdpGrE7rxYIGXZuU=",
      "dev": true,
      "requires": {
        "globby": "^6.1.0",
        "is-path-cwd": "^1.0.0",
        "is-path-in-cwd": "^1.0.0",
        "p-map": "^1.1.1",
        "pify": "^3.0.0",
        "rimraf": "^2.2.8"
      },
      "dependencies": {
        "globby": {
          "version": "6.1.0",
          "resolved": "https://registry.npmjs.org/globby/-/globby-6.1.0.tgz",
          "integrity": "sha1-9abXDoOV4hyFj7BInWTfAkJNUGw=",
          "dev": true,
          "requires": {
            "array-union": "^1.0.1",
            "glob": "^7.0.3",
            "object-assign": "^4.0.1",
            "pify": "^2.0.0",
            "pinkie-promise": "^2.0.0"
          },
          "dependencies": {
            "pify": {
              "version": "2.3.0",
              "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
              "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
              "dev": true
            }
          }
        }
      }
    },
    "delayed-stream": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/delayed-stream/-/delayed-stream-1.0.0.tgz",
      "integrity": "sha1-3zrhmayt+31ECqrgsp4icrJOxhk=",
      "dev": true
    },
    "delegates": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/delegates/-/delegates-1.0.0.tgz",
      "integrity": "sha1-hMbhWbgZBP3KWaDvRM2HDTElD5o=",
      "dev": true,
      "optional": true
    },
    "depd": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/depd/-/depd-1.1.2.tgz",
      "integrity": "sha1-m81S4UwJd2PnSbJ0xDRu0uVgtak=",
      "dev": true
    },
    "dependency-graph": {
      "version": "0.7.2",
      "resolved": "https://registry.npmjs.org/dependency-graph/-/dependency-graph-0.7.2.tgz",
      "integrity": "sha512-KqtH4/EZdtdfWX0p6MGP9jljvxSY6msy/pRUD4jgNwVpv3v1QmNLlsB3LDSSUg79BRVSn7jI1QPRtArGABovAQ==",
      "dev": true
    },
    "des.js": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/des.js/-/des.js-1.0.1.tgz",
      "integrity": "sha512-Q0I4pfFrv2VPd34/vfLrFOoRmlYj3OV50i7fskps1jZWK1kApMWWT9G6RRUeYedLcBDIhnSDaUvJMb3AhUlaEA==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.1",
        "minimalistic-assert": "^1.0.0"
      }
    },
    "destroy": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/destroy/-/destroy-1.0.4.tgz",
      "integrity": "sha1-l4hXRCxEdJ5CBmE+N5RiBYJqvYA=",
      "dev": true
    },
    "detect-indent": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/detect-indent/-/detect-indent-4.0.0.tgz",
      "integrity": "sha1-920GQ1LN9Docts5hnE7jqUdd4gg=",
      "dev": true,
      "requires": {
        "repeating": "^2.0.0"
      }
    },
    "detect-node": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/detect-node/-/detect-node-2.0.4.tgz",
      "integrity": "sha512-ZIzRpLJrOj7jjP2miAtgqIfmzbxa4ZOr5jJc601zklsfEx9oTzmmj2nVpIPRpNlRTIh8lc1kyViIY7BWSGNmKw==",
      "dev": true
    },
    "di": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/di/-/di-0.0.1.tgz",
      "integrity": "sha1-gGZJMmzqp8qjMG112YXqJ0i6kTw=",
      "dev": true
    },
    "diff": {
      "version": "3.5.0",
      "resolved": "https://registry.npmjs.org/diff/-/diff-3.5.0.tgz",
      "integrity": "sha512-A46qtFgd+g7pDZinpnwiRJtxbC1hpgf0uzP3iG89scHk0AUC7A1TGxf5OiiOUv/JMZR8GOt8hL900hV0bOy5xA==",
      "dev": true
    },
    "diffie-hellman": {
      "version": "5.0.3",
      "resolved": "https://registry.npmjs.org/diffie-hellman/-/diffie-hellman-5.0.3.tgz",
      "integrity": "sha512-kqag/Nl+f3GwyK25fhUMYj81BUOrZ9IuJsjIcDE5icNM9FJHAVm3VcUDxdLPoQtTuUylWm6ZIknYJwwaPxsUzg==",
      "dev": true,
      "requires": {
        "bn.js": "^4.1.0",
        "miller-rabin": "^4.0.0",
        "randombytes": "^2.0.0"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "dir-glob": {
      "version": "2.2.2",
      "resolved": "https://registry.npmjs.org/dir-glob/-/dir-glob-2.2.2.tgz",
      "integrity": "sha512-f9LBi5QWzIW3I6e//uxZoLBlUt9kcp66qo0sSCxL6YZKc75R1c4MFCoe/LaZiBGmgujvQdxc5Bn3QhfyvK5Hsw==",
      "dev": true,
      "requires": {
        "path-type": "^3.0.0"
      }
    },
    "dns-equal": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/dns-equal/-/dns-equal-1.0.0.tgz",
      "integrity": "sha1-s55/HabrCnW6nBcySzR1PEfgZU0=",
      "dev": true
    },
    "dns-packet": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/dns-packet/-/dns-packet-1.3.1.tgz",
      "integrity": "sha512-0UxfQkMhYAUaZI+xrNZOz/as5KgDU0M/fQ9b6SpkyLbk3GEswDi6PADJVaYJradtRVsRIlF1zLyOodbcTCDzUg==",
      "dev": true,
      "requires": {
        "ip": "^1.1.0",
        "safe-buffer": "^5.0.1"
      }
    },
    "dns-txt": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/dns-txt/-/dns-txt-2.0.2.tgz",
      "integrity": "sha1-uR2Ab10nGI5Ks+fRB9iBocxGQrY=",
      "dev": true,
      "requires": {
        "buffer-indexof": "^1.0.0"
      }
    },
    "dom-serialize": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/dom-serialize/-/dom-serialize-2.2.1.tgz",
      "integrity": "sha1-ViromZ9Evl6jB29UGdzVnrQ6yVs=",
      "dev": true,
      "requires": {
        "custom-event": "~1.0.0",
        "ent": "~2.2.0",
        "extend": "^3.0.0",
        "void-elements": "^2.0.0"
      }
    },
    "domain-browser": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/domain-browser/-/domain-browser-1.2.0.tgz",
      "integrity": "sha512-jnjyiM6eRyZl2H+W8Q/zLMA481hzi0eszAaBUzIVnmYVDBbnLxVNnfu1HgEBvCbL+71FrxMl3E6lpKH7Ge3OXA==",
      "dev": true
    },
    "duplexify": {
      "version": "3.7.1",
      "resolved": "https://registry.npmjs.org/duplexify/-/duplexify-3.7.1.tgz",
      "integrity": "sha512-07z8uv2wMyS51kKhD1KsdXJg5WQ6t93RneqRxUHnskXVtlYYkLqM0gqStQZ3pj073g687jPCHrqNfCzawLYh5g==",
      "dev": true,
      "requires": {
        "end-of-stream": "^1.0.0",
        "inherits": "^2.0.1",
        "readable-stream": "^2.0.0",
        "stream-shift": "^1.0.0"
      }
    },
    "ecc-jsbn": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz",
      "integrity": "sha1-OoOpBOVDUyh4dMVkt1SThoSamMk=",
      "dev": true,
      "requires": {
        "jsbn": "~0.1.0",
        "safer-buffer": "^2.1.0"
      }
    },
    "ee-first": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/ee-first/-/ee-first-1.1.1.tgz",
      "integrity": "sha1-WQxhFWsK4vTwJVcyoViyZrxWsh0=",
      "dev": true
    },
    "electron-to-chromium": {
      "version": "1.3.434",
      "resolved": "https://registry.npmjs.org/electron-to-chromium/-/electron-to-chromium-1.3.434.tgz",
      "integrity": "sha512-WjzGrE6appXvMyc2kH9Ide7OxsgTuRzag9sjQ5AcbOnbS9ut7P1HzOeEbJFLhr81IR7n2Hlr6qTTSGTXLIX5Pg==",
      "dev": true
    },
    "elliptic": {
      "version": "6.5.2",
      "resolved": "https://registry.npmjs.org/elliptic/-/elliptic-6.5.2.tgz",
      "integrity": "sha512-f4x70okzZbIQl/NSRLkI/+tteV/9WqL98zx+SQ69KbXxmVrmjwsNUPn/gYJJ0sHvEak24cZgHIPegRePAtA/xw==",
      "dev": true,
      "requires": {
        "bn.js": "^4.4.0",
        "brorand": "^1.0.1",
        "hash.js": "^1.0.0",
        "hmac-drbg": "^1.0.0",
        "inherits": "^2.0.1",
        "minimalistic-assert": "^1.0.0",
        "minimalistic-crypto-utils": "^1.0.0"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "emojis-list": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/emojis-list/-/emojis-list-2.1.0.tgz",
      "integrity": "sha1-TapNnbAPmBmIDHn6RXrlsJof04k=",
      "dev": true
    },
    "encodeurl": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/encodeurl/-/encodeurl-1.0.2.tgz",
      "integrity": "sha1-rT/0yG7C0CkyL1oCw6mmBslbP1k=",
      "dev": true
    },
    "end-of-stream": {
      "version": "1.4.4",
      "resolved": "https://registry.npmjs.org/end-of-stream/-/end-of-stream-1.4.4.tgz",
      "integrity": "sha512-+uw1inIHVPQoaVuHzRyXd21icM+cnt4CzD5rW+NC1wjOUSTOs+Te7FOv7AhN7vS9x/oIyhLP5PR1H+phQAHu5Q==",
      "dev": true,
      "requires": {
        "once": "^1.4.0"
      }
    },
    "engine.io": {
      "version": "3.2.1",
      "resolved": "https://registry.npmjs.org/engine.io/-/engine.io-3.2.1.tgz",
      "integrity": "sha512-+VlKzHzMhaU+GsCIg4AoXF1UdDFjHHwMmMKqMJNDNLlUlejz58FCy4LBqB2YVJskHGYl06BatYWKP2TVdVXE5w==",
      "dev": true,
      "requires": {
        "accepts": "~1.3.4",
        "base64id": "1.0.0",
        "cookie": "0.3.1",
        "debug": "~3.1.0",
        "engine.io-parser": "~2.1.0",
        "ws": "~3.3.1"
      },
      "dependencies": {
        "cookie": {
          "version": "0.3.1",
          "resolved": "https://registry.npmjs.org/cookie/-/cookie-0.3.1.tgz",
          "integrity": "sha1-5+Ch+e9DtMi6klxcWpboBtFoc7s=",
          "dev": true
        },
        "debug": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
          "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "engine.io-client": {
      "version": "3.2.1",
      "resolved": "https://registry.npmjs.org/engine.io-client/-/engine.io-client-3.2.1.tgz",
      "integrity": "sha512-y5AbkytWeM4jQr7m/koQLc5AxpRKC1hEVUb/s1FUAWEJq5AzJJ4NLvzuKPuxtDi5Mq755WuDvZ6Iv2rXj4PTzw==",
      "dev": true,
      "requires": {
        "component-emitter": "1.2.1",
        "component-inherit": "0.0.3",
        "debug": "~3.1.0",
        "engine.io-parser": "~2.1.1",
        "has-cors": "1.1.0",
        "indexof": "0.0.1",
        "parseqs": "0.0.5",
        "parseuri": "0.0.5",
        "ws": "~3.3.1",
        "xmlhttprequest-ssl": "~1.5.4",
        "yeast": "0.1.2"
      },
      "dependencies": {
        "component-emitter": {
          "version": "1.2.1",
          "resolved": "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz",
          "integrity": "sha1-E3kY1teCg/ffemt8WmPhQOaUJeY=",
          "dev": true
        },
        "debug": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
          "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "engine.io-parser": {
      "version": "2.1.3",
      "resolved": "https://registry.npmjs.org/engine.io-parser/-/engine.io-parser-2.1.3.tgz",
      "integrity": "sha512-6HXPre2O4Houl7c4g7Ic/XzPnHBvaEmN90vtRO9uLmwtRqQmTOw0QMevL1TOfL2Cpu1VzsaTmMotQgMdkzGkVA==",
      "dev": true,
      "requires": {
        "after": "0.8.2",
        "arraybuffer.slice": "~0.0.7",
        "base64-arraybuffer": "0.1.5",
        "blob": "0.0.5",
        "has-binary2": "~1.0.2"
      }
    },
    "enhanced-resolve": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/enhanced-resolve/-/enhanced-resolve-4.1.0.tgz",
      "integrity": "sha512-F/7vkyTtyc/llOIn8oWclcB25KdRaiPBpZYDgJHgh/UHtpgT2p2eldQgtQnLtUvfMKPKxbRaQM/hHkvLHt1Vng==",
      "dev": true,
      "requires": {
        "graceful-fs": "^4.1.2",
        "memory-fs": "^0.4.0",
        "tapable": "^1.0.0"
      }
    },
    "ent": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/ent/-/ent-2.2.0.tgz",
      "integrity": "sha1-6WQhkyWiHQX0RGai9obtbOX13R0=",
      "dev": true
    },
    "errno": {
      "version": "0.1.7",
      "resolved": "https://registry.npmjs.org/errno/-/errno-0.1.7.tgz",
      "integrity": "sha512-MfrRBDWzIWifgq6tJj60gkAwtLNb6sQPlcFrSOflcP1aFmmruKQ2wRnze/8V6kgyz7H3FF8Npzv78mZ7XLLflg==",
      "dev": true,
      "requires": {
        "prr": "~1.0.1"
      }
    },
    "error-ex": {
      "version": "1.3.2",
      "resolved": "https://registry.npmjs.org/error-ex/-/error-ex-1.3.2.tgz",
      "integrity": "sha512-7dFHNmqeFSEt2ZBsCriorKnn3Z2pj+fd9kmI6QoWw4//DL+icEBfc0U7qJCisqrTsKTjw4fNFy2pW9OqStD84g==",
      "dev": true,
      "requires": {
        "is-arrayish": "^0.2.1"
      }
    },
    "es-abstract": {
      "version": "1.17.5",
      "resolved": "https://registry.npmjs.org/es-abstract/-/es-abstract-1.17.5.tgz",
      "integrity": "sha512-BR9auzDbySxOcfog0tLECW8l28eRGpDpU3Dm3Hp4q/N+VtLTmyj4EUN088XZWQDW/hzj6sYRDXeOFsaAODKvpg==",
      "dev": true,
      "requires": {
        "es-to-primitive": "^1.2.1",
        "function-bind": "^1.1.1",
        "has": "^1.0.3",
        "has-symbols": "^1.0.1",
        "is-callable": "^1.1.5",
        "is-regex": "^1.0.5",
        "object-inspect": "^1.7.0",
        "object-keys": "^1.1.1",
        "object.assign": "^4.1.0",
        "string.prototype.trimleft": "^2.1.1",
        "string.prototype.trimright": "^2.1.1"
      }
    },
    "es-to-primitive": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/es-to-primitive/-/es-to-primitive-1.2.1.tgz",
      "integrity": "sha512-QCOllgZJtaUo9miYBcLChTUaHNjJF3PYs1VidD7AwiEj1kYxKeQTctLAezAOH5ZKRH0g2IgPn6KwB4IT8iRpvA==",
      "dev": true,
      "requires": {
        "is-callable": "^1.1.4",
        "is-date-object": "^1.0.1",
        "is-symbol": "^1.0.2"
      }
    },
    "es6-promise": {
      "version": "4.2.8",
      "resolved": "https://registry.npmjs.org/es6-promise/-/es6-promise-4.2.8.tgz",
      "integrity": "sha512-HJDGx5daxeIvxdBxvG2cb9g4tEvwIk3i8+nhX0yGrYmZUzbkdg8QbDevheDB8gd0//uPj4c1EQua8Q+MViT0/w==",
      "dev": true
    },
    "es6-promisify": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/es6-promisify/-/es6-promisify-5.0.0.tgz",
      "integrity": "sha1-UQnWLz5W6pZ8S2NQWu8IKRyKUgM=",
      "dev": true,
      "requires": {
        "es6-promise": "^4.0.3"
      }
    },
    "escape-html": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/escape-html/-/escape-html-1.0.3.tgz",
      "integrity": "sha1-Aljq5NPQwJdN4cFpGI7wBR0dGYg=",
      "dev": true
    },
    "escape-string-regexp": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz",
      "integrity": "sha1-G2HAViGQqN/2rjuyzwIAyhMLhtQ=",
      "dev": true
    },
    "escodegen": {
      "version": "1.8.1",
      "resolved": "https://registry.npmjs.org/escodegen/-/escodegen-1.8.1.tgz",
      "integrity": "sha1-WltTr0aTEQvrsIZ6o0MN07cKEBg=",
      "dev": true,
      "requires": {
        "esprima": "^2.7.1",
        "estraverse": "^1.9.1",
        "esutils": "^2.0.2",
        "optionator": "^0.8.1",
        "source-map": "~0.2.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.2.0",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.2.0.tgz",
          "integrity": "sha1-2rc/vPwrqBm03gO9b26qSBZLP50=",
          "dev": true,
          "optional": true,
          "requires": {
            "amdefine": ">=0.0.4"
          }
        }
      }
    },
    "eslint-scope": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/eslint-scope/-/eslint-scope-4.0.3.tgz",
      "integrity": "sha512-p7VutNr1O/QrxysMo3E45FjYDTeXBy0iTltPFNSqKAIfjDSXC+4dj+qfyuD8bfAXrW/y6lW3O76VaYNPKfpKrg==",
      "dev": true,
      "requires": {
        "esrecurse": "^4.1.0",
        "estraverse": "^4.1.1"
      },
      "dependencies": {
        "estraverse": {
          "version": "4.3.0",
          "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-4.3.0.tgz",
          "integrity": "sha512-39nnKffWz8xN1BU/2c79n9nB9HDzo0niYUqx6xyqUnyoAnQyyWpOTdZEeiCch8BBu515t4wp9ZmgVfVhn9EBpw==",
          "dev": true
        }
      }
    },
    "esprima": {
      "version": "2.7.3",
      "resolved": "https://registry.npmjs.org/esprima/-/esprima-2.7.3.tgz",
      "integrity": "sha1-luO3DVd59q1JzQMmc9HDEnZ7pYE=",
      "dev": true
    },
    "esrecurse": {
      "version": "4.2.1",
      "resolved": "https://registry.npmjs.org/esrecurse/-/esrecurse-4.2.1.tgz",
      "integrity": "sha512-64RBB++fIOAXPw3P9cy89qfMlvZEXZkqqJkjqqXIvzP5ezRZjW+lPWjw35UX/3EhUPFYbg5ER4JYgDw4007/DQ==",
      "dev": true,
      "requires": {
        "estraverse": "^4.1.0"
      },
      "dependencies": {
        "estraverse": {
          "version": "4.3.0",
          "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-4.3.0.tgz",
          "integrity": "sha512-39nnKffWz8xN1BU/2c79n9nB9HDzo0niYUqx6xyqUnyoAnQyyWpOTdZEeiCch8BBu515t4wp9ZmgVfVhn9EBpw==",
          "dev": true
        }
      }
    },
    "estraverse": {
      "version": "1.9.3",
      "resolved": "https://registry.npmjs.org/estraverse/-/estraverse-1.9.3.tgz",
      "integrity": "sha1-r2fy3JIlgkFZUJJgkaQAXSnJu0Q=",
      "dev": true
    },
    "esutils": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/esutils/-/esutils-2.0.3.tgz",
      "integrity": "sha512-kVscqXk4OCp68SZ0dkgEKVi6/8ij300KBWTJq32P/dYeWTSwK41WyTxalN1eRmA5Z9UU/LX9D7FWSmV9SAYx6g==",
      "dev": true
    },
    "etag": {
      "version": "1.8.1",
      "resolved": "https://registry.npmjs.org/etag/-/etag-1.8.1.tgz",
      "integrity": "sha1-Qa4u62XvpiJorr/qg6x9eSmbCIc=",
      "dev": true
    },
    "eventemitter3": {
      "version": "4.0.4",
      "resolved": "https://registry.npmjs.org/eventemitter3/-/eventemitter3-4.0.4.tgz",
      "integrity": "sha512-rlaVLnVxtxvoyLsQQFBx53YmXHDxRIzzTLbdfxqi4yocpSjAxXwkU0cScM5JgSKMqEhrZpnvQ2D9gjylR0AimQ==",
      "dev": true
    },
    "events": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/events/-/events-3.1.0.tgz",
      "integrity": "sha512-Rv+u8MLHNOdMjTAFeT3nCjHn2aGlx435FP/sDHNaRhDEMwyI/aB22Kj2qIN8R0cw3z28psEQLYwxVKLsKrMgWg==",
      "dev": true
    },
    "eventsource": {
      "version": "0.1.6",
      "resolved": "https://registry.npmjs.org/eventsource/-/eventsource-0.1.6.tgz",
      "integrity": "sha1-Cs7ehJ7X3RzMMsgRuxG5RNTykjI=",
      "dev": true,
      "requires": {
        "original": ">=0.0.5"
      }
    },
    "evp_bytestokey": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/evp_bytestokey/-/evp_bytestokey-1.0.3.tgz",
      "integrity": "sha512-/f2Go4TognH/KvCISP7OUsHn85hT9nUkxxA9BEWxFn+Oj9o8ZNLm/40hdlgSLyuOimsrTKLUMEorQexp/aPQeA==",
      "dev": true,
      "requires": {
        "md5.js": "^1.3.4",
        "safe-buffer": "^5.1.1"
      }
    },
    "execa": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/execa/-/execa-1.0.0.tgz",
      "integrity": "sha512-adbxcyWV46qiHyvSp50TKt05tB4tK3HcmF7/nxfAdhnox83seTDbwnaqKO4sXRy7roHAIFqJP/Rw/AuEbX61LA==",
      "dev": true,
      "requires": {
        "cross-spawn": "^6.0.0",
        "get-stream": "^4.0.0",
        "is-stream": "^1.1.0",
        "npm-run-path": "^2.0.0",
        "p-finally": "^1.0.0",
        "signal-exit": "^3.0.0",
        "strip-eof": "^1.0.0"
      },
      "dependencies": {
        "cross-spawn": {
          "version": "6.0.5",
          "resolved": "https://registry.npmjs.org/cross-spawn/-/cross-spawn-6.0.5.tgz",
          "integrity": "sha512-eTVLrBSt7fjbDygz805pMnstIs2VTBNkRm0qxZd+M7A5XDdxVRWO5MxGBXZhjY4cqLYLdtrGqRf8mBPmzwSpWQ==",
          "dev": true,
          "requires": {
            "nice-try": "^1.0.4",
            "path-key": "^2.0.1",
            "semver": "^5.5.0",
            "shebang-command": "^1.2.0",
            "which": "^1.2.9"
          }
        }
      }
    },
    "exit": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/exit/-/exit-0.1.2.tgz",
      "integrity": "sha1-BjJjj42HfMghB9MKD/8aF8uhzQw=",
      "dev": true
    },
    "expand-braces": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/expand-braces/-/expand-braces-0.1.2.tgz",
      "integrity": "sha1-SIsdHSRRyz06axks/AMPRMWFX+o=",
      "dev": true,
      "requires": {
        "array-slice": "^0.2.3",
        "array-unique": "^0.2.1",
        "braces": "^0.1.2"
      },
      "dependencies": {
        "array-unique": {
          "version": "0.2.1",
          "resolved": "https://registry.npmjs.org/array-unique/-/array-unique-0.2.1.tgz",
          "integrity": "sha1-odl8yvy8JiXMcPrc6zalDFiwGlM=",
          "dev": true
        },
        "braces": {
          "version": "0.1.5",
          "resolved": "https://registry.npmjs.org/braces/-/braces-0.1.5.tgz",
          "integrity": "sha1-wIVxEIUpHYt1/ddOqw+FlygHEeY=",
          "dev": true,
          "requires": {
            "expand-range": "^0.1.0"
          }
        },
        "expand-range": {
          "version": "0.1.1",
          "resolved": "https://registry.npmjs.org/expand-range/-/expand-range-0.1.1.tgz",
          "integrity": "sha1-TLjtoJk8pW+k9B/ELzy7TMrf8EQ=",
          "dev": true,
          "requires": {
            "is-number": "^0.1.1",
            "repeat-string": "^0.2.2"
          }
        },
        "is-number": {
          "version": "0.1.1",
          "resolved": "https://registry.npmjs.org/is-number/-/is-number-0.1.1.tgz",
          "integrity": "sha1-aaevEWlj1HIG7JvZtIoUIW8eOAY=",
          "dev": true
        },
        "repeat-string": {
          "version": "0.2.2",
          "resolved": "https://registry.npmjs.org/repeat-string/-/repeat-string-0.2.2.tgz",
          "integrity": "sha1-x6jTI2BoNiBZp+RlH8aITosftK4=",
          "dev": true
        }
      }
    },
    "expand-brackets": {
      "version": "2.1.4",
      "resolved": "https://registry.npmjs.org/expand-brackets/-/expand-brackets-2.1.4.tgz",
      "integrity": "sha1-t3c14xXOMPa27/D4OwQVGiJEliI=",
      "dev": true,
      "requires": {
        "debug": "^2.3.3",
        "define-property": "^0.2.5",
        "extend-shallow": "^2.0.1",
        "posix-character-classes": "^0.1.0",
        "regex-not": "^1.0.0",
        "snapdragon": "^0.8.1",
        "to-regex": "^3.0.1"
      },
      "dependencies": {
        "define-property": {
          "version": "0.2.5",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz",
          "integrity": "sha1-w1se+RjsPJkPmlvFe+BKrOxcgRY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^0.1.0"
          }
        },
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        }
      }
    },
    "expand-range": {
      "version": "1.8.2",
      "resolved": "https://registry.npmjs.org/expand-range/-/expand-range-1.8.2.tgz",
      "integrity": "sha1-opnv/TNf4nIeuujiV+x5ZE/IUzc=",
      "dev": true,
      "requires": {
        "fill-range": "^2.1.0"
      },
      "dependencies": {
        "fill-range": {
          "version": "2.2.4",
          "resolved": "https://registry.npmjs.org/fill-range/-/fill-range-2.2.4.tgz",
          "integrity": "sha512-cnrcCbj01+j2gTG921VZPnHbjmdAf8oQV/iGeV2kZxGSyfYjjTyY79ErsK1WJWMpw6DaApEX72binqJE+/d+5Q==",
          "dev": true,
          "requires": {
            "is-number": "^2.1.0",
            "isobject": "^2.0.0",
            "randomatic": "^3.0.0",
            "repeat-element": "^1.1.2",
            "repeat-string": "^1.5.2"
          }
        },
        "is-number": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/is-number/-/is-number-2.1.0.tgz",
          "integrity": "sha1-Afy7s5NGOlSPL0ZszhbezknbkI8=",
          "dev": true,
          "requires": {
            "kind-of": "^3.0.2"
          }
        },
        "isobject": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz",
          "integrity": "sha1-8GVWEJaj8dou9GJy+BXIQNh+DIk=",
          "dev": true,
          "requires": {
            "isarray": "1.0.0"
          }
        },
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "express": {
      "version": "4.17.1",
      "resolved": "https://registry.npmjs.org/express/-/express-4.17.1.tgz",
      "integrity": "sha512-mHJ9O79RqluphRrcw2X/GTh3k9tVv8YcoyY4Kkh4WDMUYKRZUq0h1o0w2rrrxBqM7VoeUVqgb27xlEMXTnYt4g==",
      "dev": true,
      "requires": {
        "accepts": "~1.3.7",
        "array-flatten": "1.1.1",
        "body-parser": "1.19.0",
        "content-disposition": "0.5.3",
        "content-type": "~1.0.4",
        "cookie": "0.4.0",
        "cookie-signature": "1.0.6",
        "debug": "2.6.9",
        "depd": "~1.1.2",
        "encodeurl": "~1.0.2",
        "escape-html": "~1.0.3",
        "etag": "~1.8.1",
        "finalhandler": "~1.1.2",
        "fresh": "0.5.2",
        "merge-descriptors": "1.0.1",
        "methods": "~1.1.2",
        "on-finished": "~2.3.0",
        "parseurl": "~1.3.3",
        "path-to-regexp": "0.1.7",
        "proxy-addr": "~2.0.5",
        "qs": "6.7.0",
        "range-parser": "~1.2.1",
        "safe-buffer": "5.1.2",
        "send": "0.17.1",
        "serve-static": "1.14.1",
        "setprototypeof": "1.1.1",
        "statuses": "~1.5.0",
        "type-is": "~1.6.18",
        "utils-merge": "1.0.1",
        "vary": "~1.1.2"
      },
      "dependencies": {
        "array-flatten": {
          "version": "1.1.1",
          "resolved": "https://registry.npmjs.org/array-flatten/-/array-flatten-1.1.1.tgz",
          "integrity": "sha1-ml9pkFGx5wczKPKgCJaLZOopVdI=",
          "dev": true
        },
        "qs": {
          "version": "6.7.0",
          "resolved": "https://registry.npmjs.org/qs/-/qs-6.7.0.tgz",
          "integrity": "sha512-VCdBRNFTX1fyE7Nb6FYoURo/SPe62QCaAyzJvUjwRaIsc+NePBEniHlvxFmmX56+HZphIGtV0XeCirBtpDrTyQ==",
          "dev": true
        }
      }
    },
    "extend": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/extend/-/extend-3.0.2.tgz",
      "integrity": "sha512-fjquC59cD7CyW6urNXK0FBufkZcoiGG80wTuPujX590cB5Ttln20E2UB4S/WARVqhXffZl2LNgS+gQdPIIim/g==",
      "dev": true
    },
    "extend-shallow": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-3.0.2.tgz",
      "integrity": "sha1-Jqcarwc7OfshJxcnRhMcJwQCjbg=",
      "dev": true,
      "requires": {
        "assign-symbols": "^1.0.0",
        "is-extendable": "^1.0.1"
      },
      "dependencies": {
        "is-extendable": {
          "version": "1.0.1",
          "resolved": "https://registry.npmjs.org/is-extendable/-/is-extendable-1.0.1.tgz",
          "integrity": "sha512-arnXMxT1hhoKo9k1LZdmlNyJdDDfy2v0fXjFlmok4+i8ul/6WlbVge9bhM74OpNPQPMGUToDtz+KXa1PneJxOA==",
          "dev": true,
          "requires": {
            "is-plain-object": "^2.0.4"
          }
        }
      }
    },
    "external-editor": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/external-editor/-/external-editor-3.1.0.tgz",
      "integrity": "sha512-hMQ4CX1p1izmuLYyZqLMO/qGNw10wSv9QDCPfzXfyFrOaCSSoRfqE1Kf1s5an66J5JZC62NewG+mK49jOCtQew==",
      "dev": true,
      "requires": {
        "chardet": "^0.7.0",
        "iconv-lite": "^0.4.24",
        "tmp": "^0.0.33"
      }
    },
    "extglob": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/extglob/-/extglob-2.0.4.tgz",
      "integrity": "sha512-Nmb6QXkELsuBr24CJSkilo6UHHgbekK5UiZgfE6UHD3Eb27YC6oD+bhcT+tJ6cl8dmsgdQxnWlcry8ksBIBLpw==",
      "dev": true,
      "requires": {
        "array-unique": "^0.3.2",
        "define-property": "^1.0.0",
        "expand-brackets": "^2.1.4",
        "extend-shallow": "^2.0.1",
        "fragment-cache": "^0.2.1",
        "regex-not": "^1.0.0",
        "snapdragon": "^0.8.1",
        "to-regex": "^3.0.1"
      },
      "dependencies": {
        "define-property": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-1.0.0.tgz",
          "integrity": "sha1-dp66rz9KY6rTr56NMEybvnm/sOY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^1.0.0"
          }
        },
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        },
        "is-accessor-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz",
          "integrity": "sha512-m5hnHTkcVsPfqx3AKlyttIPb7J+XykHvJP2B9bZDjlhLIoEq4XoK64Vg7boZlVWYK6LUY94dYPEE7Lh0ZkZKcQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-data-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz",
          "integrity": "sha512-jbRXy1FmtAoCjQkVmIVYwuuqDFUbaOeDjmed1tOGPrsMhtJA4rD9tkgA0F1qJ3gRFRXcHYVkdeaP50Q5rE/jLQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-descriptor": {
          "version": "1.0.2",
          "resolved": "https://registry.npmjs.org/is-descriptor/-/is-descriptor-1.0.2.tgz",
          "integrity": "sha512-2eis5WqQGV7peooDyLmNEPUrps9+SXX5c9pL3xEB+4e9HnGuDa7mB7kHxHw4CbqS9k1T2hOH3miL8n8WtiYVtg==",
          "dev": true,
          "requires": {
            "is-accessor-descriptor": "^1.0.0",
            "is-data-descriptor": "^1.0.0",
            "kind-of": "^6.0.2"
          }
        }
      }
    },
    "extsprintf": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/extsprintf/-/extsprintf-1.3.0.tgz",
      "integrity": "sha1-lpGEQOMEGnpBT4xS48V06zw+HgU=",
      "dev": true
    },
    "fast-deep-equal": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz",
      "integrity": "sha1-ewUhjd+WZ79/Nwv3/bLLFf3Qqkk=",
      "dev": true
    },
    "fast-json-stable-stringify": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/fast-json-stable-stringify/-/fast-json-stable-stringify-2.1.0.tgz",
      "integrity": "sha512-lhd/wF+Lk98HZoTCtlVraHtfh5XYijIjalXck7saUtuanSDyLMxnHhSXEDJqHxD7msR8D0uCmqlkwjCV8xvwHw==",
      "dev": true
    },
    "fast-levenshtein": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz",
      "integrity": "sha1-PYpcZog6FqMMqGQ+hR8Zuqd5eRc=",
      "dev": true
    },
    "fastparse": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/fastparse/-/fastparse-1.1.2.tgz",
      "integrity": "sha512-483XLLxTVIwWK3QTrMGRqUfUpoOs/0hbQrl2oz4J0pAcm3A3bu84wxTFqGqkJzewCLdME38xJLJAxBABfQT8sQ==",
      "dev": true
    },
    "faye-websocket": {
      "version": "0.10.0",
      "resolved": "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.10.0.tgz",
      "integrity": "sha1-TkkvjQTftviQA1B/btvy1QHnxvQ=",
      "dev": true,
      "requires": {
        "websocket-driver": ">=0.5.1"
      }
    },
    "figgy-pudding": {
      "version": "3.5.2",
      "resolved": "https://registry.npmjs.org/figgy-pudding/-/figgy-pudding-3.5.2.tgz",
      "integrity": "sha512-0btnI/H8f2pavGMN8w40mlSKOfTK2SVJmBfBeVIj3kNw0swwgzyRq0d5TJVOwodFmtvpPeWPN/MCcfuWF0Ezbw==",
      "dev": true
    },
    "figures": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/figures/-/figures-2.0.0.tgz",
      "integrity": "sha1-OrGi0qYsi/tDGgyUy3l6L84nyWI=",
      "dev": true,
      "requires": {
        "escape-string-regexp": "^1.0.5"
      }
    },
    "file-loader": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/file-loader/-/file-loader-2.0.0.tgz",
      "integrity": "sha512-YCsBfd1ZGCyonOKLxPiKPdu+8ld9HAaMEvJewzz+b2eTF7uL5Zm/HdBF6FjCrpCMRq25Mi0U1gl4pwn2TlH7hQ==",
      "dev": true,
      "requires": {
        "loader-utils": "^1.0.2",
        "schema-utils": "^1.0.0"
      }
    },
    "file-uri-to-path": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/file-uri-to-path/-/file-uri-to-path-1.0.0.tgz",
      "integrity": "sha512-0Zt+s3L7Vf1biwWZ29aARiVYLx7iMGnEUl9x33fbB/j3jR81u/O2LbqK+Bm1CDSNDKVtJ/YjwY7TUd5SkeLQLw==",
      "dev": true,
      "optional": true
    },
    "filename-regex": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/filename-regex/-/filename-regex-2.0.1.tgz",
      "integrity": "sha1-wcS5vuPglyXdsQa3XB4wH+LxiyY=",
      "dev": true
    },
    "fileset": {
      "version": "2.0.3",
      "resolved": "https://registry.npmjs.org/fileset/-/fileset-2.0.3.tgz",
      "integrity": "sha1-jnVIqW08wjJ+5eZ0FocjozO7oqA=",
      "dev": true,
      "requires": {
        "glob": "^7.0.3",
        "minimatch": "^3.0.3"
      }
    },
    "fill-range": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/fill-range/-/fill-range-4.0.0.tgz",
      "integrity": "sha1-1USBHUKPmOsGpj3EAtJAPDKMOPc=",
      "dev": true,
      "requires": {
        "extend-shallow": "^2.0.1",
        "is-number": "^3.0.0",
        "repeat-string": "^1.6.1",
        "to-regex-range": "^2.1.0"
      },
      "dependencies": {
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        }
      }
    },
    "finalhandler": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/finalhandler/-/finalhandler-1.1.2.tgz",
      "integrity": "sha512-aAWcW57uxVNrQZqFXjITpW3sIUQmHGG3qSb9mUah9MgMC4NeWhNOlNjXEYq3HjRAvL6arUviZGGJsBg6z0zsWA==",
      "dev": true,
      "requires": {
        "debug": "2.6.9",
        "encodeurl": "~1.0.2",
        "escape-html": "~1.0.3",
        "on-finished": "~2.3.0",
        "parseurl": "~1.3.3",
        "statuses": "~1.5.0",
        "unpipe": "~1.0.0"
      }
    },
    "find-cache-dir": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/find-cache-dir/-/find-cache-dir-1.0.0.tgz",
      "integrity": "sha1-kojj6ePMN0hxfTnq3hfPcfww7m8=",
      "dev": true,
      "requires": {
        "commondir": "^1.0.1",
        "make-dir": "^1.0.0",
        "pkg-dir": "^2.0.0"
      }
    },
    "find-up": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/find-up/-/find-up-2.1.0.tgz",
      "integrity": "sha1-RdG35QbHF93UgndaK3eSCjwMV6c=",
      "dev": true,
      "requires": {
        "locate-path": "^2.0.0"
      }
    },
    "flush-write-stream": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/flush-write-stream/-/flush-write-stream-1.1.1.tgz",
      "integrity": "sha512-3Z4XhFZ3992uIq0XOqb9AreonueSYphE6oYbpt5+3u06JWklbsPkNv3ZKkP9Bz/r+1MWCaMoSQ28P85+1Yc77w==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.3",
        "readable-stream": "^2.3.6"
      }
    },
    "follow-redirects": {
      "version": "1.11.0",
      "resolved": "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.11.0.tgz",
      "integrity": "sha512-KZm0V+ll8PfBrKwMzdo5D13b1bur9Iq9Zd/RMmAoQQcl2PxxFml8cxXPaaPYVbV0RjNjq1CU7zIzAOqtUPudmA==",
      "dev": true,
      "requires": {
        "debug": "^3.0.0"
      },
      "dependencies": {
        "debug": {
          "version": "3.2.6",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.2.6.tgz",
          "integrity": "sha512-mel+jf7nrtEl5Pn1Qx46zARXKDpBbvzezse7p7LqINmdoIk8PYP5SySaxEmYv6TZ0JyEKA1hsCId6DIhgITtWQ==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "fontawesome": {
      "version": "4.7.2",
      "resolved": "https://registry.npmjs.org/fontawesome/-/fontawesome-4.7.2.tgz",
      "integrity": "sha1-fwxyrHprAp0zdbrLI1Itms/FClI="
    },
    "for-in": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/for-in/-/for-in-1.0.2.tgz",
      "integrity": "sha1-gQaNKVqBQuwKxybG4iAMMPttXoA=",
      "dev": true
    },
    "for-own": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/for-own/-/for-own-1.0.0.tgz",
      "integrity": "sha1-xjMy9BXO3EsE2/5wz4NklMU8tEs=",
      "dev": true,
      "requires": {
        "for-in": "^1.0.1"
      }
    },
    "forever-agent": {
      "version": "0.6.1",
      "resolved": "https://registry.npmjs.org/forever-agent/-/forever-agent-0.6.1.tgz",
      "integrity": "sha1-+8cfDEGt6zf5bFd60e1C2P2sypE=",
      "dev": true
    },
    "form-data": {
      "version": "2.3.3",
      "resolved": "https://registry.npmjs.org/form-data/-/form-data-2.3.3.tgz",
      "integrity": "sha512-1lLKB2Mu3aGP1Q/2eCOx0fNbRMe7XdwktwOruhfqqd0rIJWwN4Dh+E3hrPSlDCXnSR7UtZ1N38rVXm+6+MEhJQ==",
      "dev": true,
      "requires": {
        "asynckit": "^0.4.0",
        "combined-stream": "^1.0.6",
        "mime-types": "^2.1.12"
      }
    },
    "forwarded": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/forwarded/-/forwarded-0.1.2.tgz",
      "integrity": "sha1-mMI9qxF1ZXuMBXPozszZGw/xjIQ=",
      "dev": true
    },
    "fragment-cache": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/fragment-cache/-/fragment-cache-0.2.1.tgz",
      "integrity": "sha1-QpD60n8T6Jvn8zeZxrxaCr//DRk=",
      "dev": true,
      "requires": {
        "map-cache": "^0.2.2"
      }
    },
    "fresh": {
      "version": "0.5.2",
      "resolved": "https://registry.npmjs.org/fresh/-/fresh-0.5.2.tgz",
      "integrity": "sha1-PYyt2Q2XZWn6g1qx+OSyOhBWBac=",
      "dev": true
    },
    "from2": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/from2/-/from2-2.3.0.tgz",
      "integrity": "sha1-i/tVAr3kpNNs/e6gB/zKIdfjgq8=",
      "dev": true,
      "requires": {
        "inherits": "^2.0.1",
        "readable-stream": "^2.0.0"
      }
    },
    "fs-access": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/fs-access/-/fs-access-1.0.1.tgz",
      "integrity": "sha1-1qh/JiJxzv6+wwxVNAf7mV2od3o=",
      "dev": true,
      "requires": {
        "null-check": "^1.0.0"
      }
    },
    "fs-write-stream-atomic": {
      "version": "1.0.10",
      "resolved": "https://registry.npmjs.org/fs-write-stream-atomic/-/fs-write-stream-atomic-1.0.10.tgz",
      "integrity": "sha1-tH31NJPvkR33VzHnCp3tAYnbQMk=",
      "dev": true,
      "requires": {
        "graceful-fs": "^4.1.2",
        "iferr": "^0.1.5",
        "imurmurhash": "^0.1.4",
        "readable-stream": "1 || 2"
      }
    },
    "fs.realpath": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/fs.realpath/-/fs.realpath-1.0.0.tgz",
      "integrity": "sha1-FQStJSMVjKpA20onh8sBQRmU6k8=",
      "dev": true
    },
    "fsevents": {
      "version": "1.2.13",
      "resolved": "https://registry.npmjs.org/fsevents/-/fsevents-1.2.13.tgz",
      "integrity": "sha512-oWb1Z6mkHIskLzEJ/XWX0srkpkTQ7vaopMQkyaEIoq0fmtFVxOthb8cCxeT+p3ynTdkk/RZwbgG4brR5BeWECw==",
      "dev": true,
      "optional": true,
      "requires": {
        "bindings": "^1.5.0",
        "nan": "^2.12.1"
      }
    },
    "fstream": {
      "version": "1.0.12",
      "resolved": "https://registry.npmjs.org/fstream/-/fstream-1.0.12.tgz",
      "integrity": "sha512-WvJ193OHa0GHPEL+AycEJgxvBEwyfRkN1vhjca23OaPVMCaLCXTd5qAu82AjTcgP1UJmytkOKb63Ypde7raDIg==",
      "dev": true,
      "optional": true,
      "requires": {
        "graceful-fs": "^4.1.2",
        "inherits": "~2.0.0",
        "mkdirp": ">=0.5 0",
        "rimraf": "2"
      }
    },
    "function-bind": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/function-bind/-/function-bind-1.1.1.tgz",
      "integrity": "sha512-yIovAzMX49sF8Yl58fSCWJ5svSLuaibPxXQJFLmBObTuCr0Mf1KiPopGM9NiFjiYBCbfaa2Fh6breQ6ANVTI0A==",
      "dev": true
    },
    "gauge": {
      "version": "2.7.4",
      "resolved": "https://registry.npmjs.org/gauge/-/gauge-2.7.4.tgz",
      "integrity": "sha1-LANAXHU4w51+s3sxcCLjJfsBi/c=",
      "dev": true,
      "optional": true,
      "requires": {
        "aproba": "^1.0.3",
        "console-control-strings": "^1.0.0",
        "has-unicode": "^2.0.0",
        "object-assign": "^4.1.0",
        "signal-exit": "^3.0.0",
        "string-width": "^1.0.1",
        "strip-ansi": "^3.0.1",
        "wide-align": "^1.1.0"
      }
    },
    "gaze": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/gaze/-/gaze-1.1.3.tgz",
      "integrity": "sha512-BRdNm8hbWzFzWHERTrejLqwHDfS4GibPoq5wjTPIoJHoBtKGPg3xAFfxmM+9ztbXelxcf2hwQcaz1PtmFeue8g==",
      "dev": true,
      "optional": true,
      "requires": {
        "globule": "^1.0.0"
      }
    },
    "get-caller-file": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/get-caller-file/-/get-caller-file-1.0.3.tgz",
      "integrity": "sha512-3t6rVToeoZfYSGd8YoLFR2DJkiQrIiUrGcjvFX2mDw3bn6k2OtwHN0TNCLbBO+w8qTvimhDkv+LSscbJY1vE6w==",
      "dev": true
    },
    "get-stdin": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/get-stdin/-/get-stdin-4.0.1.tgz",
      "integrity": "sha1-uWjGsKBDhDJJAui/Gl3zJXmkUP4=",
      "dev": true,
      "optional": true
    },
    "get-stream": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/get-stream/-/get-stream-4.1.0.tgz",
      "integrity": "sha512-GMat4EJ5161kIy2HevLlr4luNjBgvmj413KaQA7jt4V8B4RDsfpHk7WQ9GVqfYyyx8OS/L66Kox+rJRNklLK7w==",
      "dev": true,
      "requires": {
        "pump": "^3.0.0"
      },
      "dependencies": {
        "pump": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/pump/-/pump-3.0.0.tgz",
          "integrity": "sha512-LwZy+p3SFs1Pytd/jYct4wpv49HiYCqd9Rlc5ZVdk0V+8Yzv6jR5Blk3TRmPL1ft69TxP0IMZGJ+WPFU2BFhww==",
          "dev": true,
          "requires": {
            "end-of-stream": "^1.1.0",
            "once": "^1.3.1"
          }
        }
      }
    },
    "get-value": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/get-value/-/get-value-2.0.6.tgz",
      "integrity": "sha1-3BXKHGcjh8p2vTesCjlbogQqLCg=",
      "dev": true
    },
    "getpass": {
      "version": "0.1.7",
      "resolved": "https://registry.npmjs.org/getpass/-/getpass-0.1.7.tgz",
      "integrity": "sha1-Xv+OPmhNVprkyysSgmBOi6YhSfo=",
      "dev": true,
      "requires": {
        "assert-plus": "^1.0.0"
      }
    },
    "glob": {
      "version": "7.1.6",
      "resolved": "https://registry.npmjs.org/glob/-/glob-7.1.6.tgz",
      "integrity": "sha512-LwaxwyZ72Lk7vZINtNNrywX0ZuLyStrdDtabefZKAY5ZGJhVtgdznluResxNmPitE0SAO+O26sWTHeKSI2wMBA==",
      "dev": true,
      "requires": {
        "fs.realpath": "^1.0.0",
        "inflight": "^1.0.4",
        "inherits": "2",
        "minimatch": "^3.0.4",
        "once": "^1.3.0",
        "path-is-absolute": "^1.0.0"
      }
    },
    "glob-base": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/glob-base/-/glob-base-0.3.0.tgz",
      "integrity": "sha1-27Fk9iIbHAscz4Kuoyi0l98Oo8Q=",
      "dev": true,
      "requires": {
        "glob-parent": "^2.0.0",
        "is-glob": "^2.0.0"
      },
      "dependencies": {
        "glob-parent": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-2.0.0.tgz",
          "integrity": "sha1-gTg9ctsFT8zPUzbaqQLxgvbtuyg=",
          "dev": true,
          "requires": {
            "is-glob": "^2.0.0"
          }
        },
        "is-extglob": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz",
          "integrity": "sha1-rEaBd8SUNAWgkvyPKXYMb/xiBsA=",
          "dev": true
        },
        "is-glob": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz",
          "integrity": "sha1-0Jb5JqPe1WAPP9/ZEZjLCIjC2GM=",
          "dev": true,
          "requires": {
            "is-extglob": "^1.0.0"
          }
        }
      }
    },
    "glob-parent": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/glob-parent/-/glob-parent-3.1.0.tgz",
      "integrity": "sha1-nmr2KZ2NO9K9QEMIMr0RPfkGxa4=",
      "dev": true,
      "requires": {
        "is-glob": "^3.1.0",
        "path-dirname": "^1.0.0"
      },
      "dependencies": {
        "is-glob": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-3.1.0.tgz",
          "integrity": "sha1-e6WuJCF4BKxwcHuWkiVnSGzD6Eo=",
          "dev": true,
          "requires": {
            "is-extglob": "^2.1.0"
          }
        }
      }
    },
    "globals": {
      "version": "9.18.0",
      "resolved": "https://registry.npmjs.org/globals/-/globals-9.18.0.tgz",
      "integrity": "sha512-S0nG3CLEQiY/ILxqtztTWH/3iRRdyBLw6KMDxnKMchrtbj2OFmehVh0WUCfW3DUrIgx/qFrJPICrq4Z4sTR9UQ==",
      "dev": true
    },
    "globby": {
      "version": "7.1.1",
      "resolved": "https://registry.npmjs.org/globby/-/globby-7.1.1.tgz",
      "integrity": "sha1-+yzP+UAfhgCUXfral0QMypcrhoA=",
      "dev": true,
      "requires": {
        "array-union": "^1.0.1",
        "dir-glob": "^2.0.0",
        "glob": "^7.1.2",
        "ignore": "^3.3.5",
        "pify": "^3.0.0",
        "slash": "^1.0.0"
      }
    },
    "globule": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/globule/-/globule-1.3.1.tgz",
      "integrity": "sha512-OVyWOHgw29yosRHCHo7NncwR1hW5ew0W/UrvtwvjefVJeQ26q4/8r8FmPsSF1hJ93IgWkyv16pCTz6WblMzm/g==",
      "dev": true,
      "optional": true,
      "requires": {
        "glob": "~7.1.1",
        "lodash": "~4.17.12",
        "minimatch": "~3.0.2"
      }
    },
    "graceful-fs": {
      "version": "4.2.4",
      "resolved": "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.4.tgz",
      "integrity": "sha512-WjKPNJF79dtJAVniUlGGWHYGz2jWxT6VhN/4m1NdkbZ2nOsEF+cI1Edgql5zCRhs/VsQYRvrXctxktVXZUkixw==",
      "dev": true
    },
    "handle-thing": {
      "version": "1.2.5",
      "resolved": "https://registry.npmjs.org/handle-thing/-/handle-thing-1.2.5.tgz",
      "integrity": "sha1-/Xqtcmvxpf0W38KbL3pmAdJxOcQ=",
      "dev": true
    },
    "handlebars": {
      "version": "4.7.6",
      "resolved": "https://registry.npmjs.org/handlebars/-/handlebars-4.7.6.tgz",
      "integrity": "sha512-1f2BACcBfiwAfStCKZNrUCgqNZkGsAT7UM3kkYtXuLo0KnaVfjKOyf7PRzB6++aK9STyT1Pd2ZCPe3EGOXleXA==",
      "dev": true,
      "requires": {
        "minimist": "^1.2.5",
        "neo-async": "^2.6.0",
        "source-map": "^0.6.1",
        "uglify-js": "^3.1.4",
        "wordwrap": "^1.0.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "har-schema": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/har-schema/-/har-schema-2.0.0.tgz",
      "integrity": "sha1-qUwiJOvKwEeCoNkDVSHyRzW37JI=",
      "dev": true
    },
    "har-validator": {
      "version": "5.1.3",
      "resolved": "https://registry.npmjs.org/har-validator/-/har-validator-5.1.3.tgz",
      "integrity": "sha512-sNvOCzEQNr/qrvJgc3UG/kD4QtlHycrzwS+6mfTrrSq97BvaYcPZZI1ZSqGSPR73Cxn4LKTD4PttRwfU7jWq5g==",
      "dev": true,
      "requires": {
        "ajv": "^6.5.5",
        "har-schema": "^2.0.0"
      },
      "dependencies": {
        "ajv": {
          "version": "6.12.2",
          "resolved": "https://registry.npmjs.org/ajv/-/ajv-6.12.2.tgz",
          "integrity": "sha512-k+V+hzjm5q/Mr8ef/1Y9goCmlsK4I6Sm74teeyGvFk1XrOsbsKLjEdrvny42CZ+a8sXbk8KWpY/bDwS+FLL2UQ==",
          "dev": true,
          "requires": {
            "fast-deep-equal": "^3.1.1",
            "fast-json-stable-stringify": "^2.0.0",
            "json-schema-traverse": "^0.4.1",
            "uri-js": "^4.2.2"
          }
        },
        "fast-deep-equal": {
          "version": "3.1.1",
          "resolved": "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-3.1.1.tgz",
          "integrity": "sha512-8UEa58QDLauDNfpbrX55Q9jrGHThw2ZMdOky5Gl1CDtVeJDPVrG4Jxx1N8jw2gkWaff5UUuX1KJd+9zGe2B+ZA==",
          "dev": true
        },
        "json-schema-traverse": {
          "version": "0.4.1",
          "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz",
          "integrity": "sha512-xbbCH5dCYU5T8LcEhhuh7HJ88HXuW3qsI3Y0zOZFKfZEHcpWiHU/Jxzk629Brsab/mMiHQti9wMP+845RPe3Vg==",
          "dev": true
        },
        "uri-js": {
          "version": "4.2.2",
          "resolved": "https://registry.npmjs.org/uri-js/-/uri-js-4.2.2.tgz",
          "integrity": "sha512-KY9Frmirql91X2Qgjry0Wd4Y+YTdrdZheS8TFwvkbLWf/G5KNJDCh6pKL5OZctEW4+0Baa5idK2ZQuELRwPznQ==",
          "dev": true,
          "requires": {
            "punycode": "^2.1.0"
          }
        }
      }
    },
    "has": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/has/-/has-1.0.3.tgz",
      "integrity": "sha512-f2dvO0VU6Oej7RkWJGrehjbzMAjFp5/VKPp5tTpWIV4JHHZK1/BxbFRtf/siA2SWTe09caDmVtYYzWEIbBS4zw==",
      "dev": true,
      "requires": {
        "function-bind": "^1.1.1"
      }
    },
    "has-ansi": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/has-ansi/-/has-ansi-2.0.0.tgz",
      "integrity": "sha1-NPUEnOHs3ysGSa8+8k5F7TVBbZE=",
      "dev": true,
      "requires": {
        "ansi-regex": "^2.0.0"
      }
    },
    "has-binary2": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/has-binary2/-/has-binary2-1.0.3.tgz",
      "integrity": "sha512-G1LWKhDSvhGeAQ8mPVQlqNcOB2sJdwATtZKl2pDKKHfpf/rYj24lkinxf69blJbnsvtqqNU+L3SL50vzZhXOnw==",
      "dev": true,
      "requires": {
        "isarray": "2.0.1"
      },
      "dependencies": {
        "isarray": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/isarray/-/isarray-2.0.1.tgz",
          "integrity": "sha1-o32U7ZzaLVmGXJ92/llu4fM4dB4=",
          "dev": true
        }
      }
    },
    "has-cors": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/has-cors/-/has-cors-1.1.0.tgz",
      "integrity": "sha1-XkdHk/fqmEPRu5nCPu9J/xJv/zk=",
      "dev": true
    },
    "has-flag": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/has-flag/-/has-flag-3.0.0.tgz",
      "integrity": "sha1-tdRU3CGZriJWmfNGfloH87lVuv0=",
      "dev": true
    },
    "has-symbols": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/has-symbols/-/has-symbols-1.0.1.tgz",
      "integrity": "sha512-PLcsoqu++dmEIZB+6totNFKq/7Do+Z0u4oT0zKOJNl3lYK6vGwwu2hjHs+68OEZbTjiUE9bgOABXbP/GvrS0Kg==",
      "dev": true
    },
    "has-unicode": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/has-unicode/-/has-unicode-2.0.1.tgz",
      "integrity": "sha1-4Ob+aijPUROIVeCG0Wkedx3iqLk=",
      "dev": true,
      "optional": true
    },
    "has-value": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/has-value/-/has-value-1.0.0.tgz",
      "integrity": "sha1-GLKB2lhbHFxR3vJMkw7SmgvmsXc=",
      "dev": true,
      "requires": {
        "get-value": "^2.0.6",
        "has-values": "^1.0.0",
        "isobject": "^3.0.0"
      }
    },
    "has-values": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/has-values/-/has-values-1.0.0.tgz",
      "integrity": "sha1-lbC2P+whRmGab+V/51Yo1aOe/k8=",
      "dev": true,
      "requires": {
        "is-number": "^3.0.0",
        "kind-of": "^4.0.0"
      },
      "dependencies": {
        "kind-of": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-4.0.0.tgz",
          "integrity": "sha1-IIE989cSkosgc3hpGkUGb65y3Vc=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "hash-base": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/hash-base/-/hash-base-3.1.0.tgz",
      "integrity": "sha512-1nmYp/rhMDiE7AYkDw+lLwlAzz0AntGIe51F3RfFfEqyQ3feY2eI/NcwC6umIQVOASPMsWJLJScWKSSvzL9IVA==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.4",
        "readable-stream": "^3.6.0",
        "safe-buffer": "^5.2.0"
      },
      "dependencies": {
        "readable-stream": {
          "version": "3.6.0",
          "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-3.6.0.tgz",
          "integrity": "sha512-BViHy7LKeTz4oNnkcLJ+lVSL6vpiFeX6/d3oSH8zCW7UxP2onchk+vTGB143xuFjHS3deTgkKoXXymXqymiIdA==",
          "dev": true,
          "requires": {
            "inherits": "^2.0.3",
            "string_decoder": "^1.1.1",
            "util-deprecate": "^1.0.1"
          }
        },
        "safe-buffer": {
          "version": "5.2.1",
          "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.2.1.tgz",
          "integrity": "sha512-rp3So07KcdmmKbGvgaNxQSJr7bGVSVk5S9Eq1F+ppbRo70+YeaDxkw5Dd8NPN+GD6bjnYm2VuPuCXmpuYvmCXQ==",
          "dev": true
        }
      }
    },
    "hash.js": {
      "version": "1.1.7",
      "resolved": "https://registry.npmjs.org/hash.js/-/hash.js-1.1.7.tgz",
      "integrity": "sha512-taOaskGt4z4SOANNseOviYDvjEJinIkRgmp7LbKP2YTTmVxWBl87s/uzK9r+44BclBSp2X7K1hqeNfz9JbBeXA==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.3",
        "minimalistic-assert": "^1.0.1"
      }
    },
    "hmac-drbg": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/hmac-drbg/-/hmac-drbg-1.0.1.tgz",
      "integrity": "sha1-0nRXAQJabHdabFRXk+1QL8DGSaE=",
      "dev": true,
      "requires": {
        "hash.js": "^1.0.3",
        "minimalistic-assert": "^1.0.0",
        "minimalistic-crypto-utils": "^1.0.1"
      }
    },
    "hosted-git-info": {
      "version": "2.8.8",
      "resolved": "https://registry.npmjs.org/hosted-git-info/-/hosted-git-info-2.8.8.tgz",
      "integrity": "sha512-f/wzC2QaWBs7t9IYqB4T3sR1xviIViXJRJTWBlx2Gf3g0Xi5vI7Yy4koXQ1c9OYDGHN9sBy1DQ2AB8fqZBWhUg==",
      "dev": true
    },
    "hpack.js": {
      "version": "2.1.6",
      "resolved": "https://registry.npmjs.org/hpack.js/-/hpack.js-2.1.6.tgz",
      "integrity": "sha1-h3dMCUnlE/QuhFdbPEVoH63ioLI=",
      "dev": true,
      "requires": {
        "inherits": "^2.0.1",
        "obuf": "^1.0.0",
        "readable-stream": "^2.0.1",
        "wbuf": "^1.1.0"
      }
    },
    "html-entities": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/html-entities/-/html-entities-1.3.1.tgz",
      "integrity": "sha512-rhE/4Z3hIhzHAUKbW8jVcCyuT5oJCXXqhN/6mXXVCpzTmvJnoH2HL/bt3EZ6p55jbFJBeAe1ZNpL5BugLujxNA==",
      "dev": true
    },
    "html-escaper": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/html-escaper/-/html-escaper-2.0.2.tgz",
      "integrity": "sha512-H2iMtd0I4Mt5eYiapRdIDjp+XzelXQ0tFE4JS7YFwFevXXMmOp9myNrUvCg0D6ws8iqkRPBfKHgbwig1SmlLfg==",
      "dev": true
    },
    "http-deceiver": {
      "version": "1.2.7",
      "resolved": "https://registry.npmjs.org/http-deceiver/-/http-deceiver-1.2.7.tgz",
      "integrity": "sha1-+nFolEq5pRnTN8sL7HKE3D5yPYc=",
      "dev": true
    },
    "http-errors": {
      "version": "1.7.2",
      "resolved": "https://registry.npmjs.org/http-errors/-/http-errors-1.7.2.tgz",
      "integrity": "sha512-uUQBt3H/cSIVfch6i1EuPNy/YsRSOUBXTVfZ+yR7Zjez3qjBz6i9+i4zjNaoqcoFVI4lQJ5plg63TvGfRSDCRg==",
      "dev": true,
      "requires": {
        "depd": "~1.1.2",
        "inherits": "2.0.3",
        "setprototypeof": "1.1.1",
        "statuses": ">= 1.5.0 < 2",
        "toidentifier": "1.0.0"
      },
      "dependencies": {
        "inherits": {
          "version": "2.0.3",
          "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz",
          "integrity": "sha1-Yzwsg+PaQqUC9SRmAiSA9CCCYd4=",
          "dev": true
        }
      }
    },
    "http-parser-js": {
      "version": "0.4.10",
      "resolved": "https://registry.npmjs.org/http-parser-js/-/http-parser-js-0.4.10.tgz",
      "integrity": "sha1-ksnBN0w1CF912zWexWzCV8u5P6Q=",
      "dev": true
    },
    "http-proxy": {
      "version": "1.18.0",
      "resolved": "https://registry.npmjs.org/http-proxy/-/http-proxy-1.18.0.tgz",
      "integrity": "sha512-84I2iJM/n1d4Hdgc6y2+qY5mDaz2PUVjlg9znE9byl+q0uC3DeByqBGReQu5tpLK0TAqTIXScRUV+dg7+bUPpQ==",
      "dev": true,
      "requires": {
        "eventemitter3": "^4.0.0",
        "follow-redirects": "^1.0.0",
        "requires-port": "^1.0.0"
      }
    },
    "http-proxy-middleware": {
      "version": "0.18.0",
      "resolved": "https://registry.npmjs.org/http-proxy-middleware/-/http-proxy-middleware-0.18.0.tgz",
      "integrity": "sha512-Fs25KVMPAIIcgjMZkVHJoKg9VcXcC1C8yb9JUgeDvVXY0S/zgVIhMb+qVswDIgtJe2DfckMSY2d6TuTEutlk6Q==",
      "dev": true,
      "requires": {
        "http-proxy": "^1.16.2",
        "is-glob": "^4.0.0",
        "lodash": "^4.17.5",
        "micromatch": "^3.1.9"
      }
    },
    "http-signature": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/http-signature/-/http-signature-1.2.0.tgz",
      "integrity": "sha1-muzZJRFHcvPZW2WmCruPfBj7rOE=",
      "dev": true,
      "requires": {
        "assert-plus": "^1.0.0",
        "jsprim": "^1.2.2",
        "sshpk": "^1.7.0"
      }
    },
    "https-browserify": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/https-browserify/-/https-browserify-1.0.0.tgz",
      "integrity": "sha1-7AbBDgo0wPL68Zn3/X/Hj//QPHM=",
      "dev": true
    },
    "https-proxy-agent": {
      "version": "2.2.4",
      "resolved": "https://registry.npmjs.org/https-proxy-agent/-/https-proxy-agent-2.2.4.tgz",
      "integrity": "sha512-OmvfoQ53WLjtA9HeYP9RNrWMJzzAz1JGaSFr1nijg0PVR1JaD/xbJq1mdEIIlxGpXp9eSe/O2LgU9DJmTPd0Eg==",
      "dev": true,
      "requires": {
        "agent-base": "^4.3.0",
        "debug": "^3.1.0"
      },
      "dependencies": {
        "debug": {
          "version": "3.2.6",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.2.6.tgz",
          "integrity": "sha512-mel+jf7nrtEl5Pn1Qx46zARXKDpBbvzezse7p7LqINmdoIk8PYP5SySaxEmYv6TZ0JyEKA1hsCId6DIhgITtWQ==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "iconv-lite": {
      "version": "0.4.24",
      "resolved": "https://registry.npmjs.org/iconv-lite/-/iconv-lite-0.4.24.tgz",
      "integrity": "sha512-v3MXnZAcvnywkTUEZomIActle7RXXeedOR31wwl7VlyoXO4Qi9arvSenNQWne1TcRwhCL1HwLI21bEqdpj8/rA==",
      "dev": true,
      "requires": {
        "safer-buffer": ">= 2.1.2 < 3"
      }
    },
    "ieee754": {
      "version": "1.1.13",
      "resolved": "https://registry.npmjs.org/ieee754/-/ieee754-1.1.13.tgz",
      "integrity": "sha512-4vf7I2LYV/HaWerSo3XmlMkp5eZ83i+/CDluXi/IGTs/O1sejBNhTtnxzmRZfvOUqj7lZjqHkeTvpgSFDlWZTg==",
      "dev": true
    },
    "iferr": {
      "version": "0.1.5",
      "resolved": "https://registry.npmjs.org/iferr/-/iferr-0.1.5.tgz",
      "integrity": "sha1-xg7taebY/bazEEofy8ocGS3FtQE=",
      "dev": true
    },
    "ignore": {
      "version": "3.3.10",
      "resolved": "https://registry.npmjs.org/ignore/-/ignore-3.3.10.tgz",
      "integrity": "sha512-Pgs951kaMm5GXP7MOvxERINe3gsaVjUWFm+UZPSq9xYriQAksyhg0csnS0KXSNRD5NmNdapXEpjxG49+AKh/ug==",
      "dev": true
    },
    "image-size": {
      "version": "0.5.5",
      "resolved": "https://registry.npmjs.org/image-size/-/image-size-0.5.5.tgz",
      "integrity": "sha1-Cd/Uq50g4p6xw+gLiZA3jfnjy5w=",
      "dev": true,
      "optional": true
    },
    "immediate": {
      "version": "3.0.6",
      "resolved": "https://registry.npmjs.org/immediate/-/immediate-3.0.6.tgz",
      "integrity": "sha1-nbHb0Pr43m++D13V5Wu2BigN5ps=",
      "dev": true
    },
    "import-cwd": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/import-cwd/-/import-cwd-2.1.0.tgz",
      "integrity": "sha1-qmzzbnInYShcs3HsZRn1PiQ1sKk=",
      "dev": true,
      "requires": {
        "import-from": "^2.1.0"
      }
    },
    "import-fresh": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/import-fresh/-/import-fresh-2.0.0.tgz",
      "integrity": "sha1-2BNVwVYS04bGH53dOSLUMEgipUY=",
      "dev": true,
      "requires": {
        "caller-path": "^2.0.0",
        "resolve-from": "^3.0.0"
      }
    },
    "import-from": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/import-from/-/import-from-2.1.0.tgz",
      "integrity": "sha1-M1238qev/VOqpHHUuAId7ja387E=",
      "dev": true,
      "requires": {
        "resolve-from": "^3.0.0"
      }
    },
    "import-local": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/import-local/-/import-local-2.0.0.tgz",
      "integrity": "sha512-b6s04m3O+s3CGSbqDIyP4R6aAwAeYlVq9+WUWep6iHa8ETRf9yei1U48C5MmfJmV9AiLYYBKPMq/W+/WRpQmCQ==",
      "dev": true,
      "requires": {
        "pkg-dir": "^3.0.0",
        "resolve-cwd": "^2.0.0"
      },
      "dependencies": {
        "find-up": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz",
          "integrity": "sha512-1yD6RmLI1XBfxugvORwlck6f75tYL+iR0jqwsOrOxMZyGYqUuDhJ0l4AXdO1iX/FTs9cBAMEk1gWSEx1kSbylg==",
          "dev": true,
          "requires": {
            "locate-path": "^3.0.0"
          }
        },
        "locate-path": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz",
          "integrity": "sha512-7AO748wWnIhNqAuaty2ZWHkQHRSNfPVIsPIfwEOWO22AmaoVrWavlOcMR5nzTLNYvp36X220/maaRsrec1G65A==",
          "dev": true,
          "requires": {
            "p-locate": "^3.0.0",
            "path-exists": "^3.0.0"
          }
        },
        "p-limit": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz",
          "integrity": "sha512-//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==",
          "dev": true,
          "requires": {
            "p-try": "^2.0.0"
          }
        },
        "p-locate": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz",
          "integrity": "sha512-x+12w/To+4GFfgJhBEpiDcLozRJGegY+Ei7/z0tSLkMmxGZNybVMSfWj9aJn8Z5Fc7dBUNJOOVgPv2H7IwulSQ==",
          "dev": true,
          "requires": {
            "p-limit": "^2.0.0"
          }
        },
        "p-try": {
          "version": "2.2.0",
          "resolved": "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz",
          "integrity": "sha512-R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==",
          "dev": true
        },
        "pkg-dir": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-3.0.0.tgz",
          "integrity": "sha512-/E57AYkoeQ25qkxMj5PBOVgF8Kiu/h7cYS30Z5+R7WaiCCBfLq58ZI/dSeaEKb9WVJV5n/03QwrN3IeWIFllvw==",
          "dev": true,
          "requires": {
            "find-up": "^3.0.0"
          }
        }
      }
    },
    "imurmurhash": {
      "version": "0.1.4",
      "resolved": "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz",
      "integrity": "sha1-khi5srkoojixPcT7a21XbyMUU+o=",
      "dev": true
    },
    "in-publish": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/in-publish/-/in-publish-2.0.1.tgz",
      "integrity": "sha512-oDM0kUSNFC31ShNxHKUyfZKy8ZeXZBWMjMdZHKLOk13uvT27VTL/QzRGfRUcevJhpkZAvlhPYuXkF7eNWrtyxQ==",
      "dev": true,
      "optional": true
    },
    "indent-string": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/indent-string/-/indent-string-2.1.0.tgz",
      "integrity": "sha1-ji1INIdCEhtKghi3oTfppSBJ3IA=",
      "dev": true,
      "optional": true,
      "requires": {
        "repeating": "^2.0.0"
      }
    },
    "indexof": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz",
      "integrity": "sha1-gtwzbSMrkGIXnQWrMpOmYFn9Q10=",
      "dev": true
    },
    "inflight": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/inflight/-/inflight-1.0.6.tgz",
      "integrity": "sha1-Sb1jMdfQLQwJvJEKEHW6gWW1bfk=",
      "dev": true,
      "requires": {
        "once": "^1.3.0",
        "wrappy": "1"
      }
    },
    "inherits": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.4.tgz",
      "integrity": "sha512-k/vGaX4/Yla3WzyMCvTQOXYeIHvqOKtnqBduzTHpzpQZzAskKMhZ2K+EnBiSM9zGSoIFeMpXKxa4dYeZIQqewQ==",
      "dev": true
    },
    "ini": {
      "version": "1.3.5",
      "resolved": "https://registry.npmjs.org/ini/-/ini-1.3.5.tgz",
      "integrity": "sha512-RZY5huIKCMRWDUqZlEi72f/lmXKMvuszcMBduliQ3nnWbx9X/ZBQO7DijMEYS9EhHBb2qacRUMtC7svLwe0lcw==",
      "dev": true
    },
    "inquirer": {
      "version": "6.2.0",
      "resolved": "https://registry.npmjs.org/inquirer/-/inquirer-6.2.0.tgz",
      "integrity": "sha512-QIEQG4YyQ2UYZGDC4srMZ7BjHOmNk1lR2JQj5UknBapklm6WHA+VVH7N+sUdX3A7NeCfGF8o4X1S3Ao7nAcIeg==",
      "dev": true,
      "requires": {
        "ansi-escapes": "^3.0.0",
        "chalk": "^2.0.0",
        "cli-cursor": "^2.1.0",
        "cli-width": "^2.0.0",
        "external-editor": "^3.0.0",
        "figures": "^2.0.0",
        "lodash": "^4.17.10",
        "mute-stream": "0.0.7",
        "run-async": "^2.2.0",
        "rxjs": "^6.1.0",
        "string-width": "^2.1.0",
        "strip-ansi": "^4.0.0",
        "through": "^2.3.6"
      },
      "dependencies": {
        "ansi-regex": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-3.0.0.tgz",
          "integrity": "sha1-7QMXwyIGT3lGbAKWa922Bas32Zg=",
          "dev": true
        },
        "is-fullwidth-code-point": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz",
          "integrity": "sha1-o7MKXE8ZkYMWeqq5O+764937ZU8=",
          "dev": true
        },
        "string-width": {
          "version": "2.1.1",
          "resolved": "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz",
          "integrity": "sha512-nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==",
          "dev": true,
          "requires": {
            "is-fullwidth-code-point": "^2.0.0",
            "strip-ansi": "^4.0.0"
          }
        },
        "strip-ansi": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
          "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
          "dev": true,
          "requires": {
            "ansi-regex": "^3.0.0"
          }
        }
      }
    },
    "internal-ip": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/internal-ip/-/internal-ip-3.0.1.tgz",
      "integrity": "sha512-NXXgESC2nNVtU+pqmC9e6R8B1GpKxzsAQhffvh5AL79qKnodd+L7tnEQmTiUAVngqLalPbSqRA7XGIEL5nCd0Q==",
      "dev": true,
      "requires": {
        "default-gateway": "^2.6.0",
        "ipaddr.js": "^1.5.2"
      }
    },
    "interpret": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/interpret/-/interpret-1.2.0.tgz",
      "integrity": "sha512-mT34yGKMNceBQUoVn7iCDKDntA7SC6gycMAWzGx1z/CMCTV7b2AAtXlo3nRyHZ1FelRkQbQjprHSYGwzLtkVbw==",
      "dev": true
    },
    "invariant": {
      "version": "2.2.4",
      "resolved": "https://registry.npmjs.org/invariant/-/invariant-2.2.4.tgz",
      "integrity": "sha512-phJfQVBuaJM5raOpJjSfkiD6BpbCE4Ns//LaXl6wGYtUBY83nWS6Rf9tXm2e8VaK60JEjYldbPif/A2B1C2gNA==",
      "dev": true,
      "requires": {
        "loose-envify": "^1.0.0"
      }
    },
    "invert-kv": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/invert-kv/-/invert-kv-2.0.0.tgz",
      "integrity": "sha512-wPVv/y/QQ/Uiirj/vh3oP+1Ww+AWehmi1g5fFWGPF6IpCBCDVrhgHRMvrLfdYcwDh3QJbGXDW4JAuzxElLSqKA==",
      "dev": true
    },
    "ip": {
      "version": "1.1.5",
      "resolved": "https://registry.npmjs.org/ip/-/ip-1.1.5.tgz",
      "integrity": "sha1-vd7XARQpCCjAoDnnLvJfWq7ENUo=",
      "dev": true
    },
    "ip-regex": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/ip-regex/-/ip-regex-2.1.0.tgz",
      "integrity": "sha1-+ni/XS5pE8kRzp+BnuUUa7bYROk=",
      "dev": true
    },
    "ipaddr.js": {
      "version": "1.9.1",
      "resolved": "https://registry.npmjs.org/ipaddr.js/-/ipaddr.js-1.9.1.tgz",
      "integrity": "sha512-0KI/607xoxSToH7GjN1FfSbLoU0+btTicjsQSWQlh/hZykN8KpmMf7uYwPW3R+akZ6R/w18ZlXSHBYXiYUPO3g==",
      "dev": true
    },
    "is-accessor-descriptor": {
      "version": "0.1.6",
      "resolved": "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz",
      "integrity": "sha1-qeEss66Nh2cn7u84Q/igiXtcmNY=",
      "dev": true,
      "requires": {
        "kind-of": "^3.0.2"
      },
      "dependencies": {
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "is-arguments": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/is-arguments/-/is-arguments-1.0.4.tgz",
      "integrity": "sha512-xPh0Rmt8NE65sNzvyUmWgI1tz3mKq74lGA0mL8LYZcoIzKOzDh6HmrYm3d18k60nHerC8A9Km8kYu87zfSFnLA==",
      "dev": true
    },
    "is-arrayish": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/is-arrayish/-/is-arrayish-0.2.1.tgz",
      "integrity": "sha1-d8mYQFJ6qOyxqLppe4BkWnqSap0=",
      "dev": true
    },
    "is-binary-path": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/is-binary-path/-/is-binary-path-1.0.1.tgz",
      "integrity": "sha1-dfFmQrSA8YenEcgUFh/TpKdlWJg=",
      "dev": true,
      "requires": {
        "binary-extensions": "^1.0.0"
      }
    },
    "is-buffer": {
      "version": "1.1.6",
      "resolved": "https://registry.npmjs.org/is-buffer/-/is-buffer-1.1.6.tgz",
      "integrity": "sha512-NcdALwpXkTm5Zvvbk7owOUSvVvBKDgKP5/ewfXEznmQFfs4ZRmanOeKBTjRVjka3QFoN6XJ+9F3USqfHqTaU5w==",
      "dev": true
    },
    "is-callable": {
      "version": "1.1.5",
      "resolved": "https://registry.npmjs.org/is-callable/-/is-callable-1.1.5.tgz",
      "integrity": "sha512-ESKv5sMCJB2jnHTWZ3O5itG+O128Hsus4K4Qh1h2/cgn2vbgnLSVqfV46AeJA9D5EeeLa9w81KUXMtn34zhX+Q==",
      "dev": true
    },
    "is-data-descriptor": {
      "version": "0.1.4",
      "resolved": "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz",
      "integrity": "sha1-C17mSDiOLIYCgueT8YVv7D8wG1Y=",
      "dev": true,
      "requires": {
        "kind-of": "^3.0.2"
      },
      "dependencies": {
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "is-date-object": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/is-date-object/-/is-date-object-1.0.2.tgz",
      "integrity": "sha512-USlDT524woQ08aoZFzh3/Z6ch9Y/EWXEHQ/AaRN0SkKq4t2Jw2R2339tSXmwuVoY7LLlBCbOIlx2myP/L5zk0g==",
      "dev": true
    },
    "is-descriptor": {
      "version": "0.1.6",
      "resolved": "https://registry.npmjs.org/is-descriptor/-/is-descriptor-0.1.6.tgz",
      "integrity": "sha512-avDYr0SB3DwO9zsMov0gKCESFYqCnE4hq/4z3TdUlukEy5t9C0YRq7HLrsN52NAcqXKaepeCD0n+B0arnVG3Hg==",
      "dev": true,
      "requires": {
        "is-accessor-descriptor": "^0.1.6",
        "is-data-descriptor": "^0.1.4",
        "kind-of": "^5.0.0"
      },
      "dependencies": {
        "kind-of": {
          "version": "5.1.0",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-5.1.0.tgz",
          "integrity": "sha512-NGEErnH6F2vUuXDh+OlbcKW7/wOcfdRHaZ7VWtqCztfHri/++YKmP51OdWeGPuqCOba6kk2OTe5d02VmTB80Pw==",
          "dev": true
        }
      }
    },
    "is-directory": {
      "version": "0.3.1",
      "resolved": "https://registry.npmjs.org/is-directory/-/is-directory-0.3.1.tgz",
      "integrity": "sha1-YTObbyR1/Hcv2cnYP1yFddwVSuE=",
      "dev": true
    },
    "is-dotfile": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/is-dotfile/-/is-dotfile-1.0.3.tgz",
      "integrity": "sha1-pqLzL/0t+wT1yiXs0Pa4PPeYoeE=",
      "dev": true
    },
    "is-equal-shallow": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/is-equal-shallow/-/is-equal-shallow-0.1.3.tgz",
      "integrity": "sha1-IjgJj8Ih3gvPpdnqxMRdY4qhxTQ=",
      "dev": true,
      "requires": {
        "is-primitive": "^2.0.0"
      }
    },
    "is-extendable": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/is-extendable/-/is-extendable-0.1.1.tgz",
      "integrity": "sha1-YrEQ4omkcUGOPsNqYX1HLjAd/Ik=",
      "dev": true
    },
    "is-extglob": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-2.1.1.tgz",
      "integrity": "sha1-qIwCU1eR8C7TfHahueqXc8gz+MI=",
      "dev": true
    },
    "is-finite": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/is-finite/-/is-finite-1.1.0.tgz",
      "integrity": "sha512-cdyMtqX/BOqqNBBiKlIVkytNHm49MtMlYyn1zxzvJKWmFMlGzm+ry5BBfYyeY9YmNKbRSo/o7OX9w9ale0wg3w==",
      "dev": true
    },
    "is-fullwidth-code-point": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",
      "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",
      "dev": true,
      "requires": {
        "number-is-nan": "^1.0.0"
      }
    },
    "is-glob": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-4.0.1.tgz",
      "integrity": "sha512-5G0tKtBTFImOqDnLB2hG6Bp2qcKEFduo4tZu9MT/H6NQv/ghhy30o55ufafxJ/LdH79LLs2Kfrn85TLKyA7BUg==",
      "dev": true,
      "requires": {
        "is-extglob": "^2.1.1"
      }
    },
    "is-number": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/is-number/-/is-number-3.0.0.tgz",
      "integrity": "sha1-JP1iAaR4LPUFYcgQJ2r8fRLXEZU=",
      "dev": true,
      "requires": {
        "kind-of": "^3.0.2"
      },
      "dependencies": {
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "is-path-cwd": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/is-path-cwd/-/is-path-cwd-1.0.0.tgz",
      "integrity": "sha1-0iXsIxMuie3Tj9p2dHLmLmXxEG0=",
      "dev": true
    },
    "is-path-in-cwd": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/is-path-in-cwd/-/is-path-in-cwd-1.0.1.tgz",
      "integrity": "sha512-FjV1RTW48E7CWM7eE/J2NJvAEEVektecDBVBE5Hh3nM1Jd0kvhHtX68Pr3xsDf857xt3Y4AkwVULK1Vku62aaQ==",
      "dev": true,
      "requires": {
        "is-path-inside": "^1.0.0"
      }
    },
    "is-path-inside": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/is-path-inside/-/is-path-inside-1.0.1.tgz",
      "integrity": "sha1-jvW33lBDej/cprToZe96pVy0gDY=",
      "dev": true,
      "requires": {
        "path-is-inside": "^1.0.1"
      }
    },
    "is-plain-object": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/is-plain-object/-/is-plain-object-2.0.4.tgz",
      "integrity": "sha512-h5PpgXkWitc38BBMYawTYMWJHFZJVnBquFE57xFpjB8pJFiF6gZ+bU+WyI/yqXiFR5mdLsgYNaPe8uao6Uv9Og==",
      "dev": true,
      "requires": {
        "isobject": "^3.0.1"
      }
    },
    "is-posix-bracket": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/is-posix-bracket/-/is-posix-bracket-0.1.1.tgz",
      "integrity": "sha1-MzTceXdDaOkvAW5vvAqI9c1ua8Q=",
      "dev": true
    },
    "is-primitive": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/is-primitive/-/is-primitive-2.0.0.tgz",
      "integrity": "sha1-IHurkWOEmcB7Kt8kCkGochADRXU=",
      "dev": true
    },
    "is-regex": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/is-regex/-/is-regex-1.0.5.tgz",
      "integrity": "sha512-vlKW17SNq44owv5AQR3Cq0bQPEb8+kF3UKZ2fiZNOWtztYE5i0CzCZxFDwO58qAOWtxdBRVO/V5Qin1wjCqFYQ==",
      "dev": true,
      "requires": {
        "has": "^1.0.3"
      }
    },
    "is-stream": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/is-stream/-/is-stream-1.1.0.tgz",
      "integrity": "sha1-EtSj3U5o4Lec6428hBc66A2RykQ=",
      "dev": true
    },
    "is-symbol": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/is-symbol/-/is-symbol-1.0.3.tgz",
      "integrity": "sha512-OwijhaRSgqvhm/0ZdAcXNZt9lYdKFpcRDT5ULUuYXPoT794UNOdU+gpT6Rzo7b4V2HUl/op6GqY894AZwv9faQ==",
      "dev": true,
      "requires": {
        "has-symbols": "^1.0.1"
      }
    },
    "is-typedarray": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/is-typedarray/-/is-typedarray-1.0.0.tgz",
      "integrity": "sha1-5HnICFjfDBsR3dppQPlgEfzaSpo=",
      "dev": true
    },
    "is-utf8": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/is-utf8/-/is-utf8-0.2.1.tgz",
      "integrity": "sha1-Sw2hRCEE0bM2NA6AeX6GXPOffXI=",
      "dev": true,
      "optional": true
    },
    "is-windows": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/is-windows/-/is-windows-1.0.2.tgz",
      "integrity": "sha512-eXK1UInq2bPmjyX6e3VHIzMLobc4J94i4AWn+Hpq3OU5KkrRC96OAcR3PRJ/pGu6m8TRnBHP9dkXQVsT/COVIA==",
      "dev": true
    },
    "is-wsl": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/is-wsl/-/is-wsl-1.1.0.tgz",
      "integrity": "sha1-HxbkqiKwTRM2tmGIpmrzxgDDpm0=",
      "dev": true
    },
    "isarray": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/isarray/-/isarray-1.0.0.tgz",
      "integrity": "sha1-u5NdSFgsuhaMBoNJV6VKPgcSTxE=",
      "dev": true
    },
    "isbinaryfile": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/isbinaryfile/-/isbinaryfile-3.0.3.tgz",
      "integrity": "sha512-8cJBL5tTd2OS0dM4jz07wQd5g0dCCqIhUxPIGtZfa5L6hWlvV5MHTITy/DBAsF+Oe2LS1X3krBUhNwaGUWpWxw==",
      "dev": true,
      "requires": {
        "buffer-alloc": "^1.2.0"
      }
    },
    "isexe": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/isexe/-/isexe-2.0.0.tgz",
      "integrity": "sha1-6PvzdNxVb/iUehDcsFctYz8s+hA=",
      "dev": true
    },
    "isobject": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/isobject/-/isobject-3.0.1.tgz",
      "integrity": "sha1-TkMekrEalzFjaqH5yNHMvP2reN8=",
      "dev": true
    },
    "isstream": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/isstream/-/isstream-0.1.2.tgz",
      "integrity": "sha1-R+Y/evVa+m+S4VAOaQ64uFKcCZo=",
      "dev": true
    },
    "istanbul": {
      "version": "0.4.5",
      "resolved": "https://registry.npmjs.org/istanbul/-/istanbul-0.4.5.tgz",
      "integrity": "sha1-ZcfXPUxNqE1POsMQuRj7C4Azczs=",
      "dev": true,
      "requires": {
        "abbrev": "1.0.x",
        "async": "1.x",
        "escodegen": "1.8.x",
        "esprima": "2.7.x",
        "glob": "^5.0.15",
        "handlebars": "^4.0.1",
        "js-yaml": "3.x",
        "mkdirp": "0.5.x",
        "nopt": "3.x",
        "once": "1.x",
        "resolve": "1.1.x",
        "supports-color": "^3.1.0",
        "which": "^1.1.1",
        "wordwrap": "^1.0.0"
      },
      "dependencies": {
        "glob": {
          "version": "5.0.15",
          "resolved": "https://registry.npmjs.org/glob/-/glob-5.0.15.tgz",
          "integrity": "sha1-G8k2ueAvSmA/zCIuz3Yz0wuLk7E=",
          "dev": true,
          "requires": {
            "inflight": "^1.0.4",
            "inherits": "2",
            "minimatch": "2 || 3",
            "once": "^1.3.0",
            "path-is-absolute": "^1.0.0"
          }
        },
        "has-flag": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/has-flag/-/has-flag-1.0.0.tgz",
          "integrity": "sha1-nZ55MWXOAXoA8AQYxD+UKnsdEfo=",
          "dev": true
        },
        "supports-color": {
          "version": "3.2.3",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-3.2.3.tgz",
          "integrity": "sha1-ZawFBLOVQXHYpklGsq48u4pfVPY=",
          "dev": true,
          "requires": {
            "has-flag": "^1.0.0"
          }
        }
      }
    },
    "istanbul-api": {
      "version": "2.1.7",
      "resolved": "https://registry.npmjs.org/istanbul-api/-/istanbul-api-2.1.7.tgz",
      "integrity": "sha512-LYTOa2UrYFyJ/aSczZi/6lBykVMjCCvUmT64gOe+jPZFy4w6FYfPGqFT2IiQ2BxVHHDOvCD7qrIXb0EOh4uGWw==",
      "dev": true,
      "requires": {
        "async": "^2.6.2",
        "compare-versions": "^3.4.0",
        "fileset": "^2.0.3",
        "istanbul-lib-coverage": "^2.0.5",
        "istanbul-lib-hook": "^2.0.7",
        "istanbul-lib-instrument": "^3.3.0",
        "istanbul-lib-report": "^2.0.8",
        "istanbul-lib-source-maps": "^3.0.6",
        "istanbul-reports": "^2.2.5",
        "js-yaml": "^3.13.1",
        "make-dir": "^2.1.0",
        "minimatch": "^3.0.4",
        "once": "^1.4.0"
      },
      "dependencies": {
        "async": {
          "version": "2.6.3",
          "resolved": "https://registry.npmjs.org/async/-/async-2.6.3.tgz",
          "integrity": "sha512-zflvls11DCy+dQWzTW2dzuilv8Z5X/pjfmZOWba6TNIVDm+2UDaJmXSOXlasHKfNBs8oo3M0aT50fDEWfKZjXg==",
          "dev": true,
          "requires": {
            "lodash": "^4.17.14"
          }
        },
        "istanbul-lib-coverage": {
          "version": "2.0.5",
          "resolved": "https://registry.npmjs.org/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.5.tgz",
          "integrity": "sha512-8aXznuEPCJvGnMSRft4udDRDtb1V3pkQkMMI5LI+6HuQz5oQ4J2UFn1H82raA3qJtyOLkkwVqICBQkjnGtn5mA==",
          "dev": true
        },
        "istanbul-lib-instrument": {
          "version": "3.3.0",
          "resolved": "https://registry.npmjs.org/istanbul-lib-instrument/-/istanbul-lib-instrument-3.3.0.tgz",
          "integrity": "sha512-5nnIN4vo5xQZHdXno/YDXJ0G+I3dAm4XgzfSVTPLQpj/zAV2dV6Juy0yaf10/zrJOJeHoN3fraFe+XRq2bFVZA==",
          "dev": true,
          "requires": {
            "@babel/generator": "^7.4.0",
            "@babel/parser": "^7.4.3",
            "@babel/template": "^7.4.0",
            "@babel/traverse": "^7.4.3",
            "@babel/types": "^7.4.0",
            "istanbul-lib-coverage": "^2.0.5",
            "semver": "^6.0.0"
          }
        },
        "make-dir": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-2.1.0.tgz",
          "integrity": "sha512-LS9X+dc8KLxXCb8dni79fLIIUA5VyZoyjSMCwTluaXA0o27cCK0bhXkpgw+sTXVpPy/lSO57ilRixqk0vDmtRA==",
          "dev": true,
          "requires": {
            "pify": "^4.0.1",
            "semver": "^5.6.0"
          },
          "dependencies": {
            "semver": {
              "version": "5.7.1",
              "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",
              "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ==",
              "dev": true
            }
          }
        },
        "pify": {
          "version": "4.0.1",
          "resolved": "https://registry.npmjs.org/pify/-/pify-4.0.1.tgz",
          "integrity": "sha512-uB80kBFb/tfd68bVleG9T5GGsGPjJrLAUpR5PZIrhBnIaRTQRjqdJSsIKkOP6OAIFbj7GOrcudc5pNjZ+geV2g==",
          "dev": true
        },
        "semver": {
          "version": "6.3.0",
          "resolved": "https://registry.npmjs.org/semver/-/semver-6.3.0.tgz",
          "integrity": "sha512-b39TBaTSfV6yBrapU89p5fKekE2m/NwnDocOVruQFS1/veMgdzuPcnOM34M6CwxW8jH/lxEa5rBoDeUwu5HHTw==",
          "dev": true
        }
      }
    },
    "istanbul-instrumenter-loader": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/istanbul-instrumenter-loader/-/istanbul-instrumenter-loader-3.0.1.tgz",
      "integrity": "sha512-a5SPObZgS0jB/ixaKSMdn6n/gXSrK2S6q/UfRJBT3e6gQmVjwZROTODQsYW5ZNwOu78hG62Y3fWlebaVOL0C+w==",
      "dev": true,
      "requires": {
        "convert-source-map": "^1.5.0",
        "istanbul-lib-instrument": "^1.7.3",
        "loader-utils": "^1.1.0",
        "schema-utils": "^0.3.0"
      },
      "dependencies": {
        "ajv": {
          "version": "5.5.2",
          "resolved": "https://registry.npmjs.org/ajv/-/ajv-5.5.2.tgz",
          "integrity": "sha1-c7Xuyj+rZT49P5Qis0GtQiBdyWU=",
          "dev": true,
          "requires": {
            "co": "^4.6.0",
            "fast-deep-equal": "^1.0.0",
            "fast-json-stable-stringify": "^2.0.0",
            "json-schema-traverse": "^0.3.0"
          }
        },
        "fast-deep-equal": {
          "version": "1.1.0",
          "resolved": "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz",
          "integrity": "sha1-wFNHeBfIa1HaqFPIHgWbcz0CNhQ=",
          "dev": true
        },
        "json-schema-traverse": {
          "version": "0.3.1",
          "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz",
          "integrity": "sha1-NJptRMU6Ud6JtAgFxdXlm0F9M0A=",
          "dev": true
        },
        "schema-utils": {
          "version": "0.3.0",
          "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-0.3.0.tgz",
          "integrity": "sha1-9YdyIs4+kx7a4DnxfrNxbnE3+M8=",
          "dev": true,
          "requires": {
            "ajv": "^5.0.0"
          }
        }
      }
    },
    "istanbul-lib-coverage": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/istanbul-lib-coverage/-/istanbul-lib-coverage-1.2.1.tgz",
      "integrity": "sha512-PzITeunAgyGbtY1ibVIUiV679EFChHjoMNRibEIobvmrCRaIgwLxNucOSimtNWUhEib/oO7QY2imD75JVgCJWQ==",
      "dev": true
    },
    "istanbul-lib-hook": {
      "version": "2.0.7",
      "resolved": "https://registry.npmjs.org/istanbul-lib-hook/-/istanbul-lib-hook-2.0.7.tgz",
      "integrity": "sha512-vrRztU9VRRFDyC+aklfLoeXyNdTfga2EI3udDGn4cZ6fpSXpHLV9X6CHvfoMCPtggg8zvDDmC4b9xfu0z6/llA==",
      "dev": true,
      "requires": {
        "append-transform": "^1.0.0"
      }
    },
    "istanbul-lib-instrument": {
      "version": "1.10.2",
      "resolved": "https://registry.npmjs.org/istanbul-lib-instrument/-/istanbul-lib-instrument-1.10.2.tgz",
      "integrity": "sha512-aWHxfxDqvh/ZlxR8BBaEPVSWDPUkGD63VjGQn3jcw8jCp7sHEMKcrj4xfJn/ABzdMEHiQNyvDQhqm5o8+SQg7A==",
      "dev": true,
      "requires": {
        "babel-generator": "^6.18.0",
        "babel-template": "^6.16.0",
        "babel-traverse": "^6.18.0",
        "babel-types": "^6.18.0",
        "babylon": "^6.18.0",
        "istanbul-lib-coverage": "^1.2.1",
        "semver": "^5.3.0"
      }
    },
    "istanbul-lib-report": {
      "version": "2.0.8",
      "resolved": "https://registry.npmjs.org/istanbul-lib-report/-/istanbul-lib-report-2.0.8.tgz",
      "integrity": "sha512-fHBeG573EIihhAblwgxrSenp0Dby6tJMFR/HvlerBsrCTD5bkUuoNtn3gVh29ZCS824cGGBPn7Sg7cNk+2xUsQ==",
      "dev": true,
      "requires": {
        "istanbul-lib-coverage": "^2.0.5",
        "make-dir": "^2.1.0",
        "supports-color": "^6.1.0"
      },
      "dependencies": {
        "istanbul-lib-coverage": {
          "version": "2.0.5",
          "resolved": "https://registry.npmjs.org/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.5.tgz",
          "integrity": "sha512-8aXznuEPCJvGnMSRft4udDRDtb1V3pkQkMMI5LI+6HuQz5oQ4J2UFn1H82raA3qJtyOLkkwVqICBQkjnGtn5mA==",
          "dev": true
        },
        "make-dir": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-2.1.0.tgz",
          "integrity": "sha512-LS9X+dc8KLxXCb8dni79fLIIUA5VyZoyjSMCwTluaXA0o27cCK0bhXkpgw+sTXVpPy/lSO57ilRixqk0vDmtRA==",
          "dev": true,
          "requires": {
            "pify": "^4.0.1",
            "semver": "^5.6.0"
          }
        },
        "pify": {
          "version": "4.0.1",
          "resolved": "https://registry.npmjs.org/pify/-/pify-4.0.1.tgz",
          "integrity": "sha512-uB80kBFb/tfd68bVleG9T5GGsGPjJrLAUpR5PZIrhBnIaRTQRjqdJSsIKkOP6OAIFbj7GOrcudc5pNjZ+geV2g==",
          "dev": true
        },
        "supports-color": {
          "version": "6.1.0",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-6.1.0.tgz",
          "integrity": "sha512-qe1jfm1Mg7Nq/NSh6XE24gPXROEVsWHxC1LIx//XNlD9iw7YZQGjZNjYN7xGaEG6iKdA8EtNFW6R0gjnVXp+wQ==",
          "dev": true,
          "requires": {
            "has-flag": "^3.0.0"
          }
        }
      }
    },
    "istanbul-lib-source-maps": {
      "version": "3.0.6",
      "resolved": "https://registry.npmjs.org/istanbul-lib-source-maps/-/istanbul-lib-source-maps-3.0.6.tgz",
      "integrity": "sha512-R47KzMtDJH6X4/YW9XTx+jrLnZnscW4VpNN+1PViSYTejLVPWv7oov+Duf8YQSPyVRUvueQqz1TcsC6mooZTXw==",
      "dev": true,
      "requires": {
        "debug": "^4.1.1",
        "istanbul-lib-coverage": "^2.0.5",
        "make-dir": "^2.1.0",
        "rimraf": "^2.6.3",
        "source-map": "^0.6.1"
      },
      "dependencies": {
        "debug": {
          "version": "4.1.1",
          "resolved": "https://registry.npmjs.org/debug/-/debug-4.1.1.tgz",
          "integrity": "sha512-pYAIzeRo8J6KPEaJ0VWOh5Pzkbw/RetuzehGM7QRRX5he4fPHx2rdKMB256ehJCkX+XRQm16eZLqLNS8RSZXZw==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "istanbul-lib-coverage": {
          "version": "2.0.5",
          "resolved": "https://registry.npmjs.org/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.5.tgz",
          "integrity": "sha512-8aXznuEPCJvGnMSRft4udDRDtb1V3pkQkMMI5LI+6HuQz5oQ4J2UFn1H82raA3qJtyOLkkwVqICBQkjnGtn5mA==",
          "dev": true
        },
        "make-dir": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-2.1.0.tgz",
          "integrity": "sha512-LS9X+dc8KLxXCb8dni79fLIIUA5VyZoyjSMCwTluaXA0o27cCK0bhXkpgw+sTXVpPy/lSO57ilRixqk0vDmtRA==",
          "dev": true,
          "requires": {
            "pify": "^4.0.1",
            "semver": "^5.6.0"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        },
        "pify": {
          "version": "4.0.1",
          "resolved": "https://registry.npmjs.org/pify/-/pify-4.0.1.tgz",
          "integrity": "sha512-uB80kBFb/tfd68bVleG9T5GGsGPjJrLAUpR5PZIrhBnIaRTQRjqdJSsIKkOP6OAIFbj7GOrcudc5pNjZ+geV2g==",
          "dev": true
        },
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "istanbul-reports": {
      "version": "2.2.7",
      "resolved": "https://registry.npmjs.org/istanbul-reports/-/istanbul-reports-2.2.7.tgz",
      "integrity": "sha512-uu1F/L1o5Y6LzPVSVZXNOoD/KXpJue9aeLRd0sM9uMXfZvzomB0WxVamWb5ue8kA2vVWEmW7EG+A5n3f1kqHKg==",
      "dev": true,
      "requires": {
        "html-escaper": "^2.0.0"
      }
    },
    "jasmine": {
      "version": "2.8.0",
      "resolved": "https://registry.npmjs.org/jasmine/-/jasmine-2.8.0.tgz",
      "integrity": "sha1-awicChFXax8W3xG4AUbZHU6Lij4=",
      "dev": true,
      "requires": {
        "exit": "^0.1.2",
        "glob": "^7.0.6",
        "jasmine-core": "~2.8.0"
      },
      "dependencies": {
        "jasmine-core": {
          "version": "2.8.0",
          "resolved": "https://registry.npmjs.org/jasmine-core/-/jasmine-core-2.8.0.tgz",
          "integrity": "sha1-vMl5rh+f0FcB5F5S5l06XWPxok4=",
          "dev": true
        }
      }
    },
    "jasmine-core": {
      "version": "2.99.1",
      "resolved": "https://registry.npmjs.org/jasmine-core/-/jasmine-core-2.99.1.tgz",
      "integrity": "sha1-5kAN8ea1bhMLYcS80JPap/boyhU=",
      "dev": true
    },
    "jasmine-spec-reporter": {
      "version": "4.2.1",
      "resolved": "https://registry.npmjs.org/jasmine-spec-reporter/-/jasmine-spec-reporter-4.2.1.tgz",
      "integrity": "sha512-FZBoZu7VE5nR7Nilzy+Np8KuVIOxF4oXDPDknehCYBDE080EnlPu0afdZNmpGDBRCUBv3mj5qgqCRmk6W/K8vg==",
      "dev": true,
      "requires": {
        "colors": "1.1.2"
      }
    },
    "jasminewd2": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/jasminewd2/-/jasminewd2-2.2.0.tgz",
      "integrity": "sha1-43zwsX8ZnM4jvqcbIDk5Uka07E4=",
      "dev": true
    },
    "js-base64": {
      "version": "2.5.2",
      "resolved": "https://registry.npmjs.org/js-base64/-/js-base64-2.5.2.tgz",
      "integrity": "sha512-Vg8czh0Q7sFBSUMWWArX/miJeBWYBPpdU/3M/DKSaekLMqrqVPaedp+5mZhie/r0lgrcaYBfwXatEew6gwgiQQ==",
      "dev": true,
      "optional": true
    },
    "js-tokens": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/js-tokens/-/js-tokens-3.0.2.tgz",
      "integrity": "sha1-mGbfOVECEw449/mWvOtlRDIJwls=",
      "dev": true
    },
    "js-yaml": {
      "version": "3.13.1",
      "resolved": "https://registry.npmjs.org/js-yaml/-/js-yaml-3.13.1.tgz",
      "integrity": "sha512-YfbcO7jXDdyj0DGxYVSlSeQNHbD7XPWvrVWeVUujrQEoZzWJIRrCPoyk6kL6IAjAG2IolMK4T0hNUe0HOUs5Jw==",
      "dev": true,
      "requires": {
        "argparse": "^1.0.7",
        "esprima": "^4.0.0"
      },
      "dependencies": {
        "esprima": {
          "version": "4.0.1",
          "resolved": "https://registry.npmjs.org/esprima/-/esprima-4.0.1.tgz",
          "integrity": "sha512-eGuFFw7Upda+g4p+QHvnW0RyTX/SVeJBDM/gCtMARO0cLuT2HcEKnTPvhjV6aGeqrCB/sbNop0Kszm0jsaWU4A==",
          "dev": true
        }
      }
    },
    "jsbn": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/jsbn/-/jsbn-0.1.1.tgz",
      "integrity": "sha1-peZUwuWi3rXyAdls77yoDA7y9RM=",
      "dev": true
    },
    "jsesc": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/jsesc/-/jsesc-1.3.0.tgz",
      "integrity": "sha1-RsP+yMGJKxKwgz25vHYiF226s0s=",
      "dev": true
    },
    "json-parse-better-errors": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/json-parse-better-errors/-/json-parse-better-errors-1.0.2.tgz",
      "integrity": "sha512-mrqyZKfX5EhL7hvqcV6WG1yYjnjeuYDzDhhcAAUrq8Po85NBQBJP+ZDUT75qZQ98IkUoBqdkExkukOU7Ts2wrw==",
      "dev": true
    },
    "json-schema": {
      "version": "0.2.3",
      "resolved": "https://registry.npmjs.org/json-schema/-/json-schema-0.2.3.tgz",
      "integrity": "sha1-tIDIkuWaLwWVTOcnvT8qTogvnhM=",
      "dev": true
    },
    "json-schema-traverse": {
      "version": "0.4.1",
      "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz",
      "integrity": "sha512-xbbCH5dCYU5T8LcEhhuh7HJ88HXuW3qsI3Y0zOZFKfZEHcpWiHU/Jxzk629Brsab/mMiHQti9wMP+845RPe3Vg==",
      "dev": true
    },
    "json-stringify-safe": {
      "version": "5.0.1",
      "resolved": "https://registry.npmjs.org/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz",
      "integrity": "sha1-Epai1Y/UXxmg9s4B1lcB4sc1tus=",
      "dev": true
    },
    "json3": {
      "version": "3.3.3",
      "resolved": "https://registry.npmjs.org/json3/-/json3-3.3.3.tgz",
      "integrity": "sha512-c7/8mbUsKigAbLkD5B010BK4D9LZm7A1pNItkEwiUZRpIN66exu/e7YQWysGun+TRKaJp8MhemM+VkfWv42aCA==",
      "dev": true
    },
    "json5": {
      "version": "0.5.1",
      "resolved": "https://registry.npmjs.org/json5/-/json5-0.5.1.tgz",
      "integrity": "sha1-Hq3nrMASA0rYTiOWdn6tn6VJWCE=",
      "dev": true
    },
    "jsprim": {
      "version": "1.4.1",
      "resolved": "https://registry.npmjs.org/jsprim/-/jsprim-1.4.1.tgz",
      "integrity": "sha1-MT5mvB5cwG5Di8G3SZwuXFastqI=",
      "dev": true,
      "requires": {
        "assert-plus": "1.0.0",
        "extsprintf": "1.3.0",
        "json-schema": "0.2.3",
        "verror": "1.10.0"
      }
    },
    "jszip": {
      "version": "3.4.0",
      "resolved": "https://registry.npmjs.org/jszip/-/jszip-3.4.0.tgz",
      "integrity": "sha512-gZAOYuPl4EhPTXT0GjhI3o+ZAz3su6EhLrKUoAivcKqyqC7laS5JEv4XWZND9BgcDcF83vI85yGbDmDR6UhrIg==",
      "dev": true,
      "requires": {
        "lie": "~3.3.0",
        "pako": "~1.0.2",
        "readable-stream": "~2.3.6",
        "set-immediate-shim": "~1.0.1"
      }
    },
    "karma": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/karma/-/karma-3.0.0.tgz",
      "integrity": "sha512-ZTjyuDXVXhXsvJ1E4CnZzbCjSxD6sEdzEsFYogLuZM0yqvg/mgz+O+R1jb0J7uAQeuzdY8kJgx6hSNXLwFuHIQ==",
      "dev": true,
      "requires": {
        "bluebird": "^3.3.0",
        "body-parser": "^1.16.1",
        "chokidar": "^2.0.3",
        "colors": "^1.1.0",
        "combine-lists": "^1.0.0",
        "connect": "^3.6.0",
        "core-js": "^2.2.0",
        "di": "^0.0.1",
        "dom-serialize": "^2.2.0",
        "expand-braces": "^0.1.1",
        "glob": "^7.1.1",
        "graceful-fs": "^4.1.2",
        "http-proxy": "^1.13.0",
        "isbinaryfile": "^3.0.0",
        "lodash": "^4.17.4",
        "log4js": "^3.0.0",
        "mime": "^2.3.1",
        "minimatch": "^3.0.2",
        "optimist": "^0.6.1",
        "qjobs": "^1.1.4",
        "range-parser": "^1.2.0",
        "rimraf": "^2.6.0",
        "safe-buffer": "^5.0.1",
        "socket.io": "2.1.1",
        "source-map": "^0.6.1",
        "tmp": "0.0.33",
        "useragent": "2.2.1"
      },
      "dependencies": {
        "mime": {
          "version": "2.4.5",
          "resolved": "https://registry.npmjs.org/mime/-/mime-2.4.5.tgz",
          "integrity": "sha512-3hQhEUF027BuxZjQA3s7rIv/7VCQPa27hN9u9g87sEkWaKwQPuXOkVKtOeiyUrnWqTDiOs8Ed2rwg733mB0R5w==",
          "dev": true
        },
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "karma-chrome-launcher": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/karma-chrome-launcher/-/karma-chrome-launcher-2.2.0.tgz",
      "integrity": "sha512-uf/ZVpAabDBPvdPdveyk1EPgbnloPvFFGgmRhYLTDH7gEB4nZdSBk8yTU47w1g/drLSx5uMOkjKk7IWKfWg/+w==",
      "dev": true,
      "requires": {
        "fs-access": "^1.0.0",
        "which": "^1.2.1"
      }
    },
    "karma-coverage-istanbul-reporter": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/karma-coverage-istanbul-reporter/-/karma-coverage-istanbul-reporter-2.0.6.tgz",
      "integrity": "sha512-WFh77RI8bMIKdOvI/1/IBmgnM+Q7NOLhnwG91QJrM8lW+CIXCjTzhhUsT/svLvAkLmR10uWY4RyYbHMLkTglvg==",
      "dev": true,
      "requires": {
        "istanbul-api": "^2.1.6",
        "minimatch": "^3.0.4"
      }
    },
    "karma-jasmine": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/karma-jasmine/-/karma-jasmine-1.1.2.tgz",
      "integrity": "sha1-OU8rJf+0pkS5rabyLUQ+L9CIhsM=",
      "dev": true
    },
    "karma-jasmine-html-reporter": {
      "version": "0.2.2",
      "resolved": "https://registry.npmjs.org/karma-jasmine-html-reporter/-/karma-jasmine-html-reporter-0.2.2.tgz",
      "integrity": "sha1-SKjl7xiAdhfuK14zwRlMNbQ5Ukw=",
      "dev": true,
      "requires": {
        "karma-jasmine": "^1.0.2"
      }
    },
    "karma-source-map-support": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/karma-source-map-support/-/karma-source-map-support-1.3.0.tgz",
      "integrity": "sha512-HcPqdAusNez/ywa+biN4EphGz62MmQyPggUsDfsHqa7tSe4jdsxgvTKuDfIazjL+IOxpVWyT7Pr4dhAV+sxX5Q==",
      "dev": true,
      "requires": {
        "source-map-support": "^0.5.5"
      }
    },
    "killable": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/killable/-/killable-1.0.1.tgz",
      "integrity": "sha512-LzqtLKlUwirEUyl/nicirVmNiPvYs7l5n8wOPP7fyJVpUPkvCnW/vuiXGpylGUlnPDnB7311rARzAt3Mhswpjg==",
      "dev": true
    },
    "kind-of": {
      "version": "6.0.3",
      "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-6.0.3.tgz",
      "integrity": "sha512-dcS1ul+9tmeD95T+x28/ehLgd9mENa3LsvDTtzm3vyBEO7RPptvAD+t44WVXaUjTBRcrpFeFlC8WCruUR456hw==",
      "dev": true
    },
    "lcid": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/lcid/-/lcid-2.0.0.tgz",
      "integrity": "sha512-avPEb8P8EGnwXKClwsNUgryVjllcRqtMYa49NTsbQagYuT1DcXnl1915oxWjoyGrXR6zH/Y0Zc96xWsPcoDKeA==",
      "dev": true,
      "requires": {
        "invert-kv": "^2.0.0"
      }
    },
    "less": {
      "version": "3.8.1",
      "resolved": "https://registry.npmjs.org/less/-/less-3.8.1.tgz",
      "integrity": "sha512-8HFGuWmL3FhQR0aH89escFNBQH/nEiYPP2ltDFdQw2chE28Yx2E3lhAIq9Y2saYwLSwa699s4dBVEfCY8Drf7Q==",
      "dev": true,
      "requires": {
        "clone": "^2.1.2",
        "errno": "^0.1.1",
        "graceful-fs": "^4.1.2",
        "image-size": "~0.5.0",
        "mime": "^1.4.1",
        "mkdirp": "^0.5.0",
        "promise": "^7.1.1",
        "request": "^2.83.0",
        "source-map": "~0.6.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true,
          "optional": true
        }
      }
    },
    "less-loader": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/less-loader/-/less-loader-4.1.0.tgz",
      "integrity": "sha512-KNTsgCE9tMOM70+ddxp9yyt9iHqgmSs0yTZc5XH5Wo+g80RWRIYNqE58QJKm/yMud5wZEvz50ugRDuzVIkyahg==",
      "dev": true,
      "requires": {
        "clone": "^2.1.1",
        "loader-utils": "^1.1.0",
        "pify": "^3.0.0"
      }
    },
    "levn": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/levn/-/levn-0.3.0.tgz",
      "integrity": "sha1-OwmSTt+fCDwEkP3UwLxEIeBHZO4=",
      "dev": true,
      "requires": {
        "prelude-ls": "~1.1.2",
        "type-check": "~0.3.2"
      }
    },
    "license-webpack-plugin": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/license-webpack-plugin/-/license-webpack-plugin-2.0.2.tgz",
      "integrity": "sha512-GsomZw5VoT20ST8qH2tOjBgbyhn6Pgs9M94g0mbvfBIV1VXufm1iKY+4dbgfTObj1Mp6nSRE3Zf74deOZr0KwA==",
      "dev": true,
      "requires": {
        "webpack-sources": "^1.2.0"
      }
    },
    "lie": {
      "version": "3.3.0",
      "resolved": "https://registry.npmjs.org/lie/-/lie-3.3.0.tgz",
      "integrity": "sha512-UaiMJzeWRlEujzAuw5LokY1L5ecNQYZKfmyZ9L7wDHb/p5etKaxXhohBcrw0EYby+G/NA52vRSN4N39dxHAIwQ==",
      "dev": true,
      "requires": {
        "immediate": "~3.0.5"
      }
    },
    "load-json-file": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/load-json-file/-/load-json-file-1.1.0.tgz",
      "integrity": "sha1-lWkFcI1YtLq0wiYbBPWfMcmTdMA=",
      "dev": true,
      "optional": true,
      "requires": {
        "graceful-fs": "^4.1.2",
        "parse-json": "^2.2.0",
        "pify": "^2.0.0",
        "pinkie-promise": "^2.0.0",
        "strip-bom": "^2.0.0"
      },
      "dependencies": {
        "pify": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
          "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
          "dev": true,
          "optional": true
        }
      }
    },
    "loader-runner": {
      "version": "2.4.0",
      "resolved": "https://registry.npmjs.org/loader-runner/-/loader-runner-2.4.0.tgz",
      "integrity": "sha512-Jsmr89RcXGIwivFY21FcRrisYZfvLMTWx5kOLc+JTxtpBOG6xML0vzbc6SEQG2FO9/4Fc3wW4LVcB5DmGflaRw==",
      "dev": true
    },
    "loader-utils": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/loader-utils/-/loader-utils-1.1.0.tgz",
      "integrity": "sha1-yYrvSIvM7aL/teLeZG1qdUQp9c0=",
      "dev": true,
      "requires": {
        "big.js": "^3.1.3",
        "emojis-list": "^2.0.0",
        "json5": "^0.5.0"
      }
    },
    "locate-path": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-2.0.0.tgz",
      "integrity": "sha1-K1aLJl7slExtnA3pw9u7ygNUzY4=",
      "dev": true,
      "requires": {
        "p-locate": "^2.0.0",
        "path-exists": "^3.0.0"
      }
    },
    "lodash": {
      "version": "4.17.15",
      "resolved": "https://registry.npmjs.org/lodash/-/lodash-4.17.15.tgz",
      "integrity": "sha512-8xOcRHvCjnocdS5cpwXQXVzmmh5e5+saE2QGoeQmbKmRS6J3VQppPOIt0MnmE+4xlZoumy0GPG0D0MVIQbNA1A==",
      "dev": true
    },
    "lodash.assign": {
      "version": "4.2.0",
      "resolved": "https://registry.npmjs.org/lodash.assign/-/lodash.assign-4.2.0.tgz",
      "integrity": "sha1-DZnzzNem0mHRm9rrkkUAXShYCOc=",
      "dev": true,
      "optional": true
    },
    "lodash.clonedeep": {
      "version": "4.5.0",
      "resolved": "https://registry.npmjs.org/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz",
      "integrity": "sha1-4j8/nE+Pvd6HJSnBBxhXoIblzO8=",
      "dev": true
    },
    "lodash.debounce": {
      "version": "4.0.8",
      "resolved": "https://registry.npmjs.org/lodash.debounce/-/lodash.debounce-4.0.8.tgz",
      "integrity": "sha1-gteb/zCmfEAF/9XiUVMArZyk168=",
      "dev": true
    },
    "lodash.mergewith": {
      "version": "4.6.2",
      "resolved": "https://registry.npmjs.org/lodash.mergewith/-/lodash.mergewith-4.6.2.tgz",
      "integrity": "sha512-GK3g5RPZWTRSeLSpgP8Xhra+pnjBC56q9FZYe1d5RN3TJ35dbkGy3YqBSMbyCrlbi+CM9Z3Jk5yTL7RCsqboyQ==",
      "dev": true,
      "optional": true
    },
    "lodash.tail": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/lodash.tail/-/lodash.tail-4.1.1.tgz",
      "integrity": "sha1-0jM6NtnncXyK0vfKyv7HwytERmQ=",
      "dev": true
    },
    "log4js": {
      "version": "3.0.6",
      "resolved": "https://registry.npmjs.org/log4js/-/log4js-3.0.6.tgz",
      "integrity": "sha512-ezXZk6oPJCWL483zj64pNkMuY/NcRX5MPiB0zE6tjZM137aeusrOnW1ecxgF9cmwMWkBMhjteQxBPoZBh9FDxQ==",
      "dev": true,
      "requires": {
        "circular-json": "^0.5.5",
        "date-format": "^1.2.0",
        "debug": "^3.1.0",
        "rfdc": "^1.1.2",
        "streamroller": "0.7.0"
      },
      "dependencies": {
        "debug": {
          "version": "3.2.6",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.2.6.tgz",
          "integrity": "sha512-mel+jf7nrtEl5Pn1Qx46zARXKDpBbvzezse7p7LqINmdoIk8PYP5SySaxEmYv6TZ0JyEKA1hsCId6DIhgITtWQ==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "loglevel": {
      "version": "1.6.8",
      "resolved": "https://registry.npmjs.org/loglevel/-/loglevel-1.6.8.tgz",
      "integrity": "sha512-bsU7+gc9AJ2SqpzxwU3+1fedl8zAntbtC5XYlt3s2j1hJcn2PsXSmgN8TaLG/J1/2mod4+cE/3vNL70/c1RNCA==",
      "dev": true
    },
    "loose-envify": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/loose-envify/-/loose-envify-1.4.0.tgz",
      "integrity": "sha512-lyuxPGr/Wfhrlem2CL/UcnUc1zcqKAImBDzukY7Y5F/yQiNdko6+fRLevlw1HgMySw7f611UIY408EtxRSoK3Q==",
      "dev": true,
      "requires": {
        "js-tokens": "^3.0.0 || ^4.0.0"
      }
    },
    "loud-rejection": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/loud-rejection/-/loud-rejection-1.6.0.tgz",
      "integrity": "sha1-W0b4AUft7leIcPCG0Eghz5mOVR8=",
      "dev": true,
      "requires": {
        "currently-unhandled": "^0.4.1",
        "signal-exit": "^3.0.0"
      }
    },
    "lru-cache": {
      "version": "4.1.5",
      "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-4.1.5.tgz",
      "integrity": "sha512-sWZlbEP2OsHNkXrMl5GYk/jKk70MBng6UU4YI/qGDYbgf6YbP4EvmqISbXCoJiRKs+1bSpFHVgQxvJ17F2li5g==",
      "dev": true,
      "requires": {
        "pseudomap": "^1.0.2",
        "yallist": "^2.1.2"
      }
    },
    "magic-string": {
      "version": "0.25.7",
      "resolved": "https://registry.npmjs.org/magic-string/-/magic-string-0.25.7.tgz",
      "integrity": "sha512-4CrMT5DOHTDk4HYDlzmwu4FVCcIYI8gauveasrdCu2IKIFOJ3f0v/8MDGJCDL9oD2ppz/Av1b0Nj345H9M+XIA==",
      "dev": true,
      "requires": {
        "sourcemap-codec": "^1.4.4"
      }
    },
    "make-dir": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-1.3.0.tgz",
      "integrity": "sha512-2w31R7SJtieJJnQtGc7RVL2StM2vGYVfqUOvUDxH6bC6aJTxPxTF0GnIgCyu7tjockiUWAYQRbxa7vKn34s5sQ==",
      "dev": true,
      "requires": {
        "pify": "^3.0.0"
      }
    },
    "make-error": {
      "version": "1.3.6",
      "resolved": "https://registry.npmjs.org/make-error/-/make-error-1.3.6.tgz",
      "integrity": "sha512-s8UhlNe7vPKomQhC1qFelMokr/Sc3AgNbso3n74mVPA5LTZwkB9NlXf4XPamLxJE8h0gh73rM94xvwRT2CVInw==",
      "dev": true
    },
    "mamacro": {
      "version": "0.0.3",
      "resolved": "https://registry.npmjs.org/mamacro/-/mamacro-0.0.3.tgz",
      "integrity": "sha512-qMEwh+UujcQ+kbz3T6V+wAmO2U8veoq2w+3wY8MquqwVA3jChfwY+Tk52GZKDfACEPjuZ7r2oJLejwpt8jtwTA==",
      "dev": true
    },
    "map-age-cleaner": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/map-age-cleaner/-/map-age-cleaner-0.1.3.tgz",
      "integrity": "sha512-bJzx6nMoP6PDLPBFmg7+xRKeFZvFboMrGlxmNj9ClvX53KrmvM5bXFXEWjbz4cz1AFn+jWJ9z/DJSz7hrs0w3w==",
      "dev": true,
      "requires": {
        "p-defer": "^1.0.0"
      }
    },
    "map-cache": {
      "version": "0.2.2",
      "resolved": "https://registry.npmjs.org/map-cache/-/map-cache-0.2.2.tgz",
      "integrity": "sha1-wyq9C9ZSXZsFFkW7TyasXcmKDb8=",
      "dev": true
    },
    "map-obj": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/map-obj/-/map-obj-1.0.1.tgz",
      "integrity": "sha1-2TPOuSBdgr3PSIb2dCvcK03qFG0=",
      "dev": true,
      "optional": true
    },
    "map-visit": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/map-visit/-/map-visit-1.0.0.tgz",
      "integrity": "sha1-7Nyo8TFE5mDxtb1B8S80edmN+48=",
      "dev": true,
      "requires": {
        "object-visit": "^1.0.0"
      }
    },
    "math-random": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/math-random/-/math-random-1.0.4.tgz",
      "integrity": "sha512-rUxjysqif/BZQH2yhd5Aaq7vXMSx9NdEsQcyA07uEzIvxgI7zIr33gGsh+RU0/XjmQpCW7RsVof1vlkvQVCK5A==",
      "dev": true
    },
    "md5.js": {
      "version": "1.3.5",
      "resolved": "https://registry.npmjs.org/md5.js/-/md5.js-1.3.5.tgz",
      "integrity": "sha512-xitP+WxNPcTTOgnTJcrhM0xvdPepipPSf3I8EIpGKeFLjt3PlJLIDG3u8EX53ZIubkb+5U2+3rELYpEhHhzdkg==",
      "dev": true,
      "requires": {
        "hash-base": "^3.0.0",
        "inherits": "^2.0.1",
        "safe-buffer": "^5.1.2"
      }
    },
    "media-typer": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/media-typer/-/media-typer-0.3.0.tgz",
      "integrity": "sha1-hxDXrwqmJvj/+hzgAWhUUmMlV0g=",
      "dev": true
    },
    "mem": {
      "version": "4.3.0",
      "resolved": "https://registry.npmjs.org/mem/-/mem-4.3.0.tgz",
      "integrity": "sha512-qX2bG48pTqYRVmDB37rn/6PT7LcR8T7oAX3bf99u1Tt1nzxYfxkgqDwUwolPlXweM0XzBOBFzSx4kfp7KP1s/w==",
      "dev": true,
      "requires": {
        "map-age-cleaner": "^0.1.1",
        "mimic-fn": "^2.0.0",
        "p-is-promise": "^2.0.0"
      }
    },
    "memory-fs": {
      "version": "0.4.1",
      "resolved": "https://registry.npmjs.org/memory-fs/-/memory-fs-0.4.1.tgz",
      "integrity": "sha1-OpoguEYlI+RHz7x+i7gO1me/xVI=",
      "dev": true,
      "requires": {
        "errno": "^0.1.3",
        "readable-stream": "^2.0.1"
      }
    },
    "meow": {
      "version": "3.7.0",
      "resolved": "https://registry.npmjs.org/meow/-/meow-3.7.0.tgz",
      "integrity": "sha1-cstmi0JSKCkKu/qFaJJYcwioAfs=",
      "dev": true,
      "optional": true,
      "requires": {
        "camelcase-keys": "^2.0.0",
        "decamelize": "^1.1.2",
        "loud-rejection": "^1.0.0",
        "map-obj": "^1.0.1",
        "minimist": "^1.1.3",
        "normalize-package-data": "^2.3.4",
        "object-assign": "^4.0.1",
        "read-pkg-up": "^1.0.1",
        "redent": "^1.0.0",
        "trim-newlines": "^1.0.0"
      }
    },
    "merge-descriptors": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.1.tgz",
      "integrity": "sha1-sAqqVW3YtEVoFQ7J0blT8/kMu2E=",
      "dev": true
    },
    "methods": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/methods/-/methods-1.1.2.tgz",
      "integrity": "sha1-VSmk1nZUE07cxSZmVoNbD4Ua/O4=",
      "dev": true
    },
    "micromatch": {
      "version": "3.1.10",
      "resolved": "https://registry.npmjs.org/micromatch/-/micromatch-3.1.10.tgz",
      "integrity": "sha512-MWikgl9n9M3w+bpsY3He8L+w9eF9338xRl8IAO5viDizwSzziFEyUzo2xrrloB64ADbTf8uA8vRqqttDTOmccg==",
      "dev": true,
      "requires": {
        "arr-diff": "^4.0.0",
        "array-unique": "^0.3.2",
        "braces": "^2.3.1",
        "define-property": "^2.0.2",
        "extend-shallow": "^3.0.2",
        "extglob": "^2.0.4",
        "fragment-cache": "^0.2.1",
        "kind-of": "^6.0.2",
        "nanomatch": "^1.2.9",
        "object.pick": "^1.3.0",
        "regex-not": "^1.0.0",
        "snapdragon": "^0.8.1",
        "to-regex": "^3.0.2"
      }
    },
    "miller-rabin": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/miller-rabin/-/miller-rabin-4.0.1.tgz",
      "integrity": "sha512-115fLhvZVqWwHPbClyntxEVfVDfl9DLLTuJvq3g2O/Oxi8AiNouAHvDSzHS0viUJc+V5vm3eq91Xwqn9dp4jRA==",
      "dev": true,
      "requires": {
        "bn.js": "^4.0.0",
        "brorand": "^1.0.1"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "mime": {
      "version": "1.6.0",
      "resolved": "https://registry.npmjs.org/mime/-/mime-1.6.0.tgz",
      "integrity": "sha512-x0Vn8spI+wuJ1O6S7gnbaQg8Pxh4NNHb7KSINmEWKiPE4RKOplvijn+NkmYmmRgP68mc70j2EbeTFRsrswaQeg==",
      "dev": true
    },
    "mime-db": {
      "version": "1.44.0",
      "resolved": "https://registry.npmjs.org/mime-db/-/mime-db-1.44.0.tgz",
      "integrity": "sha512-/NOTfLrsPBVeH7YtFPgsVWveuL+4SjjYxaQ1xtM1KMFj7HdxlBlxeyNLzhyJVx7r4rZGJAZ/6lkKCitSc/Nmpg==",
      "dev": true
    },
    "mime-types": {
      "version": "2.1.27",
      "resolved": "https://registry.npmjs.org/mime-types/-/mime-types-2.1.27.tgz",
      "integrity": "sha512-JIhqnCasI9yD+SsmkquHBxTSEuZdQX5BuQnS2Vc7puQQQ+8yiP5AY5uWhpdv4YL4VM5c6iliiYWPgJ/nJQLp7w==",
      "dev": true,
      "requires": {
        "mime-db": "1.44.0"
      }
    },
    "mimic-fn": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/mimic-fn/-/mimic-fn-2.1.0.tgz",
      "integrity": "sha512-OqbOk5oEQeAZ8WXWydlu9HJjz9WVdEIvamMCcXmuqUYjTknH/sqsWvhQ3vgwKFRR1HpjvNBKQ37nbJgYzGqGcg==",
      "dev": true
    },
    "mini-css-extract-plugin": {
      "version": "0.4.3",
      "resolved": "https://registry.npmjs.org/mini-css-extract-plugin/-/mini-css-extract-plugin-0.4.3.tgz",
      "integrity": "sha512-Mxs0nxzF1kxPv4TRi2NimewgXlJqh0rGE30vviCU2WHrpbta6wklnUV9dr9FUtoAHmB3p3LeXEC+ZjgHvB0Dzg==",
      "dev": true,
      "requires": {
        "loader-utils": "^1.1.0",
        "schema-utils": "^1.0.0",
        "webpack-sources": "^1.1.0"
      }
    },
    "minimalistic-assert": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.1.tgz",
      "integrity": "sha512-UtJcAD4yEaGtjPezWuO9wC4nwUnVH/8/Im3yEHQP4b67cXlD/Qr9hdITCU1xDbSEXg2XKNaP8jsReV7vQd00/A==",
      "dev": true
    },
    "minimalistic-crypto-utils": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz",
      "integrity": "sha1-9sAMHAsIIkblxNmd+4x8CDsrWCo=",
      "dev": true
    },
    "minimatch": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/minimatch/-/minimatch-3.0.4.tgz",
      "integrity": "sha512-yJHVQEhyqPLUTgt9B83PXu6W3rx4MvvHvSUvToogpwoGDOUQ+yDrR0HRot+yOCdCO7u4hX3pWft6kWBBcqh0UA==",
      "dev": true,
      "requires": {
        "brace-expansion": "^1.1.7"
      }
    },
    "minimist": {
      "version": "1.2.5",
      "resolved": "https://registry.npmjs.org/minimist/-/minimist-1.2.5.tgz",
      "integrity": "sha512-FM9nNUYrRBAELZQT3xeZQ7fmMOBg6nWNmJKTcgsJeaLstP/UODVpGsr5OhXhhXg6f+qtJ8uiZ+PUxkDWcgIXLw==",
      "dev": true
    },
    "mississippi": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/mississippi/-/mississippi-2.0.0.tgz",
      "integrity": "sha512-zHo8v+otD1J10j/tC+VNoGK9keCuByhKovAvdn74dmxJl9+mWHnx6EMsDN4lgRoMI/eYo2nchAxniIbUPb5onw==",
      "dev": true,
      "requires": {
        "concat-stream": "^1.5.0",
        "duplexify": "^3.4.2",
        "end-of-stream": "^1.1.0",
        "flush-write-stream": "^1.0.0",
        "from2": "^2.1.0",
        "parallel-transform": "^1.1.0",
        "pump": "^2.0.1",
        "pumpify": "^1.3.3",
        "stream-each": "^1.1.0",
        "through2": "^2.0.0"
      }
    },
    "mixin-deep": {
      "version": "1.3.2",
      "resolved": "https://registry.npmjs.org/mixin-deep/-/mixin-deep-1.3.2.tgz",
      "integrity": "sha512-WRoDn//mXBiJ1H40rqa3vH0toePwSsGb45iInWlTySa+Uu4k3tYUSxa2v1KqAiLtvlrSzaExqS1gtk96A9zvEA==",
      "dev": true,
      "requires": {
        "for-in": "^1.0.2",
        "is-extendable": "^1.0.1"
      },
      "dependencies": {
        "is-extendable": {
          "version": "1.0.1",
          "resolved": "https://registry.npmjs.org/is-extendable/-/is-extendable-1.0.1.tgz",
          "integrity": "sha512-arnXMxT1hhoKo9k1LZdmlNyJdDDfy2v0fXjFlmok4+i8ul/6WlbVge9bhM74OpNPQPMGUToDtz+KXa1PneJxOA==",
          "dev": true,
          "requires": {
            "is-plain-object": "^2.0.4"
          }
        }
      }
    },
    "mixin-object": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/mixin-object/-/mixin-object-2.0.1.tgz",
      "integrity": "sha1-T7lJRB2rGCVA8f4DW6YOGUel5X4=",
      "dev": true,
      "requires": {
        "for-in": "^0.1.3",
        "is-extendable": "^0.1.1"
      },
      "dependencies": {
        "for-in": {
          "version": "0.1.8",
          "resolved": "https://registry.npmjs.org/for-in/-/for-in-0.1.8.tgz",
          "integrity": "sha1-2Hc5COMSVhCZUrH9ubP6hn0ndeE=",
          "dev": true
        }
      }
    },
    "mkdirp": {
      "version": "0.5.5",
      "resolved": "https://registry.npmjs.org/mkdirp/-/mkdirp-0.5.5.tgz",
      "integrity": "sha512-NKmAlESf6jMGym1++R0Ra7wvhV+wFW63FaSOFPwRahvea0gMUcGUhVeAg/0BC0wiv9ih5NYPB1Wn1UEI1/L+xQ==",
      "dev": true,
      "requires": {
        "minimist": "^1.2.5"
      }
    },
    "move-concurrently": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/move-concurrently/-/move-concurrently-1.0.1.tgz",
      "integrity": "sha1-viwAX9oy4LKa8fBdfEszIUxwH5I=",
      "dev": true,
      "requires": {
        "aproba": "^1.1.1",
        "copy-concurrently": "^1.0.0",
        "fs-write-stream-atomic": "^1.0.8",
        "mkdirp": "^0.5.1",
        "rimraf": "^2.5.4",
        "run-queue": "^1.0.3"
      }
    },
    "ms": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/ms/-/ms-2.0.0.tgz",
      "integrity": "sha1-VgiurfwAvmwpAd9fmGF4jeDVl8g=",
      "dev": true
    },
    "multicast-dns": {
      "version": "6.2.3",
      "resolved": "https://registry.npmjs.org/multicast-dns/-/multicast-dns-6.2.3.tgz",
      "integrity": "sha512-ji6J5enbMyGRHIAkAOu3WdV8nggqviKCEKtXcOqfphZZtQrmHKycfynJ2V7eVPUA4NhJ6V7Wf4TmGbTwKE9B6g==",
      "dev": true,
      "requires": {
        "dns-packet": "^1.3.1",
        "thunky": "^1.0.2"
      }
    },
    "multicast-dns-service-types": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/multicast-dns-service-types/-/multicast-dns-service-types-1.1.0.tgz",
      "integrity": "sha1-iZ8R2WhuXgXLkbNdXw5jt3PPyQE=",
      "dev": true
    },
    "mute-stream": {
      "version": "0.0.7",
      "resolved": "https://registry.npmjs.org/mute-stream/-/mute-stream-0.0.7.tgz",
      "integrity": "sha1-MHXOk7whuPq0PhvE2n6BFe0ee6s=",
      "dev": true
    },
    "nan": {
      "version": "2.14.1",
      "resolved": "https://registry.npmjs.org/nan/-/nan-2.14.1.tgz",
      "integrity": "sha512-isWHgVjnFjh2x2yuJ/tj3JbwoHu3UC2dX5G/88Cm24yB6YopVgxvBObDY7n5xW6ExmFhJpSEQqFPvq9zaXc8Jw==",
      "dev": true,
      "optional": true
    },
    "nanomatch": {
      "version": "1.2.13",
      "resolved": "https://registry.npmjs.org/nanomatch/-/nanomatch-1.2.13.tgz",
      "integrity": "sha512-fpoe2T0RbHwBTBUOftAfBPaDEi06ufaUai0mE6Yn1kacc3SnTErfb/h+X94VXzI64rKFHYImXSvdwGGCmwOqCA==",
      "dev": true,
      "requires": {
        "arr-diff": "^4.0.0",
        "array-unique": "^0.3.2",
        "define-property": "^2.0.2",
        "extend-shallow": "^3.0.2",
        "fragment-cache": "^0.2.1",
        "is-windows": "^1.0.2",
        "kind-of": "^6.0.2",
        "object.pick": "^1.3.0",
        "regex-not": "^1.0.0",
        "snapdragon": "^0.8.1",
        "to-regex": "^3.0.1"
      }
    },
    "negotiator": {
      "version": "0.6.2",
      "resolved": "https://registry.npmjs.org/negotiator/-/negotiator-0.6.2.tgz",
      "integrity": "sha512-hZXc7K2e+PgeI1eDBe/10Ard4ekbfrrqG8Ep+8Jmf4JID2bNg7NvCPOZN+kfF574pFQI7mum2AUqDidoKqcTOw==",
      "dev": true
    },
    "neo-async": {
      "version": "2.6.1",
      "resolved": "https://registry.npmjs.org/neo-async/-/neo-async-2.6.1.tgz",
      "integrity": "sha512-iyam8fBuCUpWeKPGpaNMetEocMt364qkCsfL9JuhjXX6dRnguRVOfk2GZaDpPjcOKiiXCPINZC1GczQ7iTq3Zw==",
      "dev": true
    },
    "ng2-search-filter": {
      "version": "0.4.7",
      "resolved": "https://registry.npmjs.org/ng2-search-filter/-/ng2-search-filter-0.4.7.tgz",
      "integrity": "sha512-l49diVMfN3d6BTbFBtgpvywLTHYW63/XSPpmmrfSlGP+WbxoVbbqqbG6zK/ivLvwmWWdvDAqw+b+lyhqMAkSLw=="
    },
    "ng2-slim-loading-bar": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/ng2-slim-loading-bar/-/ng2-slim-loading-bar-4.0.0.tgz",
      "integrity": "sha1-clb93nwFjxSVWj7y5lr6+1tmRgM="
    },
    "nice-try": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/nice-try/-/nice-try-1.0.5.tgz",
      "integrity": "sha512-1nh45deeb5olNY7eX82BkPO7SSxR5SSYJiPTrTdFUVYwAl8CKMA5N9PjTYkHiRjisVcxcQ1HXdLhx2qxxJzLNQ==",
      "dev": true
    },
    "node-forge": {
      "version": "0.9.0",
      "resolved": "https://registry.npmjs.org/node-forge/-/node-forge-0.9.0.tgz",
      "integrity": "sha512-7ASaDa3pD+lJ3WvXFsxekJQelBKRpne+GOVbLbtHYdd7pFspyeuJHnWfLplGf3SwKGbfs/aYl5V/JCIaHVUKKQ==",
      "dev": true
    },
    "node-gyp": {
      "version": "3.8.0",
      "resolved": "https://registry.npmjs.org/node-gyp/-/node-gyp-3.8.0.tgz",
      "integrity": "sha512-3g8lYefrRRzvGeSowdJKAKyks8oUpLEd/DyPV4eMhVlhJ0aNaZqIrNUIPuEWWTAoPqyFkfGrM67MC69baqn6vA==",
      "dev": true,
      "optional": true,
      "requires": {
        "fstream": "^1.0.0",
        "glob": "^7.0.3",
        "graceful-fs": "^4.1.2",
        "mkdirp": "^0.5.0",
        "nopt": "2 || 3",
        "npmlog": "0 || 1 || 2 || 3 || 4",
        "osenv": "0",
        "request": "^2.87.0",
        "rimraf": "2",
        "semver": "~5.3.0",
        "tar": "^2.0.0",
        "which": "1"
      },
      "dependencies": {
        "semver": {
          "version": "5.3.0",
          "resolved": "https://registry.npmjs.org/semver/-/semver-5.3.0.tgz",
          "integrity": "sha1-myzl094C0XxgEq0yaqa00M9U+U8=",
          "dev": true,
          "optional": true
        }
      }
    },
    "node-libs-browser": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/node-libs-browser/-/node-libs-browser-2.2.1.tgz",
      "integrity": "sha512-h/zcD8H9kaDZ9ALUWwlBUDo6TKF8a7qBSCSEGfjTVIYeqsioSKaAX+BN7NgiMGp6iSIXZ3PxgCu8KS3b71YK5Q==",
      "dev": true,
      "requires": {
        "assert": "^1.1.1",
        "browserify-zlib": "^0.2.0",
        "buffer": "^4.3.0",
        "console-browserify": "^1.1.0",
        "constants-browserify": "^1.0.0",
        "crypto-browserify": "^3.11.0",
        "domain-browser": "^1.1.1",
        "events": "^3.0.0",
        "https-browserify": "^1.0.0",
        "os-browserify": "^0.3.0",
        "path-browserify": "0.0.1",
        "process": "^0.11.10",
        "punycode": "^1.2.4",
        "querystring-es3": "^0.2.0",
        "readable-stream": "^2.3.3",
        "stream-browserify": "^2.0.1",
        "stream-http": "^2.7.2",
        "string_decoder": "^1.0.0",
        "timers-browserify": "^2.0.4",
        "tty-browserify": "0.0.0",
        "url": "^0.11.0",
        "util": "^0.11.0",
        "vm-browserify": "^1.0.1"
      },
      "dependencies": {
        "punycode": {
          "version": "1.4.1",
          "resolved": "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz",
          "integrity": "sha1-wNWmOycYgArY4esPpSachN1BhF4=",
          "dev": true
        }
      }
    },
    "node-releases": {
      "version": "1.1.55",
      "resolved": "https://registry.npmjs.org/node-releases/-/node-releases-1.1.55.tgz",
      "integrity": "sha512-H3R3YR/8TjT5WPin/wOoHOUPHgvj8leuU/Keta/rwelEQN9pA/S2Dx8/se4pZ2LBxSd0nAGzsNzhqwa77v7F1w==",
      "dev": true
    },
    "node-sass": {
      "version": "4.9.3",
      "resolved": "https://registry.npmjs.org/node-sass/-/node-sass-4.9.3.tgz",
      "integrity": "sha512-XzXyGjO+84wxyH7fV6IwBOTrEBe2f0a6SBze9QWWYR/cL74AcQUks2AsqcCZenl/Fp/JVbuEaLpgrLtocwBUww==",
      "dev": true,
      "optional": true,
      "requires": {
        "async-foreach": "^0.1.3",
        "chalk": "^1.1.1",
        "cross-spawn": "^3.0.0",
        "gaze": "^1.0.0",
        "get-stdin": "^4.0.1",
        "glob": "^7.0.3",
        "in-publish": "^2.0.0",
        "lodash.assign": "^4.2.0",
        "lodash.clonedeep": "^4.3.2",
        "lodash.mergewith": "^4.6.0",
        "meow": "^3.7.0",
        "mkdirp": "^0.5.1",
        "nan": "^2.10.0",
        "node-gyp": "^3.8.0",
        "npmlog": "^4.0.0",
        "request": "2.87.0",
        "sass-graph": "^2.2.4",
        "stdout-stream": "^1.4.0",
        "true-case-path": "^1.0.2"
      },
      "dependencies": {
        "ajv": {
          "version": "5.5.2",
          "resolved": "https://registry.npmjs.org/ajv/-/ajv-5.5.2.tgz",
          "integrity": "sha1-c7Xuyj+rZT49P5Qis0GtQiBdyWU=",
          "dev": true,
          "optional": true,
          "requires": {
            "co": "^4.6.0",
            "fast-deep-equal": "^1.0.0",
            "fast-json-stable-stringify": "^2.0.0",
            "json-schema-traverse": "^0.3.0"
          }
        },
        "ansi-styles": {
          "version": "2.2.1",
          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz",
          "integrity": "sha1-tDLdM1i2NM914eRmQ2gkBTPB3b4=",
          "dev": true,
          "optional": true
        },
        "chalk": {
          "version": "1.1.3",
          "resolved": "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz",
          "integrity": "sha1-qBFcVeSnAv5NFQq9OHKCKn4J/Jg=",
          "dev": true,
          "optional": true,
          "requires": {
            "ansi-styles": "^2.2.1",
            "escape-string-regexp": "^1.0.2",
            "has-ansi": "^2.0.0",
            "strip-ansi": "^3.0.0",
            "supports-color": "^2.0.0"
          }
        },
        "fast-deep-equal": {
          "version": "1.1.0",
          "resolved": "https://registry.npmjs.org/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz",
          "integrity": "sha1-wFNHeBfIa1HaqFPIHgWbcz0CNhQ=",
          "dev": true,
          "optional": true
        },
        "har-validator": {
          "version": "5.0.3",
          "resolved": "https://registry.npmjs.org/har-validator/-/har-validator-5.0.3.tgz",
          "integrity": "sha1-ukAsJmGU8VlW7xXg/PJCmT9qff0=",
          "dev": true,
          "optional": true,
          "requires": {
            "ajv": "^5.1.0",
            "har-schema": "^2.0.0"
          }
        },
        "json-schema-traverse": {
          "version": "0.3.1",
          "resolved": "https://registry.npmjs.org/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz",
          "integrity": "sha1-NJptRMU6Ud6JtAgFxdXlm0F9M0A=",
          "dev": true,
          "optional": true
        },
        "oauth-sign": {
          "version": "0.8.2",
          "resolved": "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.8.2.tgz",
          "integrity": "sha1-Rqarfwrq2N6unsBWV4C31O/rnUM=",
          "dev": true,
          "optional": true
        },
        "punycode": {
          "version": "1.4.1",
          "resolved": "https://registry.npmjs.org/punycode/-/punycode-1.4.1.tgz",
          "integrity": "sha1-wNWmOycYgArY4esPpSachN1BhF4=",
          "dev": true,
          "optional": true
        },
        "request": {
          "version": "2.87.0",
          "resolved": "https://registry.npmjs.org/request/-/request-2.87.0.tgz",
          "integrity": "sha512-fcogkm7Az5bsS6Sl0sibkbhcKsnyon/jV1kF3ajGmF0c8HrttdKTPRT9hieOaQHA5HEq6r8OyWOo/o781C1tNw==",
          "dev": true,
          "optional": true,
          "requires": {
            "aws-sign2": "~0.7.0",
            "aws4": "^1.6.0",
            "caseless": "~0.12.0",
            "combined-stream": "~1.0.5",
            "extend": "~3.0.1",
            "forever-agent": "~0.6.1",
            "form-data": "~2.3.1",
            "har-validator": "~5.0.3",
            "http-signature": "~1.2.0",
            "is-typedarray": "~1.0.0",
            "isstream": "~0.1.2",
            "json-stringify-safe": "~5.0.1",
            "mime-types": "~2.1.17",
            "oauth-sign": "~0.8.2",
            "performance-now": "^2.1.0",
            "qs": "~6.5.1",
            "safe-buffer": "^5.1.1",
            "tough-cookie": "~2.3.3",
            "tunnel-agent": "^0.6.0",
            "uuid": "^3.1.0"
          }
        },
        "supports-color": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz",
          "integrity": "sha1-U10EXOa2Nj+kARcIRimZXp3zJMc=",
          "dev": true,
          "optional": true
        },
        "tough-cookie": {
          "version": "2.3.4",
          "resolved": "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.3.4.tgz",
          "integrity": "sha512-TZ6TTfI5NtZnuyy/Kecv+CnoROnyXn2DN97LontgQpCwsX2XyLYCC0ENhYkehSOwAp8rTQKc/NUIF7BkQ5rKLA==",
          "dev": true,
          "optional": true,
          "requires": {
            "punycode": "^1.4.1"
          }
        }
      }
    },
    "nopt": {
      "version": "3.0.6",
      "resolved": "https://registry.npmjs.org/nopt/-/nopt-3.0.6.tgz",
      "integrity": "sha1-xkZdvwirzU2zWTF/eaxopkayj/k=",
      "dev": true,
      "requires": {
        "abbrev": "1"
      }
    },
    "normalize-package-data": {
      "version": "2.5.0",
      "resolved": "https://registry.npmjs.org/normalize-package-data/-/normalize-package-data-2.5.0.tgz",
      "integrity": "sha512-/5CMN3T0R4XTj4DcGaexo+roZSdSFW/0AOOTROrjxzCG1wrWXEsGbRKevjlIL+ZDE4sZlJr5ED4YW0yqmkK+eA==",
      "dev": true,
      "requires": {
        "hosted-git-info": "^2.1.4",
        "resolve": "^1.10.0",
        "semver": "2 || 3 || 4 || 5",
        "validate-npm-package-license": "^3.0.1"
      },
      "dependencies": {
        "resolve": {
          "version": "1.17.0",
          "resolved": "https://registry.npmjs.org/resolve/-/resolve-1.17.0.tgz",
          "integrity": "sha512-ic+7JYiV8Vi2yzQGFWOkiZD5Z9z7O2Zhm9XMaTxdJExKasieFCr+yXZ/WmXsckHiKl12ar0y6XiXDx3m4RHn1w==",
          "dev": true,
          "requires": {
            "path-parse": "^1.0.6"
          }
        }
      }
    },
    "normalize-path": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/normalize-path/-/normalize-path-2.1.1.tgz",
      "integrity": "sha1-GrKLVW4Zg2Oowab35vogE3/mrtk=",
      "dev": true,
      "requires": {
        "remove-trailing-separator": "^1.0.1"
      }
    },
    "normalize-range": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/normalize-range/-/normalize-range-0.1.2.tgz",
      "integrity": "sha1-LRDAa9/TEuqXd2laTShDlFa3WUI=",
      "dev": true
    },
    "npm-package-arg": {
      "version": "6.1.1",
      "resolved": "https://registry.npmjs.org/npm-package-arg/-/npm-package-arg-6.1.1.tgz",
      "integrity": "sha512-qBpssaL3IOZWi5vEKUKW0cO7kzLeT+EQO9W8RsLOZf76KF9E/K9+wH0C7t06HXPpaH8WH5xF1MExLuCwbTqRUg==",
      "dev": true,
      "requires": {
        "hosted-git-info": "^2.7.1",
        "osenv": "^0.1.5",
        "semver": "^5.6.0",
        "validate-npm-package-name": "^3.0.0"
      }
    },
    "npm-registry-client": {
      "version": "8.6.0",
      "resolved": "https://registry.npmjs.org/npm-registry-client/-/npm-registry-client-8.6.0.tgz",
      "integrity": "sha512-Qs6P6nnopig+Y8gbzpeN/dkt+n7IyVd8f45NTMotGk6Qo7GfBmzwYx6jRLoOOgKiMnaQfYxsuyQlD8Mc3guBhg==",
      "dev": true,
      "requires": {
        "concat-stream": "^1.5.2",
        "graceful-fs": "^4.1.6",
        "normalize-package-data": "~1.0.1 || ^2.0.0",
        "npm-package-arg": "^3.0.0 || ^4.0.0 || ^5.0.0 || ^6.0.0",
        "npmlog": "2 || ^3.1.0 || ^4.0.0",
        "once": "^1.3.3",
        "request": "^2.74.0",
        "retry": "^0.10.0",
        "safe-buffer": "^5.1.1",
        "semver": "2 >=2.2.1 || 3.x || 4 || 5",
        "slide": "^1.1.3",
        "ssri": "^5.2.4"
      }
    },
    "npm-run-path": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/npm-run-path/-/npm-run-path-2.0.2.tgz",
      "integrity": "sha1-NakjLfo11wZ7TLLd8jV7GHFTbF8=",
      "dev": true,
      "requires": {
        "path-key": "^2.0.0"
      }
    },
    "npmlog": {
      "version": "4.1.2",
      "resolved": "https://registry.npmjs.org/npmlog/-/npmlog-4.1.2.tgz",
      "integrity": "sha512-2uUqazuKlTaSI/dC8AzicUck7+IrEaOnN/e0jd3Xtt1KcGpwx30v50mL7oPyr/h9bL3E4aZccVwpwP+5W9Vjkg==",
      "dev": true,
      "optional": true,
      "requires": {
        "are-we-there-yet": "~1.1.2",
        "console-control-strings": "~1.1.0",
        "gauge": "~2.7.3",
        "set-blocking": "~2.0.0"
      }
    },
    "null-check": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/null-check/-/null-check-1.0.0.tgz",
      "integrity": "sha1-l33/1xdgErnsMNKjnbXPcqBDnt0=",
      "dev": true
    },
    "num2fraction": {
      "version": "1.2.2",
      "resolved": "https://registry.npmjs.org/num2fraction/-/num2fraction-1.2.2.tgz",
      "integrity": "sha1-b2gragJ6Tp3fpFZM0lidHU5mnt4=",
      "dev": true
    },
    "number-is-nan": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/number-is-nan/-/number-is-nan-1.0.1.tgz",
      "integrity": "sha1-CXtgK1NCKlIsGvuHkDGDNpQaAR0=",
      "dev": true
    },
    "oauth-sign": {
      "version": "0.9.0",
      "resolved": "https://registry.npmjs.org/oauth-sign/-/oauth-sign-0.9.0.tgz",
      "integrity": "sha512-fexhUFFPTGV8ybAtSIGbV6gOkSv8UtRbDBnAyLQw4QPKkgNlsH2ByPGtMUqdWkos6YCRmAqViwgZrJc/mRDzZQ==",
      "dev": true
    },
    "object-assign": {
      "version": "4.1.1",
      "resolved": "https://registry.npmjs.org/object-assign/-/object-assign-4.1.1.tgz",
      "integrity": "sha1-IQmtx5ZYh8/AXLvUQsrIv7s2CGM=",
      "dev": true
    },
    "object-component": {
      "version": "0.0.3",
      "resolved": "https://registry.npmjs.org/object-component/-/object-component-0.0.3.tgz",
      "integrity": "sha1-8MaapQ78lbhmwYb0AKM3acsvEpE=",
      "dev": true
    },
    "object-copy": {
      "version": "0.1.0",
      "resolved": "https://registry.npmjs.org/object-copy/-/object-copy-0.1.0.tgz",
      "integrity": "sha1-fn2Fi3gb18mRpBupde04EnVOmYw=",
      "dev": true,
      "requires": {
        "copy-descriptor": "^0.1.0",
        "define-property": "^0.2.5",
        "kind-of": "^3.0.3"
      },
      "dependencies": {
        "define-property": {
          "version": "0.2.5",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz",
          "integrity": "sha1-w1se+RjsPJkPmlvFe+BKrOxcgRY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^0.1.0"
          }
        },
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "object-inspect": {
      "version": "1.7.0",
      "resolved": "https://registry.npmjs.org/object-inspect/-/object-inspect-1.7.0.tgz",
      "integrity": "sha512-a7pEHdh1xKIAgTySUGgLMx/xwDZskN1Ud6egYYN3EdRW4ZMPNEDUTF+hwy2LUC+Bl+SyLXANnwz/jyh/qutKUw==",
      "dev": true
    },
    "object-is": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/object-is/-/object-is-1.1.2.tgz",
      "integrity": "sha512-5lHCz+0uufF6wZ7CRFWJN3hp8Jqblpgve06U5CMQ3f//6iDjPr2PEo9MWCjEssDsa+UZEL4PkFpr+BMop6aKzQ==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.5"
      }
    },
    "object-keys": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/object-keys/-/object-keys-1.1.1.tgz",
      "integrity": "sha512-NuAESUOUMrlIXOfHKzD6bpPu3tYt3xvjNdRIQ+FeT0lNb4K8WR70CaDxhuNguS2XG+GjkyMwOzsN5ZktImfhLA==",
      "dev": true
    },
    "object-visit": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/object-visit/-/object-visit-1.0.1.tgz",
      "integrity": "sha1-95xEk68MU3e1n+OdOV5BBC3QRbs=",
      "dev": true,
      "requires": {
        "isobject": "^3.0.0"
      }
    },
    "object.assign": {
      "version": "4.1.0",
      "resolved": "https://registry.npmjs.org/object.assign/-/object.assign-4.1.0.tgz",
      "integrity": "sha512-exHJeq6kBKj58mqGyTQ9DFvrZC/eR6OwxzoM9YRoGBqrXYonaFyGiFMuc9VZrXf7DarreEwMpurG3dd+CNyW5w==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.2",
        "function-bind": "^1.1.1",
        "has-symbols": "^1.0.0",
        "object-keys": "^1.0.11"
      }
    },
    "object.omit": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/object.omit/-/object.omit-2.0.1.tgz",
      "integrity": "sha1-Gpx0SCnznbuFjHbKNXmuKlTr0fo=",
      "dev": true,
      "requires": {
        "for-own": "^0.1.4",
        "is-extendable": "^0.1.1"
      },
      "dependencies": {
        "for-own": {
          "version": "0.1.5",
          "resolved": "https://registry.npmjs.org/for-own/-/for-own-0.1.5.tgz",
          "integrity": "sha1-UmXGgaTylNq78XyVCbZ2OqhFEM4=",
          "dev": true,
          "requires": {
            "for-in": "^1.0.1"
          }
        }
      }
    },
    "object.pick": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/object.pick/-/object.pick-1.3.0.tgz",
      "integrity": "sha1-h6EKxMFpS9Lhy/U1kaZhQftd10c=",
      "dev": true,
      "requires": {
        "isobject": "^3.0.1"
      }
    },
    "obuf": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/obuf/-/obuf-1.1.2.tgz",
      "integrity": "sha512-PX1wu0AmAdPqOL1mWhqmlOd8kOIZQwGZw6rh7uby9fTc5lhaOWFLX3I6R1hrF9k3zUY40e6igsLGkDXK92LJNg==",
      "dev": true
    },
    "on-finished": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/on-finished/-/on-finished-2.3.0.tgz",
      "integrity": "sha1-IPEzZIGwg811M3mSoWlxqi2QaUc=",
      "dev": true,
      "requires": {
        "ee-first": "1.1.1"
      }
    },
    "on-headers": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/on-headers/-/on-headers-1.0.2.tgz",
      "integrity": "sha512-pZAE+FJLoyITytdqK0U5s+FIpjN0JP3OzFi/u8Rx+EV5/W+JTWGXG8xFzevE7AjBfDqHv/8vL8qQsIhHnqRkrA==",
      "dev": true
    },
    "once": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/once/-/once-1.4.0.tgz",
      "integrity": "sha1-WDsap3WWHUsROsF9nFC6753Xa9E=",
      "dev": true,
      "requires": {
        "wrappy": "1"
      }
    },
    "onetime": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/onetime/-/onetime-2.0.1.tgz",
      "integrity": "sha1-BnQoIw/WdEOyeUsiu6UotoZ5YtQ=",
      "dev": true,
      "requires": {
        "mimic-fn": "^1.0.0"
      },
      "dependencies": {
        "mimic-fn": {
          "version": "1.2.0",
          "resolved": "https://registry.npmjs.org/mimic-fn/-/mimic-fn-1.2.0.tgz",
          "integrity": "sha512-jf84uxzwiuiIVKiOLpfYk7N46TSy8ubTonmneY9vrpHNAnp0QBt2BxWV9dO3/j+BoVAb+a5G6YDPW3M5HOdMWQ==",
          "dev": true
        }
      }
    },
    "opn": {
      "version": "5.3.0",
      "resolved": "https://registry.npmjs.org/opn/-/opn-5.3.0.tgz",
      "integrity": "sha512-bYJHo/LOmoTd+pfiYhfZDnf9zekVJrY+cnS2a5F2x+w5ppvTqObojTP7WiFG+kVZs9Inw+qQ/lw7TroWwhdd2g==",
      "dev": true,
      "requires": {
        "is-wsl": "^1.1.0"
      }
    },
    "optimist": {
      "version": "0.6.1",
      "resolved": "https://registry.npmjs.org/optimist/-/optimist-0.6.1.tgz",
      "integrity": "sha1-2j6nRob6IaGaERwybpDrFaAZZoY=",
      "dev": true,
      "requires": {
        "minimist": "~0.0.1",
        "wordwrap": "~0.0.2"
      },
      "dependencies": {
        "minimist": {
          "version": "0.0.10",
          "resolved": "https://registry.npmjs.org/minimist/-/minimist-0.0.10.tgz",
          "integrity": "sha1-3j+YVD2/lggr5IrRoMfNqDYwHc8=",
          "dev": true
        },
        "wordwrap": {
          "version": "0.0.3",
          "resolved": "https://registry.npmjs.org/wordwrap/-/wordwrap-0.0.3.tgz",
          "integrity": "sha1-o9XabNXAvAAI03I0u68b7WMFkQc=",
          "dev": true
        }
      }
    },
    "optionator": {
      "version": "0.8.3",
      "resolved": "https://registry.npmjs.org/optionator/-/optionator-0.8.3.tgz",
      "integrity": "sha512-+IW9pACdk3XWmmTXG8m3upGUJst5XRGzxMRjXzAuJ1XnIFNvfhjjIuYkDvysnPQ7qzqVzLt78BCruntqRhWQbA==",
      "dev": true,
      "requires": {
        "deep-is": "~0.1.3",
        "fast-levenshtein": "~2.0.6",
        "levn": "~0.3.0",
        "prelude-ls": "~1.1.2",
        "type-check": "~0.3.2",
        "word-wrap": "~1.2.3"
      }
    },
    "original": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/original/-/original-1.0.2.tgz",
      "integrity": "sha512-hyBVl6iqqUOJ8FqRe+l/gS8H+kKYjrEndd5Pm1MfBtsEKA038HkkdbAl/72EAXGyonD/PFsvmVG+EvcIpliMBg==",
      "dev": true,
      "requires": {
        "url-parse": "^1.4.3"
      }
    },
    "os-browserify": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/os-browserify/-/os-browserify-0.3.0.tgz",
      "integrity": "sha1-hUNzx/XCMVkU/Jv8a9gjj92h7Cc=",
      "dev": true
    },
    "os-homedir": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/os-homedir/-/os-homedir-1.0.2.tgz",
      "integrity": "sha1-/7xJiDNuDoM94MFox+8VISGqf7M=",
      "dev": true
    },
    "os-locale": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/os-locale/-/os-locale-3.1.0.tgz",
      "integrity": "sha512-Z8l3R4wYWM40/52Z+S265okfFj8Kt2cC2MKY+xNi3kFs+XGI7WXu/I309QQQYbRW4ijiZ+yxs9pqEhJh0DqW3Q==",
      "dev": true,
      "requires": {
        "execa": "^1.0.0",
        "lcid": "^2.0.0",
        "mem": "^4.0.0"
      }
    },
    "os-tmpdir": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/os-tmpdir/-/os-tmpdir-1.0.2.tgz",
      "integrity": "sha1-u+Z0BseaqFxc/sdm/lc0VV36EnQ=",
      "dev": true
    },
    "osenv": {
      "version": "0.1.5",
      "resolved": "https://registry.npmjs.org/osenv/-/osenv-0.1.5.tgz",
      "integrity": "sha512-0CWcCECdMVc2Rw3U5w9ZjqX6ga6ubk1xDVKxtBQPK7wis/0F2r9T6k4ydGYhecl7YUBxBVxhL5oisPsNxAPe2g==",
      "dev": true,
      "requires": {
        "os-homedir": "^1.0.0",
        "os-tmpdir": "^1.0.0"
      }
    },
    "p-defer": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/p-defer/-/p-defer-1.0.0.tgz",
      "integrity": "sha1-n26xgvbJqozXQwBKfU+WsZaw+ww=",
      "dev": true
    },
    "p-finally": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/p-finally/-/p-finally-1.0.0.tgz",
      "integrity": "sha1-P7z7FbiZpEEjs0ttzBi3JDNqLK4=",
      "dev": true
    },
    "p-is-promise": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/p-is-promise/-/p-is-promise-2.1.0.tgz",
      "integrity": "sha512-Y3W0wlRPK8ZMRbNq97l4M5otioeA5lm1z7bkNkxCka8HSPjR0xRWmpCmc9utiaLP9Jb1eD8BgeIxTW4AIF45Pg==",
      "dev": true
    },
    "p-limit": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-1.3.0.tgz",
      "integrity": "sha512-vvcXsLAJ9Dr5rQOPk7toZQZJApBl2K4J6dANSsEuh6QI41JYcsS/qhTGa9ErIUUgK3WNQoJYvylxvjqmiqEA9Q==",
      "dev": true,
      "requires": {
        "p-try": "^1.0.0"
      }
    },
    "p-locate": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-2.0.0.tgz",
      "integrity": "sha1-IKAQOyIqcMj9OcwuWAaA893l7EM=",
      "dev": true,
      "requires": {
        "p-limit": "^1.1.0"
      }
    },
    "p-map": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/p-map/-/p-map-1.2.0.tgz",
      "integrity": "sha512-r6zKACMNhjPJMTl8KcFH4li//gkrXWfbD6feV8l6doRHlzljFWGJ2AP6iKaCJXyZmAUMOPtvbW7EXkbWO/pLEA==",
      "dev": true
    },
    "p-try": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/p-try/-/p-try-1.0.0.tgz",
      "integrity": "sha1-y8ec26+P1CKOE/Yh8rGiN8GyB7M=",
      "dev": true
    },
    "pako": {
      "version": "1.0.11",
      "resolved": "https://registry.npmjs.org/pako/-/pako-1.0.11.tgz",
      "integrity": "sha512-4hLB8Py4zZce5s4yd9XzopqwVv/yGNhV1Bl8NTmCq1763HeK2+EwVTv+leGeL13Dnh2wfbqowVPXCIO0z4taYw==",
      "dev": true
    },
    "parallel-transform": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/parallel-transform/-/parallel-transform-1.2.0.tgz",
      "integrity": "sha512-P2vSmIu38uIlvdcU7fDkyrxj33gTUy/ABO5ZUbGowxNCopBq/OoD42bP4UmMrJoPyk4Uqf0mu3mtWBhHCZD8yg==",
      "dev": true,
      "requires": {
        "cyclist": "^1.0.1",
        "inherits": "^2.0.3",
        "readable-stream": "^2.1.5"
      }
    },
    "parse-asn1": {
      "version": "5.1.5",
      "resolved": "https://registry.npmjs.org/parse-asn1/-/parse-asn1-5.1.5.tgz",
      "integrity": "sha512-jkMYn1dcJqF6d5CpU689bq7w/b5ALS9ROVSpQDPrZsqqesUJii9qutvoT5ltGedNXMO2e16YUWIghG9KxaViTQ==",
      "dev": true,
      "requires": {
        "asn1.js": "^4.0.0",
        "browserify-aes": "^1.0.0",
        "create-hash": "^1.1.0",
        "evp_bytestokey": "^1.0.0",
        "pbkdf2": "^3.0.3",
        "safe-buffer": "^5.1.1"
      }
    },
    "parse-glob": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/parse-glob/-/parse-glob-3.0.4.tgz",
      "integrity": "sha1-ssN2z7EfNVE7rdFz7wu246OIORw=",
      "dev": true,
      "requires": {
        "glob-base": "^0.3.0",
        "is-dotfile": "^1.0.0",
        "is-extglob": "^1.0.0",
        "is-glob": "^2.0.0"
      },
      "dependencies": {
        "is-extglob": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-extglob/-/is-extglob-1.0.0.tgz",
          "integrity": "sha1-rEaBd8SUNAWgkvyPKXYMb/xiBsA=",
          "dev": true
        },
        "is-glob": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/is-glob/-/is-glob-2.0.1.tgz",
          "integrity": "sha1-0Jb5JqPe1WAPP9/ZEZjLCIjC2GM=",
          "dev": true,
          "requires": {
            "is-extglob": "^1.0.0"
          }
        }
      }
    },
    "parse-json": {
      "version": "2.2.0",
      "resolved": "https://registry.npmjs.org/parse-json/-/parse-json-2.2.0.tgz",
      "integrity": "sha1-9ID0BDTvgHQfhGkJn43qGPVaTck=",
      "dev": true,
      "requires": {
        "error-ex": "^1.2.0"
      }
    },
    "parse5": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/parse5/-/parse5-4.0.0.tgz",
      "integrity": "sha512-VrZ7eOd3T1Fk4XWNXMgiGBK/z0MG48BWG2uQNU4I72fkQuKUTZpl+u9k+CxEG0twMVzSmXEEz12z5Fnw1jIQFA==",
      "dev": true
    },
    "parseqs": {
      "version": "0.0.5",
      "resolved": "https://registry.npmjs.org/parseqs/-/parseqs-0.0.5.tgz",
      "integrity": "sha1-1SCKNzjkZ2bikbouoXNoSSGouJ0=",
      "dev": true,
      "requires": {
        "better-assert": "~1.0.0"
      }
    },
    "parseuri": {
      "version": "0.0.5",
      "resolved": "https://registry.npmjs.org/parseuri/-/parseuri-0.0.5.tgz",
      "integrity": "sha1-gCBKUNTbt3m/3G6+J3jZDkvOMgo=",
      "dev": true,
      "requires": {
        "better-assert": "~1.0.0"
      }
    },
    "parseurl": {
      "version": "1.3.3",
      "resolved": "https://registry.npmjs.org/parseurl/-/parseurl-1.3.3.tgz",
      "integrity": "sha512-CiyeOxFT/JZyN5m0z9PfXw4SCBJ6Sygz1Dpl0wqjlhDEGGBP1GnsUVEL0p63hoG1fcj3fHynXi9NYO4nWOL+qQ==",
      "dev": true
    },
    "pascalcase": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/pascalcase/-/pascalcase-0.1.1.tgz",
      "integrity": "sha1-s2PlXoAGym/iF4TS2yK9FdeRfxQ=",
      "dev": true
    },
    "path-browserify": {
      "version": "0.0.1",
      "resolved": "https://registry.npmjs.org/path-browserify/-/path-browserify-0.0.1.tgz",
      "integrity": "sha512-BapA40NHICOS+USX9SN4tyhq+A2RrN/Ws5F0Z5aMHDp98Fl86lX8Oti8B7uN93L4Ifv4fHOEA+pQw87gmMO/lQ==",
      "dev": true
    },
    "path-dirname": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/path-dirname/-/path-dirname-1.0.2.tgz",
      "integrity": "sha1-zDPSTVJeCZpTiMAzbG4yuRYGCeA=",
      "dev": true
    },
    "path-exists": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-3.0.0.tgz",
      "integrity": "sha1-zg6+ql94yxiSXqfYENe1mwEP1RU=",
      "dev": true
    },
    "path-is-absolute": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/path-is-absolute/-/path-is-absolute-1.0.1.tgz",
      "integrity": "sha1-F0uSaHNVNP+8es5r9TpanhtcX18=",
      "dev": true
    },
    "path-is-inside": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/path-is-inside/-/path-is-inside-1.0.2.tgz",
      "integrity": "sha1-NlQX3t5EQw0cEa9hAn+s8HS9/FM=",
      "dev": true
    },
    "path-key": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/path-key/-/path-key-2.0.1.tgz",
      "integrity": "sha1-QRyttXTFoUDTpLGRDUDYDMn0C0A=",
      "dev": true
    },
    "path-parse": {
      "version": "1.0.6",
      "resolved": "https://registry.npmjs.org/path-parse/-/path-parse-1.0.6.tgz",
      "integrity": "sha512-GSmOT2EbHrINBf9SR7CDELwlJ8AENk3Qn7OikK4nFYAu3Ote2+JYNVvkpAEQm3/TLNEJFD/xZJjzyxg3KBWOzw==",
      "dev": true
    },
    "path-to-regexp": {
      "version": "0.1.7",
      "resolved": "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.7.tgz",
      "integrity": "sha1-32BBeABfUi8V60SQ5yR6G/qmf4w=",
      "dev": true
    },
    "path-type": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/path-type/-/path-type-3.0.0.tgz",
      "integrity": "sha512-T2ZUsdZFHgA3u4e5PfPbjd7HDDpxPnQb5jN0SrDsjNSuVXHJqtwTnWqG0B1jZrgmJ/7lj1EmVIByWt1gxGkWvg==",
      "dev": true,
      "requires": {
        "pify": "^3.0.0"
      }
    },
    "pbkdf2": {
      "version": "3.0.17",
      "resolved": "https://registry.npmjs.org/pbkdf2/-/pbkdf2-3.0.17.tgz",
      "integrity": "sha512-U/il5MsrZp7mGg3mSQfn742na2T+1/vHDCG5/iTI3X9MKUuYUZVLQhyRsg06mCgDBTd57TxzgZt7P+fYfjRLtA==",
      "dev": true,
      "requires": {
        "create-hash": "^1.1.2",
        "create-hmac": "^1.1.4",
        "ripemd160": "^2.0.1",
        "safe-buffer": "^5.0.1",
        "sha.js": "^2.4.8"
      }
    },
    "performance-now": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/performance-now/-/performance-now-2.1.0.tgz",
      "integrity": "sha1-Ywn04OX6kT7BxpMHrjZLSzd8nns=",
      "dev": true
    },
    "pify": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/pify/-/pify-3.0.0.tgz",
      "integrity": "sha1-5aSs0sEB/fPZpNB/DbxNtJ3SgXY=",
      "dev": true
    },
    "pinkie": {
      "version": "2.0.4",
      "resolved": "https://registry.npmjs.org/pinkie/-/pinkie-2.0.4.tgz",
      "integrity": "sha1-clVrgM+g1IqXToDnckjoDtT3+HA=",
      "dev": true
    },
    "pinkie-promise": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/pinkie-promise/-/pinkie-promise-2.0.1.tgz",
      "integrity": "sha1-ITXW36ejWMBprJsXh3YogihFD/o=",
      "dev": true,
      "requires": {
        "pinkie": "^2.0.0"
      }
    },
    "pkg-dir": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-2.0.0.tgz",
      "integrity": "sha1-9tXREJ4Z1j7fQo4L1X4Sd3YVM0s=",
      "dev": true,
      "requires": {
        "find-up": "^2.1.0"
      }
    },
    "pkg-up": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/pkg-up/-/pkg-up-2.0.0.tgz",
      "integrity": "sha1-yBmscoBZpGHKscOImivjxJoATX8=",
      "dev": true,
      "requires": {
        "find-up": "^2.1.0"
      }
    },
    "portfinder": {
      "version": "1.0.17",
      "resolved": "https://registry.npmjs.org/portfinder/-/portfinder-1.0.17.tgz",
      "integrity": "sha512-syFcRIRzVI1BoEFOCaAiizwDolh1S1YXSodsVhncbhjzjZQulhczNRbqnUl9N31Q4dKGOXsNDqxC2BWBgSMqeQ==",
      "dev": true,
      "requires": {
        "async": "^1.5.2",
        "debug": "^2.2.0",
        "mkdirp": "0.5.x"
      }
    },
    "posix-character-classes": {
      "version": "0.1.1",
      "resolved": "https://registry.npmjs.org/posix-character-classes/-/posix-character-classes-0.1.1.tgz",
      "integrity": "sha1-AerA/jta9xoqbAL+q7jB/vfgDqs=",
      "dev": true
    },
    "postcss": {
      "version": "7.0.5",
      "resolved": "https://registry.npmjs.org/postcss/-/postcss-7.0.5.tgz",
      "integrity": "sha512-HBNpviAUFCKvEh7NZhw1e8MBPivRszIiUnhrJ+sBFVSYSqubrzwX3KG51mYgcRHX8j/cAgZJedONZcm5jTBdgQ==",
      "dev": true,
      "requires": {
        "chalk": "^2.4.1",
        "source-map": "^0.6.1",
        "supports-color": "^5.5.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "postcss-import": {
      "version": "12.0.0",
      "resolved": "https://registry.npmjs.org/postcss-import/-/postcss-import-12.0.0.tgz",
      "integrity": "sha512-3KqKRZcaZAvxbY8DVLdd81tG5uKzbUQuiWIvy0o0fzEC42bKacqPYFWbfCQyw6L4LWUaqPz/idvIdbhpgQ32eQ==",
      "dev": true,
      "requires": {
        "postcss": "^7.0.1",
        "postcss-value-parser": "^3.2.3",
        "read-cache": "^1.0.0",
        "resolve": "^1.1.7"
      }
    },
    "postcss-load-config": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/postcss-load-config/-/postcss-load-config-2.1.0.tgz",
      "integrity": "sha512-4pV3JJVPLd5+RueiVVB+gFOAa7GWc25XQcMp86Zexzke69mKf6Nx9LRcQywdz7yZI9n1udOxmLuAwTBypypF8Q==",
      "dev": true,
      "requires": {
        "cosmiconfig": "^5.0.0",
        "import-cwd": "^2.0.0"
      }
    },
    "postcss-loader": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/postcss-loader/-/postcss-loader-3.0.0.tgz",
      "integrity": "sha512-cLWoDEY5OwHcAjDnkyRQzAXfs2jrKjXpO/HQFcc5b5u/r7aa471wdmChmwfnv7x2u840iat/wi0lQ5nbRgSkUA==",
      "dev": true,
      "requires": {
        "loader-utils": "^1.1.0",
        "postcss": "^7.0.0",
        "postcss-load-config": "^2.0.0",
        "schema-utils": "^1.0.0"
      }
    },
    "postcss-value-parser": {
      "version": "3.3.1",
      "resolved": "https://registry.npmjs.org/postcss-value-parser/-/postcss-value-parser-3.3.1.tgz",
      "integrity": "sha512-pISE66AbVkp4fDQ7VHBwRNXzAAKJjw4Vw7nWI/+Q3vuly7SNfgYXvm6i5IgFylHGK5sP/xHAbB7N49OS4gWNyQ==",
      "dev": true
    },
    "prelude-ls": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/prelude-ls/-/prelude-ls-1.1.2.tgz",
      "integrity": "sha1-IZMqVJ9eUv/ZqCf1cOBL5iqX2lQ=",
      "dev": true
    },
    "preserve": {
      "version": "0.2.0",
      "resolved": "https://registry.npmjs.org/preserve/-/preserve-0.2.0.tgz",
      "integrity": "sha1-gV7R9uvGWSb4ZbMQwHE7yzMVzks=",
      "dev": true
    },
    "process": {
      "version": "0.11.10",
      "resolved": "https://registry.npmjs.org/process/-/process-0.11.10.tgz",
      "integrity": "sha1-czIwDoQBYb2j5podHZGn1LwW8YI=",
      "dev": true
    },
    "process-nextick-args": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/process-nextick-args/-/process-nextick-args-2.0.1.tgz",
      "integrity": "sha512-3ouUOpQhtgrbOa17J7+uxOTpITYWaGP7/AhoR3+A+/1e9skrzelGi/dXzEYyvbxubEF6Wn2ypscTKiKJFFn1ag==",
      "dev": true
    },
    "promise": {
      "version": "7.3.1",
      "resolved": "https://registry.npmjs.org/promise/-/promise-7.3.1.tgz",
      "integrity": "sha512-nolQXZ/4L+bP/UGlkfaIujX9BKxGwmQ9OT4mOt5yvy8iK1h3wqTEJCijzGANTCCl9nWjY41juyAn2K3Q1hLLTg==",
      "dev": true,
      "optional": true,
      "requires": {
        "asap": "~2.0.3"
      }
    },
    "promise-inflight": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/promise-inflight/-/promise-inflight-1.0.1.tgz",
      "integrity": "sha1-mEcocL8igTL8vdhoEputEsPAKeM=",
      "dev": true
    },
    "protractor": {
      "version": "5.4.4",
      "resolved": "https://registry.npmjs.org/protractor/-/protractor-5.4.4.tgz",
      "integrity": "sha512-BaL4vePgu3Vfa/whvTUAlgaCAId4uNSGxIFSCXMgj7LMYENPWLp85h5RBi9pdpX/bWQ8SF6flP7afmi2TC4eHw==",
      "dev": true,
      "requires": {
        "@types/q": "^0.0.32",
        "@types/selenium-webdriver": "^3.0.0",
        "blocking-proxy": "^1.0.0",
        "browserstack": "^1.5.1",
        "chalk": "^1.1.3",
        "glob": "^7.0.3",
        "jasmine": "2.8.0",
        "jasminewd2": "^2.1.0",
        "q": "1.4.1",
        "saucelabs": "^1.5.0",
        "selenium-webdriver": "3.6.0",
        "source-map-support": "~0.4.0",
        "webdriver-js-extender": "2.1.0",
        "webdriver-manager": "^12.0.6",
        "yargs": "^12.0.5"
      },
      "dependencies": {
        "ansi-regex": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-3.0.0.tgz",
          "integrity": "sha1-7QMXwyIGT3lGbAKWa922Bas32Zg=",
          "dev": true
        },
        "ansi-styles": {
          "version": "2.2.1",
          "resolved": "https://registry.npmjs.org/ansi-styles/-/ansi-styles-2.2.1.tgz",
          "integrity": "sha1-tDLdM1i2NM914eRmQ2gkBTPB3b4=",
          "dev": true
        },
        "camelcase": {
          "version": "5.3.1",
          "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-5.3.1.tgz",
          "integrity": "sha512-L28STB170nwWS63UjtlEOE3dldQApaJXZkOI1uMFfzf3rRuPegHaHesyee+YxQ+W6SvRDQV6UrdOdRiR153wJg==",
          "dev": true
        },
        "chalk": {
          "version": "1.1.3",
          "resolved": "https://registry.npmjs.org/chalk/-/chalk-1.1.3.tgz",
          "integrity": "sha1-qBFcVeSnAv5NFQq9OHKCKn4J/Jg=",
          "dev": true,
          "requires": {
            "ansi-styles": "^2.2.1",
            "escape-string-regexp": "^1.0.2",
            "has-ansi": "^2.0.0",
            "strip-ansi": "^3.0.0",
            "supports-color": "^2.0.0"
          }
        },
        "cliui": {
          "version": "4.1.0",
          "resolved": "https://registry.npmjs.org/cliui/-/cliui-4.1.0.tgz",
          "integrity": "sha512-4FG+RSG9DL7uEwRUZXZn3SS34DiDPfzP0VOiEwtUWlE+AR2EIg+hSyvrIgUUfhdgR/UkAeW2QHgeP+hWrXs7jQ==",
          "dev": true,
          "requires": {
            "string-width": "^2.1.1",
            "strip-ansi": "^4.0.0",
            "wrap-ansi": "^2.0.0"
          },
          "dependencies": {
            "strip-ansi": {
              "version": "4.0.0",
              "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
              "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
              "dev": true,
              "requires": {
                "ansi-regex": "^3.0.0"
              }
            }
          }
        },
        "del": {
          "version": "2.2.2",
          "resolved": "https://registry.npmjs.org/del/-/del-2.2.2.tgz",
          "integrity": "sha1-wSyYHQZ4RshLyvhiz/kw2Qf/0ag=",
          "dev": true,
          "requires": {
            "globby": "^5.0.0",
            "is-path-cwd": "^1.0.0",
            "is-path-in-cwd": "^1.0.0",
            "object-assign": "^4.0.1",
            "pify": "^2.0.0",
            "pinkie-promise": "^2.0.0",
            "rimraf": "^2.2.8"
          }
        },
        "find-up": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz",
          "integrity": "sha512-1yD6RmLI1XBfxugvORwlck6f75tYL+iR0jqwsOrOxMZyGYqUuDhJ0l4AXdO1iX/FTs9cBAMEk1gWSEx1kSbylg==",
          "dev": true,
          "requires": {
            "locate-path": "^3.0.0"
          }
        },
        "get-caller-file": {
          "version": "1.0.3",
          "resolved": "https://registry.npmjs.org/get-caller-file/-/get-caller-file-1.0.3.tgz",
          "integrity": "sha512-3t6rVToeoZfYSGd8YoLFR2DJkiQrIiUrGcjvFX2mDw3bn6k2OtwHN0TNCLbBO+w8qTvimhDkv+LSscbJY1vE6w==",
          "dev": true
        },
        "globby": {
          "version": "5.0.0",
          "resolved": "https://registry.npmjs.org/globby/-/globby-5.0.0.tgz",
          "integrity": "sha1-69hGZ8oNuzMLmbz8aOrCvFQ3Dg0=",
          "dev": true,
          "requires": {
            "array-union": "^1.0.1",
            "arrify": "^1.0.0",
            "glob": "^7.0.3",
            "object-assign": "^4.0.1",
            "pify": "^2.0.0",
            "pinkie-promise": "^2.0.0"
          }
        },
        "is-fullwidth-code-point": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz",
          "integrity": "sha1-o7MKXE8ZkYMWeqq5O+764937ZU8=",
          "dev": true
        },
        "is-path-cwd": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-path-cwd/-/is-path-cwd-1.0.0.tgz",
          "integrity": "sha1-0iXsIxMuie3Tj9p2dHLmLmXxEG0=",
          "dev": true
        },
        "is-path-in-cwd": {
          "version": "1.0.1",
          "resolved": "https://registry.npmjs.org/is-path-in-cwd/-/is-path-in-cwd-1.0.1.tgz",
          "integrity": "sha512-FjV1RTW48E7CWM7eE/J2NJvAEEVektecDBVBE5Hh3nM1Jd0kvhHtX68Pr3xsDf857xt3Y4AkwVULK1Vku62aaQ==",
          "dev": true,
          "requires": {
            "is-path-inside": "^1.0.0"
          }
        },
        "is-path-inside": {
          "version": "1.0.1",
          "resolved": "https://registry.npmjs.org/is-path-inside/-/is-path-inside-1.0.1.tgz",
          "integrity": "sha1-jvW33lBDej/cprToZe96pVy0gDY=",
          "dev": true,
          "requires": {
            "path-is-inside": "^1.0.1"
          }
        },
        "locate-path": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz",
          "integrity": "sha512-7AO748wWnIhNqAuaty2ZWHkQHRSNfPVIsPIfwEOWO22AmaoVrWavlOcMR5nzTLNYvp36X220/maaRsrec1G65A==",
          "dev": true,
          "requires": {
            "p-locate": "^3.0.0",
            "path-exists": "^3.0.0"
          }
        },
        "p-limit": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz",
          "integrity": "sha512-//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==",
          "dev": true,
          "requires": {
            "p-try": "^2.0.0"
          }
        },
        "p-locate": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz",
          "integrity": "sha512-x+12w/To+4GFfgJhBEpiDcLozRJGegY+Ei7/z0tSLkMmxGZNybVMSfWj9aJn8Z5Fc7dBUNJOOVgPv2H7IwulSQ==",
          "dev": true,
          "requires": {
            "p-limit": "^2.0.0"
          }
        },
        "p-try": {
          "version": "2.2.0",
          "resolved": "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz",
          "integrity": "sha512-R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==",
          "dev": true
        },
        "pify": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
          "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
          "dev": true
        },
        "require-main-filename": {
          "version": "1.0.1",
          "resolved": "https://registry.npmjs.org/require-main-filename/-/require-main-filename-1.0.1.tgz",
          "integrity": "sha1-l/cXtp1IeE9fUmpsWqj/3aBVpNE=",
          "dev": true
        },
        "source-map-support": {
          "version": "0.4.18",
          "resolved": "https://registry.npmjs.org/source-map-support/-/source-map-support-0.4.18.tgz",
          "integrity": "sha512-try0/JqxPLF9nOjvSta7tVondkP5dwgyLDjVoyMDlmjugT2lRZ1OfsrYTkCd2hkDnJTKRbO/Rl3orm8vlsUzbA==",
          "dev": true,
          "requires": {
            "source-map": "^0.5.6"
          }
        },
        "string-width": {
          "version": "2.1.1",
          "resolved": "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz",
          "integrity": "sha512-nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==",
          "dev": true,
          "requires": {
            "is-fullwidth-code-point": "^2.0.0",
            "strip-ansi": "^4.0.0"
          },
          "dependencies": {
            "strip-ansi": {
              "version": "4.0.0",
              "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
              "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
              "dev": true,
              "requires": {
                "ansi-regex": "^3.0.0"
              }
            }
          }
        },
        "supports-color": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-2.0.0.tgz",
          "integrity": "sha1-U10EXOa2Nj+kARcIRimZXp3zJMc=",
          "dev": true
        },
        "webdriver-manager": {
          "version": "12.1.7",
          "resolved": "https://registry.npmjs.org/webdriver-manager/-/webdriver-manager-12.1.7.tgz",
          "integrity": "sha512-XINj6b8CYuUYC93SG3xPkxlyUc3IJbD6Vvo75CVGuG9uzsefDzWQrhz0Lq8vbPxtb4d63CZdYophF8k8Or/YiA==",
          "dev": true,
          "requires": {
            "adm-zip": "^0.4.9",
            "chalk": "^1.1.1",
            "del": "^2.2.0",
            "glob": "^7.0.3",
            "ini": "^1.3.4",
            "minimist": "^1.2.0",
            "q": "^1.4.1",
            "request": "^2.87.0",
            "rimraf": "^2.5.2",
            "semver": "^5.3.0",
            "xml2js": "^0.4.17"
          }
        },
        "wrap-ansi": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.1.0.tgz",
          "integrity": "sha1-2Pw9KE3QV5T+hJc8rs3Rz4JP3YU=",
          "dev": true,
          "requires": {
            "string-width": "^1.0.1",
            "strip-ansi": "^3.0.1"
          },
          "dependencies": {
            "is-fullwidth-code-point": {
              "version": "1.0.0",
              "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz",
              "integrity": "sha1-754xOG8DGn8NZDr4L95QxFfvAMs=",
              "dev": true,
              "requires": {
                "number-is-nan": "^1.0.0"
              }
            },
            "string-width": {
              "version": "1.0.2",
              "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",
              "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",
              "dev": true,
              "requires": {
                "code-point-at": "^1.0.0",
                "is-fullwidth-code-point": "^1.0.0",
                "strip-ansi": "^3.0.0"
              }
            }
          }
        },
        "yargs": {
          "version": "12.0.5",
          "resolved": "https://registry.npmjs.org/yargs/-/yargs-12.0.5.tgz",
          "integrity": "sha512-Lhz8TLaYnxq/2ObqHDql8dX8CJi97oHxrjUcYtzKbbykPtVW9WB+poxI+NM2UIzsMgNCZTIf0AQwsjK5yMAqZw==",
          "dev": true,
          "requires": {
            "cliui": "^4.0.0",
            "decamelize": "^1.2.0",
            "find-up": "^3.0.0",
            "get-caller-file": "^1.0.1",
            "os-locale": "^3.0.0",
            "require-directory": "^2.1.1",
            "require-main-filename": "^1.0.1",
            "set-blocking": "^2.0.0",
            "string-width": "^2.0.0",
            "which-module": "^2.0.0",
            "y18n": "^3.2.1 || ^4.0.0",
            "yargs-parser": "^11.1.1"
          }
        },
        "yargs-parser": {
          "version": "11.1.1",
          "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-11.1.1.tgz",
          "integrity": "sha512-C6kB/WJDiaxONLJQnF8ccx9SEeoTTLek8RVbaOIsrAUS8VrBEXfmeSnCZxygc+XC2sNMBIwOOnfcxiynjHsVSQ==",
          "dev": true,
          "requires": {
            "camelcase": "^5.0.0",
            "decamelize": "^1.2.0"
          }
        }
      }
    },
    "proxy-addr": {
      "version": "2.0.6",
      "resolved": "https://registry.npmjs.org/proxy-addr/-/proxy-addr-2.0.6.tgz",
      "integrity": "sha512-dh/frvCBVmSsDYzw6n926jv974gddhkFPfiN8hPOi30Wax25QZyZEGveluCgliBnqmuM+UJmBErbAUFIoDbjOw==",
      "dev": true,
      "requires": {
        "forwarded": "~0.1.2",
        "ipaddr.js": "1.9.1"
      }
    },
    "prr": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/prr/-/prr-1.0.1.tgz",
      "integrity": "sha1-0/wRS6BplaRexok/SEzrHXj19HY=",
      "dev": true
    },
    "pseudomap": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/pseudomap/-/pseudomap-1.0.2.tgz",
      "integrity": "sha1-8FKijacOYYkX7wqKw0wa5aaChrM=",
      "dev": true
    },
    "psl": {
      "version": "1.8.0",
      "resolved": "https://registry.npmjs.org/psl/-/psl-1.8.0.tgz",
      "integrity": "sha512-RIdOzyoavK+hA18OGGWDqUTsCLhtA7IcZ/6NCs4fFJaHBDab+pDDmDIByWFRQJq2Cd7r1OoQxBGKOaztq+hjIQ==",
      "dev": true
    },
    "public-encrypt": {
      "version": "4.0.3",
      "resolved": "https://registry.npmjs.org/public-encrypt/-/public-encrypt-4.0.3.tgz",
      "integrity": "sha512-zVpa8oKZSz5bTMTFClc1fQOnyyEzpl5ozpi1B5YcvBrdohMjH2rfsBtyXcuNuwjsDIXmBYlF2N5FlJYhR29t8Q==",
      "dev": true,
      "requires": {
        "bn.js": "^4.1.0",
        "browserify-rsa": "^4.0.0",
        "create-hash": "^1.1.0",
        "parse-asn1": "^5.0.0",
        "randombytes": "^2.0.1",
        "safe-buffer": "^5.1.2"
      },
      "dependencies": {
        "bn.js": {
          "version": "4.11.8",
          "resolved": "https://registry.npmjs.org/bn.js/-/bn.js-4.11.8.tgz",
          "integrity": "sha512-ItfYfPLkWHUjckQCk8xC+LwxgK8NYcXywGigJgSwOP8Y2iyWT4f2vsZnoOXTTbo+o5yXmIUJ4gn5538SO5S3gA==",
          "dev": true
        }
      }
    },
    "pump": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/pump/-/pump-2.0.1.tgz",
      "integrity": "sha512-ruPMNRkN3MHP1cWJc9OWr+T/xDP0jhXYCLfJcBuX54hhfIBnaQmAUMfDcG4DM5UMWByBbJY69QSphm3jtDKIkA==",
      "dev": true,
      "requires": {
        "end-of-stream": "^1.1.0",
        "once": "^1.3.1"
      }
    },
    "pumpify": {
      "version": "1.5.1",
      "resolved": "https://registry.npmjs.org/pumpify/-/pumpify-1.5.1.tgz",
      "integrity": "sha512-oClZI37HvuUJJxSKKrC17bZ9Cu0ZYhEAGPsPUy9KlMUmv9dKX2o77RUmq7f3XjIxbwyGwYzbzQ1L2Ks8sIradQ==",
      "dev": true,
      "requires": {
        "duplexify": "^3.6.0",
        "inherits": "^2.0.3",
        "pump": "^2.0.0"
      }
    },
    "punycode": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/punycode/-/punycode-2.1.1.tgz",
      "integrity": "sha512-XRsRjdf+j5ml+y/6GKHPZbrF/8p2Yga0JPtdqTIY2Xe5ohJPD9saDJJLPvp9+NSBprVvevdXZybnj2cv8OEd0A==",
      "dev": true
    },
    "q": {
      "version": "1.4.1",
      "resolved": "https://registry.npmjs.org/q/-/q-1.4.1.tgz",
      "integrity": "sha1-VXBbzZPF82c1MMLCy8DCs63cKG4=",
      "dev": true
    },
    "qjobs": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/qjobs/-/qjobs-1.2.0.tgz",
      "integrity": "sha512-8YOJEHtxpySA3fFDyCRxA+UUV+fA+rTWnuWvylOK/NCjhY+b4ocCtmu8TtsWb+mYeU+GCHf/S66KZF/AsteKHg==",
      "dev": true
    },
    "qs": {
      "version": "6.5.2",
      "resolved": "https://registry.npmjs.org/qs/-/qs-6.5.2.tgz",
      "integrity": "sha512-N5ZAX4/LxJmF+7wN74pUD6qAh9/wnvdQcjq9TZjevvXzSUo7bfmw91saqMjzGS2xq91/odN2dW/WOl7qQHNDGA==",
      "dev": true
    },
    "querystring": {
      "version": "0.2.0",
      "resolved": "https://registry.npmjs.org/querystring/-/querystring-0.2.0.tgz",
      "integrity": "sha1-sgmEkgO7Jd+CDadW50cAWHhSFiA=",
      "dev": true
    },
    "querystring-es3": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/querystring-es3/-/querystring-es3-0.2.1.tgz",
      "integrity": "sha1-nsYfeQSYdXB9aUFFlv2Qek1xHnM=",
      "dev": true
    },
    "querystringify": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/querystringify/-/querystringify-2.1.1.tgz",
      "integrity": "sha512-w7fLxIRCRT7U8Qu53jQnJyPkYZIaR4n5151KMfcJlO/A9397Wxb1amJvROTK6TOnp7PfoAmg/qXiNHI+08jRfA==",
      "dev": true
    },
    "randomatic": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/randomatic/-/randomatic-3.1.1.tgz",
      "integrity": "sha512-TuDE5KxZ0J461RVjrJZCJc+J+zCkTb1MbH9AQUq68sMhOMcy9jLcb3BrZKgp9q9Ncltdg4QVqWrH02W2EFFVYw==",
      "dev": true,
      "requires": {
        "is-number": "^4.0.0",
        "kind-of": "^6.0.0",
        "math-random": "^1.0.1"
      },
      "dependencies": {
        "is-number": {
          "version": "4.0.0",
          "resolved": "https://registry.npmjs.org/is-number/-/is-number-4.0.0.tgz",
          "integrity": "sha512-rSklcAIlf1OmFdyAqbnWTLVelsQ58uvZ66S/ZyawjWqIviTWCjg2PzVGw8WUA+nNuPTqb4wgA+NszrJ+08LlgQ==",
          "dev": true
        }
      }
    },
    "randombytes": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/randombytes/-/randombytes-2.1.0.tgz",
      "integrity": "sha512-vYl3iOX+4CKUWuxGi9Ukhie6fsqXqS9FE2Zaic4tNFD2N2QQaXOMFbuKK4QmDHC0JO6B1Zp41J0LpT0oR68amQ==",
      "dev": true,
      "requires": {
        "safe-buffer": "^5.1.0"
      }
    },
    "randomfill": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/randomfill/-/randomfill-1.0.4.tgz",
      "integrity": "sha512-87lcbR8+MhcWcUiQ+9e+Rwx8MyR2P7qnt15ynUlbm3TU/fjbgz4GsvfSUDTemtCCtVCqb4ZcEFlyPNTh9bBTLw==",
      "dev": true,
      "requires": {
        "randombytes": "^2.0.5",
        "safe-buffer": "^5.1.0"
      }
    },
    "range-parser": {
      "version": "1.2.1",
      "resolved": "https://registry.npmjs.org/range-parser/-/range-parser-1.2.1.tgz",
      "integrity": "sha512-Hrgsx+orqoygnmhFbKaHE6c296J+HTAQXoxEF6gNupROmmGJRoyzfG3ccAveqCBrwr/2yxQ5BVd/GTl5agOwSg==",
      "dev": true
    },
    "raw-body": {
      "version": "2.4.0",
      "resolved": "https://registry.npmjs.org/raw-body/-/raw-body-2.4.0.tgz",
      "integrity": "sha512-4Oz8DUIwdvoa5qMJelxipzi/iJIi40O5cGV1wNYp5hvZP8ZN0T+jiNkL0QepXs+EsQ9XJ8ipEDoiH70ySUJP3Q==",
      "dev": true,
      "requires": {
        "bytes": "3.1.0",
        "http-errors": "1.7.2",
        "iconv-lite": "0.4.24",
        "unpipe": "1.0.0"
      },
      "dependencies": {
        "bytes": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/bytes/-/bytes-3.1.0.tgz",
          "integrity": "sha512-zauLjrfCG+xvoyaqLoV8bLVXXNGC4JqlxFCutSDWA6fJrTo2ZuvLYTqZ7aHBLZSMOopbzwv8f+wZcVzfVTI2Dg==",
          "dev": true
        }
      }
    },
    "raw-loader": {
      "version": "0.5.1",
      "resolved": "https://registry.npmjs.org/raw-loader/-/raw-loader-0.5.1.tgz",
      "integrity": "sha1-DD0L6u2KAclm2Xh793goElKpeao=",
      "dev": true
    },
    "read-cache": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/read-cache/-/read-cache-1.0.0.tgz",
      "integrity": "sha1-5mTvMRYRZsl1HNvo28+GtftY93Q=",
      "dev": true,
      "requires": {
        "pify": "^2.3.0"
      },
      "dependencies": {
        "pify": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
          "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
          "dev": true
        }
      }
    },
    "read-pkg": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/read-pkg/-/read-pkg-1.1.0.tgz",
      "integrity": "sha1-9f+qXs0pyzHAR0vKfXVra7KePyg=",
      "dev": true,
      "optional": true,
      "requires": {
        "load-json-file": "^1.0.0",
        "normalize-package-data": "^2.3.2",
        "path-type": "^1.0.0"
      },
      "dependencies": {
        "path-type": {
          "version": "1.1.0",
          "resolved": "https://registry.npmjs.org/path-type/-/path-type-1.1.0.tgz",
          "integrity": "sha1-WcRPfuSR2nBNpBXaWkBwuk+P5EE=",
          "dev": true,
          "optional": true,
          "requires": {
            "graceful-fs": "^4.1.2",
            "pify": "^2.0.0",
            "pinkie-promise": "^2.0.0"
          }
        },
        "pify": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/pify/-/pify-2.3.0.tgz",
          "integrity": "sha1-7RQaasBDqEnqWISY59yosVMw6Qw=",
          "dev": true,
          "optional": true
        }
      }
    },
    "read-pkg-up": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/read-pkg-up/-/read-pkg-up-1.0.1.tgz",
      "integrity": "sha1-nWPBMnbAZZGNV/ACpX9AobZD+wI=",
      "dev": true,
      "optional": true,
      "requires": {
        "find-up": "^1.0.0",
        "read-pkg": "^1.0.0"
      },
      "dependencies": {
        "find-up": {
          "version": "1.1.2",
          "resolved": "https://registry.npmjs.org/find-up/-/find-up-1.1.2.tgz",
          "integrity": "sha1-ay6YIrGizgpgq2TWEOzK1TyyTQ8=",
          "dev": true,
          "optional": true,
          "requires": {
            "path-exists": "^2.0.0",
            "pinkie-promise": "^2.0.0"
          }
        },
        "path-exists": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/path-exists/-/path-exists-2.1.0.tgz",
          "integrity": "sha1-D+tsZPD8UY2adU3V77YscCJ2H0s=",
          "dev": true,
          "optional": true,
          "requires": {
            "pinkie-promise": "^2.0.0"
          }
        }
      }
    },
    "readable-stream": {
      "version": "2.3.7",
      "resolved": "https://registry.npmjs.org/readable-stream/-/readable-stream-2.3.7.tgz",
      "integrity": "sha512-Ebho8K4jIbHAxnuxi7o42OrZgF/ZTNcsZj6nRKyUmkhLFq8CHItp/fy6hQZuZmP/n3yZ9VBUbp4zz/mX8hmYPw==",
      "dev": true,
      "requires": {
        "core-util-is": "~1.0.0",
        "inherits": "~2.0.3",
        "isarray": "~1.0.0",
        "process-nextick-args": "~2.0.0",
        "safe-buffer": "~5.1.1",
        "string_decoder": "~1.1.1",
        "util-deprecate": "~1.0.1"
      }
    },
    "readdirp": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/readdirp/-/readdirp-2.2.1.tgz",
      "integrity": "sha512-1JU/8q+VgFZyxwrJ+SVIOsh+KywWGpds3NTqikiKpDMZWScmAYyKIgqkO+ARvNWJfXeXR1zxz7aHF4u4CyH6vQ==",
      "dev": true,
      "requires": {
        "graceful-fs": "^4.1.11",
        "micromatch": "^3.1.10",
        "readable-stream": "^2.0.2"
      }
    },
    "rechoir": {
      "version": "0.6.2",
      "resolved": "https://registry.npmjs.org/rechoir/-/rechoir-0.6.2.tgz",
      "integrity": "sha1-hSBLVNuoLVdC4oyWdW70OvUOM4Q=",
      "dev": true,
      "requires": {
        "resolve": "^1.1.6"
      }
    },
    "redent": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/redent/-/redent-1.0.0.tgz",
      "integrity": "sha1-z5Fqsf1fHxbfsggi3W7H9zDCr94=",
      "dev": true,
      "optional": true,
      "requires": {
        "indent-string": "^2.1.0",
        "strip-indent": "^1.0.1"
      }
    },
    "reflect-metadata": {
      "version": "0.1.13",
      "resolved": "https://registry.npmjs.org/reflect-metadata/-/reflect-metadata-0.1.13.tgz",
      "integrity": "sha512-Ts1Y/anZELhSsjMcU605fU9RE4Oi3p5ORujwbIKXfWa+0Zxs510Qrmrce5/Jowq3cHSZSJqBjypxmHarc+vEWg==",
      "dev": true
    },
    "regenerate": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/regenerate/-/regenerate-1.4.0.tgz",
      "integrity": "sha512-1G6jJVDWrt0rK99kBjvEtziZNCICAuvIPkSiUFIQxVP06RCVpq3dmDo2oi6ABpYaDYaTRr67BEhL8r1wgEZZKg==",
      "dev": true
    },
    "regenerate-unicode-properties": {
      "version": "8.2.0",
      "resolved": "https://registry.npmjs.org/regenerate-unicode-properties/-/regenerate-unicode-properties-8.2.0.tgz",
      "integrity": "sha512-F9DjY1vKLo/tPePDycuH3dn9H1OTPIkVD9Kz4LODu+F2C75mgjAJ7x/gwy6ZcSNRAAkhNlJSOHRe8k3p+K9WhA==",
      "dev": true,
      "requires": {
        "regenerate": "^1.4.0"
      }
    },
    "regenerator-runtime": {
      "version": "0.11.1",
      "resolved": "https://registry.npmjs.org/regenerator-runtime/-/regenerator-runtime-0.11.1.tgz",
      "integrity": "sha512-MguG95oij0fC3QV3URf4V2SDYGJhJnJGqvIIgdECeODCT98wSWDAJ94SSuVpYQUoTcGUIL6L4yNB7j1DFFHSBg==",
      "dev": true
    },
    "regex-cache": {
      "version": "0.4.4",
      "resolved": "https://registry.npmjs.org/regex-cache/-/regex-cache-0.4.4.tgz",
      "integrity": "sha512-nVIZwtCjkC9YgvWkpM55B5rBhBYRZhAaJbgcFYXXsHnbZ9UZI9nnVWYZpBlCqv9ho2eZryPnWrZGsOdPwVWXWQ==",
      "dev": true,
      "requires": {
        "is-equal-shallow": "^0.1.3"
      }
    },
    "regex-not": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/regex-not/-/regex-not-1.0.2.tgz",
      "integrity": "sha512-J6SDjUgDxQj5NusnOtdFxDwN/+HWykR8GELwctJ7mdqhcyy1xEc4SRFHUXvxTp661YaVKAjfRLZ9cCqS6tn32A==",
      "dev": true,
      "requires": {
        "extend-shallow": "^3.0.2",
        "safe-regex": "^1.1.0"
      }
    },
    "regexp.prototype.flags": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/regexp.prototype.flags/-/regexp.prototype.flags-1.3.0.tgz",
      "integrity": "sha512-2+Q0C5g951OlYlJz6yu5/M33IcsESLlLfsyIaLJaG4FA2r4yP8MvVMJUUP/fVBkSpbbbZlS5gynbEWLipiiXiQ==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.0-next.1"
      }
    },
    "regexpu-core": {
      "version": "4.7.0",
      "resolved": "https://registry.npmjs.org/regexpu-core/-/regexpu-core-4.7.0.tgz",
      "integrity": "sha512-TQ4KXRnIn6tz6tjnrXEkD/sshygKH/j5KzK86X8MkeHyZ8qst/LZ89j3X4/8HEIfHANTFIP/AbXakeRhWIl5YQ==",
      "dev": true,
      "requires": {
        "regenerate": "^1.4.0",
        "regenerate-unicode-properties": "^8.2.0",
        "regjsgen": "^0.5.1",
        "regjsparser": "^0.6.4",
        "unicode-match-property-ecmascript": "^1.0.4",
        "unicode-match-property-value-ecmascript": "^1.2.0"
      }
    },
    "regjsgen": {
      "version": "0.5.1",
      "resolved": "https://registry.npmjs.org/regjsgen/-/regjsgen-0.5.1.tgz",
      "integrity": "sha512-5qxzGZjDs9w4tzT3TPhCJqWdCc3RLYwy9J2NB0nm5Lz+S273lvWcpjaTGHsT1dc6Hhfq41uSEOw8wBmxrKOuyg==",
      "dev": true
    },
    "regjsparser": {
      "version": "0.6.4",
      "resolved": "https://registry.npmjs.org/regjsparser/-/regjsparser-0.6.4.tgz",
      "integrity": "sha512-64O87/dPDgfk8/RQqC4gkZoGyyWFIEUTTh80CU6CWuK5vkCGyekIx+oKcEIYtP/RAxSQltCZHCNu/mdd7fqlJw==",
      "dev": true,
      "requires": {
        "jsesc": "~0.5.0"
      },
      "dependencies": {
        "jsesc": {
          "version": "0.5.0",
          "resolved": "https://registry.npmjs.org/jsesc/-/jsesc-0.5.0.tgz",
          "integrity": "sha1-597mbjXW/Bb3EP6R1c9p9w8IkR0=",
          "dev": true
        }
      }
    },
    "remove-trailing-separator": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz",
      "integrity": "sha1-wkvOKig62tW8P1jg1IJJuSN52O8=",
      "dev": true
    },
    "repeat-element": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/repeat-element/-/repeat-element-1.1.3.tgz",
      "integrity": "sha512-ahGq0ZnV5m5XtZLMb+vP76kcAM5nkLqk0lpqAuojSKGgQtn4eRi4ZZGm2olo2zKFH+sMsWaqOCW1dqAnOru72g==",
      "dev": true
    },
    "repeat-string": {
      "version": "1.6.1",
      "resolved": "https://registry.npmjs.org/repeat-string/-/repeat-string-1.6.1.tgz",
      "integrity": "sha1-jcrkcOHIirwtYA//Sndihtp15jc=",
      "dev": true
    },
    "repeating": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/repeating/-/repeating-2.0.1.tgz",
      "integrity": "sha1-UhTFOpJtNVJwdSf7q0FdvAjQbdo=",
      "dev": true,
      "requires": {
        "is-finite": "^1.0.0"
      }
    },
    "request": {
      "version": "2.88.2",
      "resolved": "https://registry.npmjs.org/request/-/request-2.88.2.tgz",
      "integrity": "sha512-MsvtOrfG9ZcrOwAW+Qi+F6HbD0CWXEh9ou77uOb7FM2WPhwT7smM833PzanhJLsgXjN89Ir6V2PczXNnMpwKhw==",
      "dev": true,
      "requires": {
        "aws-sign2": "~0.7.0",
        "aws4": "^1.8.0",
        "caseless": "~0.12.0",
        "combined-stream": "~1.0.6",
        "extend": "~3.0.2",
        "forever-agent": "~0.6.1",
        "form-data": "~2.3.2",
        "har-validator": "~5.1.3",
        "http-signature": "~1.2.0",
        "is-typedarray": "~1.0.0",
        "isstream": "~0.1.2",
        "json-stringify-safe": "~5.0.1",
        "mime-types": "~2.1.19",
        "oauth-sign": "~0.9.0",
        "performance-now": "^2.1.0",
        "qs": "~6.5.2",
        "safe-buffer": "^5.1.2",
        "tough-cookie": "~2.5.0",
        "tunnel-agent": "^0.6.0",
        "uuid": "^3.3.2"
      }
    },
    "require-directory": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/require-directory/-/require-directory-2.1.1.tgz",
      "integrity": "sha1-jGStX9MNqxyXbiNE/+f3kqam30I=",
      "dev": true
    },
    "require-main-filename": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/require-main-filename/-/require-main-filename-1.0.1.tgz",
      "integrity": "sha1-l/cXtp1IeE9fUmpsWqj/3aBVpNE=",
      "dev": true
    },
    "requires-port": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/requires-port/-/requires-port-1.0.0.tgz",
      "integrity": "sha1-kl0mAdOaxIXgkc8NpcbmlNw9yv8=",
      "dev": true
    },
    "resolve": {
      "version": "1.1.7",
      "resolved": "https://registry.npmjs.org/resolve/-/resolve-1.1.7.tgz",
      "integrity": "sha1-IDEU2CrSxe2ejgQRs5ModeiJ6Xs=",
      "dev": true
    },
    "resolve-cwd": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/resolve-cwd/-/resolve-cwd-2.0.0.tgz",
      "integrity": "sha1-AKn3OHVW4nA46uIyyqNypqWbZlo=",
      "dev": true,
      "requires": {
        "resolve-from": "^3.0.0"
      }
    },
    "resolve-from": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/resolve-from/-/resolve-from-3.0.0.tgz",
      "integrity": "sha1-six699nWiBvItuZTM17rywoYh0g=",
      "dev": true
    },
    "resolve-url": {
      "version": "0.2.1",
      "resolved": "https://registry.npmjs.org/resolve-url/-/resolve-url-0.2.1.tgz",
      "integrity": "sha1-LGN/53yJOv0qZj/iGqkIAGjiBSo=",
      "dev": true
    },
    "restore-cursor": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/restore-cursor/-/restore-cursor-2.0.0.tgz",
      "integrity": "sha1-n37ih/gv0ybU/RYpI9YhKe7g368=",
      "dev": true,
      "requires": {
        "onetime": "^2.0.0",
        "signal-exit": "^3.0.2"
      }
    },
    "ret": {
      "version": "0.1.15",
      "resolved": "https://registry.npmjs.org/ret/-/ret-0.1.15.tgz",
      "integrity": "sha512-TTlYpa+OL+vMMNG24xSlQGEJ3B/RzEfUlLct7b5G/ytav+wPrplCpVMFuwzXbkecJrb6IYo1iFb0S9v37754mg==",
      "dev": true
    },
    "retry": {
      "version": "0.10.1",
      "resolved": "https://registry.npmjs.org/retry/-/retry-0.10.1.tgz",
      "integrity": "sha1-52OI0heZLCUnUCQdPTlW/tmNj/Q=",
      "dev": true
    },
    "rfdc": {
      "version": "1.1.4",
      "resolved": "https://registry.npmjs.org/rfdc/-/rfdc-1.1.4.tgz",
      "integrity": "sha512-5C9HXdzK8EAqN7JDif30jqsBzavB7wLpaubisuQIGHWf2gUXSpzy6ArX/+Da8RjFpagWsCn+pIgxTMAmKw9Zug==",
      "dev": true
    },
    "rimraf": {
      "version": "2.7.1",
      "resolved": "https://registry.npmjs.org/rimraf/-/rimraf-2.7.1.tgz",
      "integrity": "sha512-uWjbaKIK3T1OSVptzX7Nl6PvQ3qAGtKEtVRjRuazjfL3Bx5eI409VZSqgND+4UNnmzLVdPj9FqFJNPqBZFve4w==",
      "dev": true,
      "requires": {
        "glob": "^7.1.3"
      }
    },
    "ripemd160": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/ripemd160/-/ripemd160-2.0.2.tgz",
      "integrity": "sha512-ii4iagi25WusVoiC4B4lq7pbXfAp3D9v5CwfkY33vffw2+pkDjY1D8GaN7spsxvCSx8dkPqOZCEZyfxcmJG2IA==",
      "dev": true,
      "requires": {
        "hash-base": "^3.0.0",
        "inherits": "^2.0.1"
      }
    },
    "run-async": {
      "version": "2.4.1",
      "resolved": "https://registry.npmjs.org/run-async/-/run-async-2.4.1.tgz",
      "integrity": "sha512-tvVnVv01b8c1RrA6Ep7JkStj85Guv/YrMcwqYQnwjsAS2cTmmPGBBjAjpCW7RrSodNSoE2/qg9O4bceNvUuDgQ==",
      "dev": true
    },
    "run-queue": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/run-queue/-/run-queue-1.0.3.tgz",
      "integrity": "sha1-6Eg5bwV9Ij8kOGkkYY4laUFh7Ec=",
      "dev": true,
      "requires": {
        "aproba": "^1.1.1"
      }
    },
    "rxjs": {
      "version": "6.3.3",
      "resolved": "https://registry.npmjs.org/rxjs/-/rxjs-6.3.3.tgz",
      "integrity": "sha512-JTWmoY9tWCs7zvIk/CvRjhjGaOd+OVBM987mxFo+OW66cGpdKjZcpmc74ES1sB//7Kl/PAe8+wEakuhG4pcgOw==",
      "requires": {
        "tslib": "^1.9.0"
      }
    },
    "rxjs-compat": {
      "version": "6.5.5",
      "resolved": "https://registry.npmjs.org/rxjs-compat/-/rxjs-compat-6.5.5.tgz",
      "integrity": "sha512-F42sssVbUyWH4vJswEo6m+Eh02xHv3q93n8S7nUJO58R7sbc3CvJIOts605zdaBhWa1xMB9aVSyqPqhQ5q3eXg=="
    },
    "safe-buffer": {
      "version": "5.1.2",
      "resolved": "https://registry.npmjs.org/safe-buffer/-/safe-buffer-5.1.2.tgz",
      "integrity": "sha512-Gd2UZBJDkXlY7GbJxfsE8/nvKkUEU1G38c1siN6QP6a9PT9MmHB8GnpscSmMJSoF8LOIrt8ud/wPtojys4G6+g==",
      "dev": true
    },
    "safe-regex": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/safe-regex/-/safe-regex-1.1.0.tgz",
      "integrity": "sha1-QKNmnzsHfR6UPURinhV91IAjvy4=",
      "dev": true,
      "requires": {
        "ret": "~0.1.10"
      }
    },
    "safer-buffer": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/safer-buffer/-/safer-buffer-2.1.2.tgz",
      "integrity": "sha512-YZo3K82SD7Riyi0E1EQPojLz7kpepnSQI9IyPbHHg1XXXevb5dJI7tpyN2ADxGcQbHG7vcyRHk0cbwqcQriUtg==",
      "dev": true
    },
    "sass-graph": {
      "version": "2.2.6",
      "resolved": "https://registry.npmjs.org/sass-graph/-/sass-graph-2.2.6.tgz",
      "integrity": "sha512-MKuEYXFSGuRSi8FZ3A7imN1CeVn9Gpw0/SFJKdL1ejXJneI9a5rwlEZrKejhEFAA3O6yr3eIyl/WuvASvlT36g==",
      "dev": true,
      "optional": true,
      "requires": {
        "glob": "^7.0.0",
        "lodash": "^4.0.0",
        "scss-tokenizer": "^0.2.3",
        "yargs": "^7.0.0"
      }
    },
    "sass-loader": {
      "version": "7.1.0",
      "resolved": "https://registry.npmjs.org/sass-loader/-/sass-loader-7.1.0.tgz",
      "integrity": "sha512-+G+BKGglmZM2GUSfT9TLuEp6tzehHPjAMoRRItOojWIqIGPloVCMhNIQuG639eJ+y033PaGTSjLaTHts8Kw79w==",
      "dev": true,
      "requires": {
        "clone-deep": "^2.0.1",
        "loader-utils": "^1.0.1",
        "lodash.tail": "^4.1.1",
        "neo-async": "^2.5.0",
        "pify": "^3.0.0",
        "semver": "^5.5.0"
      }
    },
    "saucelabs": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/saucelabs/-/saucelabs-1.5.0.tgz",
      "integrity": "sha512-jlX3FGdWvYf4Q3LFfFWS1QvPg3IGCGWxIc8QBFdPTbpTJnt/v17FHXYVAn7C8sHf1yUXo2c7yIM0isDryfYtHQ==",
      "dev": true,
      "requires": {
        "https-proxy-agent": "^2.2.1"
      }
    },
    "sax": {
      "version": "1.2.4",
      "resolved": "https://registry.npmjs.org/sax/-/sax-1.2.4.tgz",
      "integrity": "sha512-NqVDv9TpANUjFm0N8uM5GxL36UgKi9/atZw+x7YFnQ8ckwFGKrl4xX4yWtrey3UJm5nP1kUbnYgLopqWNSRhWw==",
      "dev": true
    },
    "schema-utils": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-1.0.0.tgz",
      "integrity": "sha512-i27Mic4KovM/lnGsy8whRCHhc7VicJajAjTrYg11K9zfZXnYIt4k5F+kZkwjnrhKzLic/HLU4j11mjsz2G/75g==",
      "dev": true,
      "requires": {
        "ajv": "^6.1.0",
        "ajv-errors": "^1.0.0",
        "ajv-keywords": "^3.1.0"
      }
    },
    "scss-tokenizer": {
      "version": "0.2.3",
      "resolved": "https://registry.npmjs.org/scss-tokenizer/-/scss-tokenizer-0.2.3.tgz",
      "integrity": "sha1-jrBtualyMzOCTT9VMGQRSYR85dE=",
      "dev": true,
      "optional": true,
      "requires": {
        "js-base64": "^2.1.8",
        "source-map": "^0.4.2"
      },
      "dependencies": {
        "source-map": {
          "version": "0.4.4",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz",
          "integrity": "sha1-66T12pwNyZneaAMti092FzZSA2s=",
          "dev": true,
          "optional": true,
          "requires": {
            "amdefine": ">=0.0.4"
          }
        }
      }
    },
    "select-hose": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/select-hose/-/select-hose-2.0.0.tgz",
      "integrity": "sha1-Yl2GWPhlr0Psliv8N2o3NZpJlMo=",
      "dev": true
    },
    "selenium-webdriver": {
      "version": "3.6.0",
      "resolved": "https://registry.npmjs.org/selenium-webdriver/-/selenium-webdriver-3.6.0.tgz",
      "integrity": "sha512-WH7Aldse+2P5bbFBO4Gle/nuQOdVwpHMTL6raL3uuBj/vPG07k6uzt3aiahu352ONBr5xXh0hDlM3LhtXPOC4Q==",
      "dev": true,
      "requires": {
        "jszip": "^3.1.3",
        "rimraf": "^2.5.4",
        "tmp": "0.0.30",
        "xml2js": "^0.4.17"
      },
      "dependencies": {
        "tmp": {
          "version": "0.0.30",
          "resolved": "https://registry.npmjs.org/tmp/-/tmp-0.0.30.tgz",
          "integrity": "sha1-ckGdSovn1s51FI/YsyTlk6cRwu0=",
          "dev": true,
          "requires": {
            "os-tmpdir": "~1.0.1"
          }
        }
      }
    },
    "selfsigned": {
      "version": "1.10.7",
      "resolved": "https://registry.npmjs.org/selfsigned/-/selfsigned-1.10.7.tgz",
      "integrity": "sha512-8M3wBCzeWIJnQfl43IKwOmC4H/RAp50S8DF60znzjW5GVqTcSe2vWclt7hmYVPkKPlHWOu5EaWOMZ2Y6W8ZXTA==",
      "dev": true,
      "requires": {
        "node-forge": "0.9.0"
      }
    },
    "semver": {
      "version": "5.7.1",
      "resolved": "https://registry.npmjs.org/semver/-/semver-5.7.1.tgz",
      "integrity": "sha512-sauaDf/PZdVgrLTNYHRtpXa1iRiKcaebiKQ1BJdpQlWH2lCvexQdX55snPFyK7QzpudqbCI0qXFfOasHdyNDGQ==",
      "dev": true
    },
    "semver-dsl": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/semver-dsl/-/semver-dsl-1.0.1.tgz",
      "integrity": "sha1-02eN5VVeimH2Ke7QJTZq5fJzQKA=",
      "dev": true,
      "requires": {
        "semver": "^5.3.0"
      }
    },
    "semver-intersect": {
      "version": "1.4.0",
      "resolved": "https://registry.npmjs.org/semver-intersect/-/semver-intersect-1.4.0.tgz",
      "integrity": "sha512-d8fvGg5ycKAq0+I6nfWeCx6ffaWJCsBYU0H2Rq56+/zFePYfT8mXkB3tWBSjR5BerkHNZ5eTPIk1/LBYas35xQ==",
      "dev": true,
      "requires": {
        "semver": "^5.0.0"
      }
    },
    "send": {
      "version": "0.17.1",
      "resolved": "https://registry.npmjs.org/send/-/send-0.17.1.tgz",
      "integrity": "sha512-BsVKsiGcQMFwT8UxypobUKyv7irCNRHk1T0G680vk88yf6LBByGcZJOTJCrTP2xVN6yI+XjPJcNuE3V4fT9sAg==",
      "dev": true,
      "requires": {
        "debug": "2.6.9",
        "depd": "~1.1.2",
        "destroy": "~1.0.4",
        "encodeurl": "~1.0.2",
        "escape-html": "~1.0.3",
        "etag": "~1.8.1",
        "fresh": "0.5.2",
        "http-errors": "~1.7.2",
        "mime": "1.6.0",
        "ms": "2.1.1",
        "on-finished": "~2.3.0",
        "range-parser": "~1.2.1",
        "statuses": "~1.5.0"
      },
      "dependencies": {
        "ms": {
          "version": "2.1.1",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.1.tgz",
          "integrity": "sha512-tgp+dl5cGk28utYktBsrFqA7HKgrhgPsg6Z/EfhWI4gl1Hwq8B/GmY/0oXZ6nF8hDVesS/FpnYaD/kOWhYQvyg==",
          "dev": true
        }
      }
    },
    "serialize-javascript": {
      "version": "1.9.1",
      "resolved": "https://registry.npmjs.org/serialize-javascript/-/serialize-javascript-1.9.1.tgz",
      "integrity": "sha512-0Vb/54WJ6k5v8sSWN09S0ora+Hnr+cX40r9F170nT+mSkaxltoE/7R3OrIdBSUv1OoiobH1QoWQbCnAO+e8J1A==",
      "dev": true
    },
    "serve-index": {
      "version": "1.9.1",
      "resolved": "https://registry.npmjs.org/serve-index/-/serve-index-1.9.1.tgz",
      "integrity": "sha1-03aNabHn2C5c4FD/9bRTvqEqkjk=",
      "dev": true,
      "requires": {
        "accepts": "~1.3.4",
        "batch": "0.6.1",
        "debug": "2.6.9",
        "escape-html": "~1.0.3",
        "http-errors": "~1.6.2",
        "mime-types": "~2.1.17",
        "parseurl": "~1.3.2"
      },
      "dependencies": {
        "http-errors": {
          "version": "1.6.3",
          "resolved": "https://registry.npmjs.org/http-errors/-/http-errors-1.6.3.tgz",
          "integrity": "sha1-i1VoC7S+KDoLW/TqLjhYC+HZMg0=",
          "dev": true,
          "requires": {
            "depd": "~1.1.2",
            "inherits": "2.0.3",
            "setprototypeof": "1.1.0",
            "statuses": ">= 1.4.0 < 2"
          }
        },
        "inherits": {
          "version": "2.0.3",
          "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz",
          "integrity": "sha1-Yzwsg+PaQqUC9SRmAiSA9CCCYd4=",
          "dev": true
        },
        "setprototypeof": {
          "version": "1.1.0",
          "resolved": "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.1.0.tgz",
          "integrity": "sha512-BvE/TwpZX4FXExxOxZyRGQQv651MSwmWKZGqvmPcRIjDqWub67kTKuIMx43cZZrS/cBBzwBcNDWoFxt2XEFIpQ==",
          "dev": true
        }
      }
    },
    "serve-static": {
      "version": "1.14.1",
      "resolved": "https://registry.npmjs.org/serve-static/-/serve-static-1.14.1.tgz",
      "integrity": "sha512-JMrvUwE54emCYWlTI+hGrGv5I8dEwmco/00EvkzIIsR7MqrHonbD9pO2MOfFnpFntl7ecpZs+3mW+XbQZu9QCg==",
      "dev": true,
      "requires": {
        "encodeurl": "~1.0.2",
        "escape-html": "~1.0.3",
        "parseurl": "~1.3.3",
        "send": "0.17.1"
      }
    },
    "set-blocking": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/set-blocking/-/set-blocking-2.0.0.tgz",
      "integrity": "sha1-BF+XgtARrppoA93TgrJDkrPYkPc=",
      "dev": true
    },
    "set-immediate-shim": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz",
      "integrity": "sha1-SysbJ+uAip+NzEgaWOXlb1mfP2E=",
      "dev": true
    },
    "set-value": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/set-value/-/set-value-2.0.1.tgz",
      "integrity": "sha512-JxHc1weCN68wRY0fhCoXpyK55m/XPHafOmK4UWD7m2CI14GMcFypt4w/0+NV5f/ZMby2F6S2wwA7fgynh9gWSw==",
      "dev": true,
      "requires": {
        "extend-shallow": "^2.0.1",
        "is-extendable": "^0.1.1",
        "is-plain-object": "^2.0.3",
        "split-string": "^3.0.1"
      },
      "dependencies": {
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        }
      }
    },
    "setimmediate": {
      "version": "1.0.5",
      "resolved": "https://registry.npmjs.org/setimmediate/-/setimmediate-1.0.5.tgz",
      "integrity": "sha1-KQy7Iy4waULX1+qbg3Mqt4VvgoU=",
      "dev": true
    },
    "setprototypeof": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/setprototypeof/-/setprototypeof-1.1.1.tgz",
      "integrity": "sha512-JvdAWfbXeIGaZ9cILp38HntZSFSo3mWg6xGcJJsd+d4aRMOqauag1C63dJfDw7OaMYwEbHMOxEZ1lqVRYP2OAw==",
      "dev": true
    },
    "sha.js": {
      "version": "2.4.11",
      "resolved": "https://registry.npmjs.org/sha.js/-/sha.js-2.4.11.tgz",
      "integrity": "sha512-QMEp5B7cftE7APOjk5Y6xgrbWu+WkLVQwk8JNjZ8nKRciZaByEW6MubieAiToS7+dwvrjGhH8jRXz3MVd0AYqQ==",
      "dev": true,
      "requires": {
        "inherits": "^2.0.1",
        "safe-buffer": "^5.0.1"
      }
    },
    "shallow-clone": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/shallow-clone/-/shallow-clone-1.0.0.tgz",
      "integrity": "sha512-oeXreoKR/SyNJtRJMAKPDSvd28OqEwG4eR/xc856cRGBII7gX9lvAqDxusPm0846z/w/hWYjI1NpKwJ00NHzRA==",
      "dev": true,
      "requires": {
        "is-extendable": "^0.1.1",
        "kind-of": "^5.0.0",
        "mixin-object": "^2.0.1"
      },
      "dependencies": {
        "kind-of": {
          "version": "5.1.0",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-5.1.0.tgz",
          "integrity": "sha512-NGEErnH6F2vUuXDh+OlbcKW7/wOcfdRHaZ7VWtqCztfHri/++YKmP51OdWeGPuqCOba6kk2OTe5d02VmTB80Pw==",
          "dev": true
        }
      }
    },
    "shebang-command": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/shebang-command/-/shebang-command-1.2.0.tgz",
      "integrity": "sha1-RKrGW2lbAzmJaMOfNj/uXer98eo=",
      "dev": true,
      "requires": {
        "shebang-regex": "^1.0.0"
      }
    },
    "shebang-regex": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/shebang-regex/-/shebang-regex-1.0.0.tgz",
      "integrity": "sha1-2kL0l0DAtC2yypcoVxyxkMmO/qM=",
      "dev": true
    },
    "shelljs": {
      "version": "0.8.4",
      "resolved": "https://registry.npmjs.org/shelljs/-/shelljs-0.8.4.tgz",
      "integrity": "sha512-7gk3UZ9kOfPLIAbslLzyWeGiEqx9e3rxwZM0KE6EL8GlGwjym9Mrlx5/p33bWTu9YG6vcS4MBxYZDHYr5lr8BQ==",
      "dev": true,
      "requires": {
        "glob": "^7.0.0",
        "interpret": "^1.0.0",
        "rechoir": "^0.6.2"
      }
    },
    "signal-exit": {
      "version": "3.0.3",
      "resolved": "https://registry.npmjs.org/signal-exit/-/signal-exit-3.0.3.tgz",
      "integrity": "sha512-VUJ49FC8U1OxwZLxIbTTrDvLnf/6TDgxZcK8wxR8zs13xpx7xbG60ndBlhNrFi2EMuFRoeDoJO7wthSLq42EjA==",
      "dev": true
    },
    "slash": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/slash/-/slash-1.0.0.tgz",
      "integrity": "sha1-xB8vbDn8FtHNF61LXYlhFK5HDVU=",
      "dev": true
    },
    "slide": {
      "version": "1.1.6",
      "resolved": "https://registry.npmjs.org/slide/-/slide-1.1.6.tgz",
      "integrity": "sha1-VusCfWW00tzmyy4tMsTUr8nh1wc=",
      "dev": true
    },
    "snapdragon": {
      "version": "0.8.2",
      "resolved": "https://registry.npmjs.org/snapdragon/-/snapdragon-0.8.2.tgz",
      "integrity": "sha512-FtyOnWN/wCHTVXOMwvSv26d+ko5vWlIDD6zoUJ7LW8vh+ZBC8QdljveRP+crNrtBwioEUWy/4dMtbBjA4ioNlg==",
      "dev": true,
      "requires": {
        "base": "^0.11.1",
        "debug": "^2.2.0",
        "define-property": "^0.2.5",
        "extend-shallow": "^2.0.1",
        "map-cache": "^0.2.2",
        "source-map": "^0.5.6",
        "source-map-resolve": "^0.5.0",
        "use": "^3.1.0"
      },
      "dependencies": {
        "define-property": {
          "version": "0.2.5",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz",
          "integrity": "sha1-w1se+RjsPJkPmlvFe+BKrOxcgRY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^0.1.0"
          }
        },
        "extend-shallow": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/extend-shallow/-/extend-shallow-2.0.1.tgz",
          "integrity": "sha1-Ua99YUrZqfYQ6huvu5idaxxWiQ8=",
          "dev": true,
          "requires": {
            "is-extendable": "^0.1.0"
          }
        }
      }
    },
    "snapdragon-node": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/snapdragon-node/-/snapdragon-node-2.1.1.tgz",
      "integrity": "sha512-O27l4xaMYt/RSQ5TR3vpWCAB5Kb/czIcqUFOM/C4fYcLnbZUc1PkjTAMjof2pBWaSTwOUd6qUHcFGVGj7aIwnw==",
      "dev": true,
      "requires": {
        "define-property": "^1.0.0",
        "isobject": "^3.0.0",
        "snapdragon-util": "^3.0.1"
      },
      "dependencies": {
        "define-property": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-1.0.0.tgz",
          "integrity": "sha1-dp66rz9KY6rTr56NMEybvnm/sOY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^1.0.0"
          }
        },
        "is-accessor-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz",
          "integrity": "sha512-m5hnHTkcVsPfqx3AKlyttIPb7J+XykHvJP2B9bZDjlhLIoEq4XoK64Vg7boZlVWYK6LUY94dYPEE7Lh0ZkZKcQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-data-descriptor": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz",
          "integrity": "sha512-jbRXy1FmtAoCjQkVmIVYwuuqDFUbaOeDjmed1tOGPrsMhtJA4rD9tkgA0F1qJ3gRFRXcHYVkdeaP50Q5rE/jLQ==",
          "dev": true,
          "requires": {
            "kind-of": "^6.0.0"
          }
        },
        "is-descriptor": {
          "version": "1.0.2",
          "resolved": "https://registry.npmjs.org/is-descriptor/-/is-descriptor-1.0.2.tgz",
          "integrity": "sha512-2eis5WqQGV7peooDyLmNEPUrps9+SXX5c9pL3xEB+4e9HnGuDa7mB7kHxHw4CbqS9k1T2hOH3miL8n8WtiYVtg==",
          "dev": true,
          "requires": {
            "is-accessor-descriptor": "^1.0.0",
            "is-data-descriptor": "^1.0.0",
            "kind-of": "^6.0.2"
          }
        }
      }
    },
    "snapdragon-util": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/snapdragon-util/-/snapdragon-util-3.0.1.tgz",
      "integrity": "sha512-mbKkMdQKsjX4BAL4bRYTj21edOf8cN7XHdYUJEe+Zn99hVEYcMvKPct1IqNe7+AZPirn8BCDOQBHQZknqmKlZQ==",
      "dev": true,
      "requires": {
        "kind-of": "^3.2.0"
      },
      "dependencies": {
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "socket.io": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/socket.io/-/socket.io-2.1.1.tgz",
      "integrity": "sha512-rORqq9c+7W0DAK3cleWNSyfv/qKXV99hV4tZe+gGLfBECw3XEhBy7x85F3wypA9688LKjtwO9pX9L33/xQI8yA==",
      "dev": true,
      "requires": {
        "debug": "~3.1.0",
        "engine.io": "~3.2.0",
        "has-binary2": "~1.0.2",
        "socket.io-adapter": "~1.1.0",
        "socket.io-client": "2.1.1",
        "socket.io-parser": "~3.2.0"
      },
      "dependencies": {
        "debug": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
          "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "socket.io-adapter": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/socket.io-adapter/-/socket.io-adapter-1.1.2.tgz",
      "integrity": "sha512-WzZRUj1kUjrTIrUKpZLEzFZ1OLj5FwLlAFQs9kuZJzJi5DKdU7FsWc36SNmA8iDOtwBQyT8FkrriRM8vXLYz8g==",
      "dev": true
    },
    "socket.io-client": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/socket.io-client/-/socket.io-client-2.1.1.tgz",
      "integrity": "sha512-jxnFyhAuFxYfjqIgduQlhzqTcOEQSn+OHKVfAxWaNWa7ecP7xSNk2Dx/3UEsDcY7NcFafxvNvKPmmO7HTwTxGQ==",
      "dev": true,
      "requires": {
        "backo2": "1.0.2",
        "base64-arraybuffer": "0.1.5",
        "component-bind": "1.0.0",
        "component-emitter": "1.2.1",
        "debug": "~3.1.0",
        "engine.io-client": "~3.2.0",
        "has-binary2": "~1.0.2",
        "has-cors": "1.1.0",
        "indexof": "0.0.1",
        "object-component": "0.0.3",
        "parseqs": "0.0.5",
        "parseuri": "0.0.5",
        "socket.io-parser": "~3.2.0",
        "to-array": "0.1.4"
      },
      "dependencies": {
        "component-emitter": {
          "version": "1.2.1",
          "resolved": "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz",
          "integrity": "sha1-E3kY1teCg/ffemt8WmPhQOaUJeY=",
          "dev": true
        },
        "debug": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
          "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        }
      }
    },
    "socket.io-parser": {
      "version": "3.2.0",
      "resolved": "https://registry.npmjs.org/socket.io-parser/-/socket.io-parser-3.2.0.tgz",
      "integrity": "sha512-FYiBx7rc/KORMJlgsXysflWx/RIvtqZbyGLlHZvjfmPTPeuD/I8MaW7cfFrj5tRltICJdgwflhfZ3NVVbVLFQA==",
      "dev": true,
      "requires": {
        "component-emitter": "1.2.1",
        "debug": "~3.1.0",
        "isarray": "2.0.1"
      },
      "dependencies": {
        "component-emitter": {
          "version": "1.2.1",
          "resolved": "https://registry.npmjs.org/component-emitter/-/component-emitter-1.2.1.tgz",
          "integrity": "sha1-E3kY1teCg/ffemt8WmPhQOaUJeY=",
          "dev": true
        },
        "debug": {
          "version": "3.1.0",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz",
          "integrity": "sha512-OX8XqP7/1a9cqkxYw2yXss15f26NKWBpDXQd0/uK/KPqdQhxbPa994hnzjcE2VqQpDslf55723cKPUOGSmMY3g==",
          "dev": true,
          "requires": {
            "ms": "2.0.0"
          }
        },
        "isarray": {
          "version": "2.0.1",
          "resolved": "https://registry.npmjs.org/isarray/-/isarray-2.0.1.tgz",
          "integrity": "sha1-o32U7ZzaLVmGXJ92/llu4fM4dB4=",
          "dev": true
        }
      }
    },
    "sockjs": {
      "version": "0.3.19",
      "resolved": "https://registry.npmjs.org/sockjs/-/sockjs-0.3.19.tgz",
      "integrity": "sha512-V48klKZl8T6MzatbLlzzRNhMepEys9Y4oGFpypBFFn1gLI/QQ9HtLLyWJNbPlwGLelOVOEijUbTTJeLLI59jLw==",
      "dev": true,
      "requires": {
        "faye-websocket": "^0.10.0",
        "uuid": "^3.0.1"
      }
    },
    "sockjs-client": {
      "version": "1.1.5",
      "resolved": "https://registry.npmjs.org/sockjs-client/-/sockjs-client-1.1.5.tgz",
      "integrity": "sha1-G7fA9yIsQPQq3xT0RCy9Eml3GoM=",
      "dev": true,
      "requires": {
        "debug": "^2.6.6",
        "eventsource": "0.1.6",
        "faye-websocket": "~0.11.0",
        "inherits": "^2.0.1",
        "json3": "^3.3.2",
        "url-parse": "^1.1.8"
      },
      "dependencies": {
        "faye-websocket": {
          "version": "0.11.3",
          "resolved": "https://registry.npmjs.org/faye-websocket/-/faye-websocket-0.11.3.tgz",
          "integrity": "sha512-D2y4bovYpzziGgbHYtGCMjlJM36vAl/y+xUyn1C+FVx8szd1E+86KwVw6XvYSzOP8iMpm1X0I4xJD+QtUb36OA==",
          "dev": true,
          "requires": {
            "websocket-driver": ">=0.5.1"
          }
        }
      }
    },
    "source-list-map": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/source-list-map/-/source-list-map-2.0.1.tgz",
      "integrity": "sha512-qnQ7gVMxGNxsiL4lEuJwe/To8UnK7fAnmbGEEH8RpLouuKbeEm0lhbQVFIrNSuB+G7tVrAlVsZgETT5nljf+Iw==",
      "dev": true
    },
    "source-map": {
      "version": "0.5.7",
      "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.5.7.tgz",
      "integrity": "sha1-igOdLRAh0i0eoUyA2OpGi6LvP8w=",
      "dev": true
    },
    "source-map-loader": {
      "version": "0.2.4",
      "resolved": "https://registry.npmjs.org/source-map-loader/-/source-map-loader-0.2.4.tgz",
      "integrity": "sha512-OU6UJUty+i2JDpTItnizPrlpOIBLmQbWMuBg9q5bVtnHACqw1tn9nNwqJLbv0/00JjnJb/Ee5g5WS5vrRv7zIQ==",
      "dev": true,
      "requires": {
        "async": "^2.5.0",
        "loader-utils": "^1.1.0"
      },
      "dependencies": {
        "async": {
          "version": "2.6.3",
          "resolved": "https://registry.npmjs.org/async/-/async-2.6.3.tgz",
          "integrity": "sha512-zflvls11DCy+dQWzTW2dzuilv8Z5X/pjfmZOWba6TNIVDm+2UDaJmXSOXlasHKfNBs8oo3M0aT50fDEWfKZjXg==",
          "dev": true,
          "requires": {
            "lodash": "^4.17.14"
          }
        }
      }
    },
    "source-map-resolve": {
      "version": "0.5.3",
      "resolved": "https://registry.npmjs.org/source-map-resolve/-/source-map-resolve-0.5.3.tgz",
      "integrity": "sha512-Htz+RnsXWk5+P2slx5Jh3Q66vhQj1Cllm0zvnaY98+NFx+Dv2CF/f5O/t8x+KaNdrdIAsruNzoh/KpialbqAnw==",
      "dev": true,
      "requires": {
        "atob": "^2.1.2",
        "decode-uri-component": "^0.2.0",
        "resolve-url": "^0.2.1",
        "source-map-url": "^0.4.0",
        "urix": "^0.1.0"
      }
    },
    "source-map-support": {
      "version": "0.5.9",
      "resolved": "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.9.tgz",
      "integrity": "sha512-gR6Rw4MvUlYy83vP0vxoVNzM6t8MUXqNuRsuBmBHQDu1Fh6X015FrLdgoDKcNdkwGubozq0P4N0Q37UyFVr1EA==",
      "dev": true,
      "requires": {
        "buffer-from": "^1.0.0",
        "source-map": "^0.6.0"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "source-map-url": {
      "version": "0.4.0",
      "resolved": "https://registry.npmjs.org/source-map-url/-/source-map-url-0.4.0.tgz",
      "integrity": "sha1-PpNdfd1zYxuXZZlW1VEo6HtQhKM=",
      "dev": true
    },
    "sourcemap-codec": {
      "version": "1.4.8",
      "resolved": "https://registry.npmjs.org/sourcemap-codec/-/sourcemap-codec-1.4.8.tgz",
      "integrity": "sha512-9NykojV5Uih4lgo5So5dtw+f0JgJX30KCNI8gwhz2J9A15wD0Ml6tjHKwf6fTSa6fAdVBdZeNOs9eJ71qCk8vA==",
      "dev": true
    },
    "spdx-correct": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/spdx-correct/-/spdx-correct-3.1.0.tgz",
      "integrity": "sha512-lr2EZCctC2BNR7j7WzJ2FpDznxky1sjfxvvYEyzxNyb6lZXHODmEoJeFu4JupYlkfha1KZpJyoqiJ7pgA1qq8Q==",
      "dev": true,
      "requires": {
        "spdx-expression-parse": "^3.0.0",
        "spdx-license-ids": "^3.0.0"
      }
    },
    "spdx-exceptions": {
      "version": "2.3.0",
      "resolved": "https://registry.npmjs.org/spdx-exceptions/-/spdx-exceptions-2.3.0.tgz",
      "integrity": "sha512-/tTrYOC7PPI1nUAgx34hUpqXuyJG+DTHJTnIULG4rDygi4xu/tfgmq1e1cIRwRzwZgo4NLySi+ricLkZkw4i5A==",
      "dev": true
    },
    "spdx-expression-parse": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/spdx-expression-parse/-/spdx-expression-parse-3.0.0.tgz",
      "integrity": "sha512-Yg6D3XpRD4kkOmTpdgbUiEJFKghJH03fiC1OPll5h/0sO6neh2jqRDVHOQ4o/LMea0tgCkbMgea5ip/e+MkWyg==",
      "dev": true,
      "requires": {
        "spdx-exceptions": "^2.1.0",
        "spdx-license-ids": "^3.0.0"
      }
    },
    "spdx-license-ids": {
      "version": "3.0.5",
      "resolved": "https://registry.npmjs.org/spdx-license-ids/-/spdx-license-ids-3.0.5.tgz",
      "integrity": "sha512-J+FWzZoynJEXGphVIS+XEh3kFSjZX/1i9gFBaWQcB+/tmpe2qUsSBABpcxqxnAxFdiUFEgAX1bjYGQvIZmoz9Q==",
      "dev": true
    },
    "spdy": {
      "version": "3.4.7",
      "resolved": "https://registry.npmjs.org/spdy/-/spdy-3.4.7.tgz",
      "integrity": "sha1-Qv9B7OXMD5mjpsKKq7c/XDsDrLw=",
      "dev": true,
      "requires": {
        "debug": "^2.6.8",
        "handle-thing": "^1.2.5",
        "http-deceiver": "^1.2.7",
        "safe-buffer": "^5.0.1",
        "select-hose": "^2.0.0",
        "spdy-transport": "^2.0.18"
      }
    },
    "spdy-transport": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/spdy-transport/-/spdy-transport-2.1.1.tgz",
      "integrity": "sha512-q7D8c148escoB3Z7ySCASadkegMmUZW8Wb/Q1u0/XBgDKMO880rLQDj8Twiew/tYi7ghemKUi/whSYOwE17f5Q==",
      "dev": true,
      "requires": {
        "debug": "^2.6.8",
        "detect-node": "^2.0.3",
        "hpack.js": "^2.1.6",
        "obuf": "^1.1.1",
        "readable-stream": "^2.2.9",
        "safe-buffer": "^5.0.1",
        "wbuf": "^1.7.2"
      }
    },
    "speed-measure-webpack-plugin": {
      "version": "1.3.3",
      "resolved": "https://registry.npmjs.org/speed-measure-webpack-plugin/-/speed-measure-webpack-plugin-1.3.3.tgz",
      "integrity": "sha512-2ljD4Ch/rz2zG3HsLsnPfp23osuPBS0qPuz9sGpkNXTN1Ic4M+W9xB8l8rS8ob2cO4b1L+WTJw/0AJwWYVgcxQ==",
      "dev": true,
      "requires": {
        "chalk": "^2.0.1"
      }
    },
    "split-string": {
      "version": "3.1.0",
      "resolved": "https://registry.npmjs.org/split-string/-/split-string-3.1.0.tgz",
      "integrity": "sha512-NzNVhJDYpwceVVii8/Hu6DKfD2G+NrQHlS/V/qgv763EYudVwEcMQNxd2lh+0VrUByXN/oJkl5grOhYWvQUYiw==",
      "dev": true,
      "requires": {
        "extend-shallow": "^3.0.0"
      }
    },
    "sprintf-js": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/sprintf-js/-/sprintf-js-1.0.3.tgz",
      "integrity": "sha1-BOaSb2YolTVPPdAVIDYzuFcpfiw=",
      "dev": true
    },
    "sshpk": {
      "version": "1.16.1",
      "resolved": "https://registry.npmjs.org/sshpk/-/sshpk-1.16.1.tgz",
      "integrity": "sha512-HXXqVUq7+pcKeLqqZj6mHFUMvXtOJt1uoUx09pFW6011inTMxqI8BA8PM95myrIyyKwdnzjdFjLiE6KBPVtJIg==",
      "dev": true,
      "requires": {
        "asn1": "~0.2.3",
        "assert-plus": "^1.0.0",
        "bcrypt-pbkdf": "^1.0.0",
        "dashdash": "^1.12.0",
        "ecc-jsbn": "~0.1.1",
        "getpass": "^0.1.1",
        "jsbn": "~0.1.0",
        "safer-buffer": "^2.0.2",
        "tweetnacl": "~0.14.0"
      }
    },
    "ssri": {
      "version": "5.3.0",
      "resolved": "https://registry.npmjs.org/ssri/-/ssri-5.3.0.tgz",
      "integrity": "sha512-XRSIPqLij52MtgoQavH/x/dU1qVKtWUAAZeOHsR9c2Ddi4XerFy3mc1alf+dLJKl9EUIm/Ht+EowFkTUOA6GAQ==",
      "dev": true,
      "requires": {
        "safe-buffer": "^5.1.1"
      }
    },
    "static-extend": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/static-extend/-/static-extend-0.1.2.tgz",
      "integrity": "sha1-YICcOcv/VTNyJv1eC1IPNB8ftcY=",
      "dev": true,
      "requires": {
        "define-property": "^0.2.5",
        "object-copy": "^0.1.0"
      },
      "dependencies": {
        "define-property": {
          "version": "0.2.5",
          "resolved": "https://registry.npmjs.org/define-property/-/define-property-0.2.5.tgz",
          "integrity": "sha1-w1se+RjsPJkPmlvFe+BKrOxcgRY=",
          "dev": true,
          "requires": {
            "is-descriptor": "^0.1.0"
          }
        }
      }
    },
    "stats-webpack-plugin": {
      "version": "0.7.0",
      "resolved": "https://registry.npmjs.org/stats-webpack-plugin/-/stats-webpack-plugin-0.7.0.tgz",
      "integrity": "sha512-NT0YGhwuQ0EOX+uPhhUcI6/+1Sq/pMzNuSCBVT4GbFl/ac6I/JZefBcjlECNfAb1t3GOx5dEj1Z7x0cAxeeVLQ==",
      "dev": true,
      "requires": {
        "lodash": "^4.17.4"
      }
    },
    "statuses": {
      "version": "1.5.0",
      "resolved": "https://registry.npmjs.org/statuses/-/statuses-1.5.0.tgz",
      "integrity": "sha1-Fhx9rBd2Wf2YEfQ3cfqZOBR4Yow=",
      "dev": true
    },
    "stdout-stream": {
      "version": "1.4.1",
      "resolved": "https://registry.npmjs.org/stdout-stream/-/stdout-stream-1.4.1.tgz",
      "integrity": "sha512-j4emi03KXqJWcIeF8eIXkjMFN1Cmb8gUlDYGeBALLPo5qdyTfA9bOtl8m33lRoC+vFMkP3gl0WsDr6+gzxbbTA==",
      "dev": true,
      "optional": true,
      "requires": {
        "readable-stream": "^2.0.1"
      }
    },
    "stream-browserify": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/stream-browserify/-/stream-browserify-2.0.2.tgz",
      "integrity": "sha512-nX6hmklHs/gr2FuxYDltq8fJA1GDlxKQCz8O/IM4atRqBH8OORmBNgfvW5gG10GT/qQ9u0CzIvr2X5Pkt6ntqg==",
      "dev": true,
      "requires": {
        "inherits": "~2.0.1",
        "readable-stream": "^2.0.2"
      }
    },
    "stream-each": {
      "version": "1.2.3",
      "resolved": "https://registry.npmjs.org/stream-each/-/stream-each-1.2.3.tgz",
      "integrity": "sha512-vlMC2f8I2u/bZGqkdfLQW/13Zihpej/7PmSiMQsbYddxuTsJp8vRe2x2FvVExZg7FaOds43ROAuFJwPR4MTZLw==",
      "dev": true,
      "requires": {
        "end-of-stream": "^1.1.0",
        "stream-shift": "^1.0.0"
      }
    },
    "stream-http": {
      "version": "2.8.3",
      "resolved": "https://registry.npmjs.org/stream-http/-/stream-http-2.8.3.tgz",
      "integrity": "sha512-+TSkfINHDo4J+ZobQLWiMouQYB+UVYFttRA94FpEzzJ7ZdqcL4uUUQ7WkdkI4DSozGmgBUE/a47L+38PenXhUw==",
      "dev": true,
      "requires": {
        "builtin-status-codes": "^3.0.0",
        "inherits": "^2.0.1",
        "readable-stream": "^2.3.6",
        "to-arraybuffer": "^1.0.0",
        "xtend": "^4.0.0"
      }
    },
    "stream-shift": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/stream-shift/-/stream-shift-1.0.1.tgz",
      "integrity": "sha512-AiisoFqQ0vbGcZgQPY1cdP2I76glaVA/RauYR4G4thNFgkTqr90yXTo4LYX60Jl+sIlPNHHdGSwo01AvbKUSVQ==",
      "dev": true
    },
    "streamroller": {
      "version": "0.7.0",
      "resolved": "https://registry.npmjs.org/streamroller/-/streamroller-0.7.0.tgz",
      "integrity": "sha512-WREzfy0r0zUqp3lGO096wRuUp7ho1X6uo/7DJfTlEi0Iv/4gT7YHqXDjKC2ioVGBZtE8QzsQD9nx1nIuoZ57jQ==",
      "dev": true,
      "requires": {
        "date-format": "^1.2.0",
        "debug": "^3.1.0",
        "mkdirp": "^0.5.1",
        "readable-stream": "^2.3.0"
      },
      "dependencies": {
        "debug": {
          "version": "3.2.6",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.2.6.tgz",
          "integrity": "sha512-mel+jf7nrtEl5Pn1Qx46zARXKDpBbvzezse7p7LqINmdoIk8PYP5SySaxEmYv6TZ0JyEKA1hsCId6DIhgITtWQ==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        }
      }
    },
    "string-width": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/string-width/-/string-width-1.0.2.tgz",
      "integrity": "sha1-EYvfW4zcUaKn5w0hHgfisLmxB9M=",
      "dev": true,
      "requires": {
        "code-point-at": "^1.0.0",
        "is-fullwidth-code-point": "^1.0.0",
        "strip-ansi": "^3.0.0"
      }
    },
    "string.prototype.trimend": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/string.prototype.trimend/-/string.prototype.trimend-1.0.1.tgz",
      "integrity": "sha512-LRPxFUaTtpqYsTeNKaFOw3R4bxIzWOnbQ837QfBylo8jIxtcbK/A/sMV7Q+OAV/vWo+7s25pOE10KYSjaSO06g==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.5"
      }
    },
    "string.prototype.trimleft": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/string.prototype.trimleft/-/string.prototype.trimleft-2.1.2.tgz",
      "integrity": "sha512-gCA0tza1JBvqr3bfAIFJGqfdRTyPae82+KTnm3coDXkZN9wnuW3HjGgN386D7hfv5CHQYCI022/rJPVlqXyHSw==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.5",
        "string.prototype.trimstart": "^1.0.0"
      }
    },
    "string.prototype.trimright": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/string.prototype.trimright/-/string.prototype.trimright-2.1.2.tgz",
      "integrity": "sha512-ZNRQ7sY3KroTaYjRS6EbNiiHrOkjihL9aQE/8gfQ4DtAC/aEBRHFJa44OmoWxGGqXuJlfKkZW4WcXErGr+9ZFg==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.5",
        "string.prototype.trimend": "^1.0.0"
      }
    },
    "string.prototype.trimstart": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/string.prototype.trimstart/-/string.prototype.trimstart-1.0.1.tgz",
      "integrity": "sha512-XxZn+QpvrBI1FOcg6dIpxUPgWCPuNXvMD72aaRaUQv1eD4e/Qy8i/hFTe0BUmD60p/QA6bh1avmuPTfNjqVWRw==",
      "dev": true,
      "requires": {
        "define-properties": "^1.1.3",
        "es-abstract": "^1.17.5"
      }
    },
    "string_decoder": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/string_decoder/-/string_decoder-1.1.1.tgz",
      "integrity": "sha512-n/ShnvDi6FHbbVfviro+WojiFzv+s8MPMHBczVePfUpDJLwoLT0ht1l4YwBCbi8pJAveEEdnkHyPyTP/mzRfwg==",
      "dev": true,
      "requires": {
        "safe-buffer": "~5.1.0"
      }
    },
    "strip-ansi": {
      "version": "3.0.1",
      "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-3.0.1.tgz",
      "integrity": "sha1-ajhfuIU9lS1f8F0Oiq+UJ43GPc8=",
      "dev": true,
      "requires": {
        "ansi-regex": "^2.0.0"
      }
    },
    "strip-bom": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/strip-bom/-/strip-bom-2.0.0.tgz",
      "integrity": "sha1-YhmoVhZSBJHzV4i9vxRHqZx+aw4=",
      "dev": true,
      "optional": true,
      "requires": {
        "is-utf8": "^0.2.0"
      }
    },
    "strip-eof": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/strip-eof/-/strip-eof-1.0.0.tgz",
      "integrity": "sha1-u0P/VZim6wXYm1n80SnJgzE2Br8=",
      "dev": true
    },
    "strip-indent": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/strip-indent/-/strip-indent-1.0.1.tgz",
      "integrity": "sha1-DHlipq3vp7vUrDZkYKY4VSrhoKI=",
      "dev": true,
      "optional": true,
      "requires": {
        "get-stdin": "^4.0.1"
      }
    },
    "style-loader": {
      "version": "0.23.0",
      "resolved": "https://registry.npmjs.org/style-loader/-/style-loader-0.23.0.tgz",
      "integrity": "sha512-uCcN7XWHkqwGVt7skpInW6IGO1tG6ReyFQ1Cseh0VcN6VdcFQi62aG/2F3Y9ueA8x4IVlfaSUxpmQXQD9QrEuQ==",
      "dev": true,
      "requires": {
        "loader-utils": "^1.1.0",
        "schema-utils": "^0.4.5"
      },
      "dependencies": {
        "schema-utils": {
          "version": "0.4.7",
          "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-0.4.7.tgz",
          "integrity": "sha512-v/iwU6wvwGK8HbU9yi3/nhGzP0yGSuhQMzL6ySiec1FSrZZDkhm4noOSWzrNFo/jEc+SJY6jRTwuwbSXJPDUnQ==",
          "dev": true,
          "requires": {
            "ajv": "^6.1.0",
            "ajv-keywords": "^3.1.0"
          }
        }
      }
    },
    "stylus": {
      "version": "0.54.5",
      "resolved": "https://registry.npmjs.org/stylus/-/stylus-0.54.5.tgz",
      "integrity": "sha1-QrlWCTHKcJDOhRWnmLqeaqPW3Hk=",
      "dev": true,
      "requires": {
        "css-parse": "1.7.x",
        "debug": "*",
        "glob": "7.0.x",
        "mkdirp": "0.5.x",
        "sax": "0.5.x",
        "source-map": "0.1.x"
      },
      "dependencies": {
        "glob": {
          "version": "7.0.6",
          "resolved": "https://registry.npmjs.org/glob/-/glob-7.0.6.tgz",
          "integrity": "sha1-IRuvr0nlJbjNkyYNFKsTYVKz9Xo=",
          "dev": true,
          "requires": {
            "fs.realpath": "^1.0.0",
            "inflight": "^1.0.4",
            "inherits": "2",
            "minimatch": "^3.0.2",
            "once": "^1.3.0",
            "path-is-absolute": "^1.0.0"
          }
        },
        "sax": {
          "version": "0.5.8",
          "resolved": "https://registry.npmjs.org/sax/-/sax-0.5.8.tgz",
          "integrity": "sha1-1HLbIo6zMcJQaw6MFVJK25OdEsE=",
          "dev": true
        },
        "source-map": {
          "version": "0.1.43",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.1.43.tgz",
          "integrity": "sha1-wkvBRspRfBRx9drL4lcbK3+eM0Y=",
          "dev": true,
          "requires": {
            "amdefine": ">=0.0.4"
          }
        }
      }
    },
    "stylus-loader": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/stylus-loader/-/stylus-loader-3.0.2.tgz",
      "integrity": "sha512-+VomPdZ6a0razP+zinir61yZgpw2NfljeSsdUF5kJuEzlo3khXhY19Fn6l8QQz1GRJGtMCo8nG5C04ePyV7SUA==",
      "dev": true,
      "requires": {
        "loader-utils": "^1.0.2",
        "lodash.clonedeep": "^4.5.0",
        "when": "~3.6.x"
      }
    },
    "supports-color": {
      "version": "5.5.0",
      "resolved": "https://registry.npmjs.org/supports-color/-/supports-color-5.5.0.tgz",
      "integrity": "sha512-QjVjwdXIt408MIiAqCX4oUKsgU2EqAGzs2Ppkm4aQYbjm+ZEWEcW4SfFNTr4uMNZma0ey4f5lgLrkB0aX0QMow==",
      "dev": true,
      "requires": {
        "has-flag": "^3.0.0"
      }
    },
    "symbol-observable": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/symbol-observable/-/symbol-observable-1.2.0.tgz",
      "integrity": "sha512-e900nM8RRtGhlV36KGEU9k65K3mPb1WV70OdjfxlG2EAuM1noi/E/BaW/uMhL7bPEssK8QV57vN3esixjUvcXQ==",
      "dev": true
    },
    "tapable": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/tapable/-/tapable-1.1.3.tgz",
      "integrity": "sha512-4WK/bYZmj8xLr+HUCODHGF1ZFzsYffasLUgEiMBY4fgtltdO6B4WJtlSbPaDTLpYTcGVwM2qLnFTICEcNxs3kA==",
      "dev": true
    },
    "tar": {
      "version": "2.2.2",
      "resolved": "https://registry.npmjs.org/tar/-/tar-2.2.2.tgz",
      "integrity": "sha512-FCEhQ/4rE1zYv9rYXJw/msRqsnmlje5jHP6huWeBZ704jUTy02c5AZyWujpMR1ax6mVw9NyJMfuK2CMDWVIfgA==",
      "dev": true,
      "optional": true,
      "requires": {
        "block-stream": "*",
        "fstream": "^1.0.12",
        "inherits": "2"
      }
    },
    "terser": {
      "version": "3.17.0",
      "resolved": "https://registry.npmjs.org/terser/-/terser-3.17.0.tgz",
      "integrity": "sha512-/FQzzPJmCpjAH9Xvk2paiWrFq+5M6aVOf+2KRbwhByISDX/EujxsK+BAvrhb6H+2rtrLCHK9N01wO014vrIwVQ==",
      "dev": true,
      "requires": {
        "commander": "^2.19.0",
        "source-map": "~0.6.1",
        "source-map-support": "~0.5.10"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        },
        "source-map-support": {
          "version": "0.5.19",
          "resolved": "https://registry.npmjs.org/source-map-support/-/source-map-support-0.5.19.tgz",
          "integrity": "sha512-Wonm7zOCIJzBGQdB+thsPar0kYuCIzYvxZwlBa87yi/Mdjv7Tip2cyVbLj5o0cFPN4EVkuTwb3GDDyUx2DGnGw==",
          "dev": true,
          "requires": {
            "buffer-from": "^1.0.0",
            "source-map": "^0.6.0"
          }
        }
      }
    },
    "terser-webpack-plugin": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/terser-webpack-plugin/-/terser-webpack-plugin-1.1.0.tgz",
      "integrity": "sha512-61lV0DSxMAZ8AyZG7/A4a3UPlrbOBo8NIQ4tJzLPAdGOQ+yoNC7l5ijEow27lBAL2humer01KLS6bGIMYQxKoA==",
      "dev": true,
      "requires": {
        "cacache": "^11.0.2",
        "find-cache-dir": "^2.0.0",
        "schema-utils": "^1.0.0",
        "serialize-javascript": "^1.4.0",
        "source-map": "^0.6.1",
        "terser": "^3.8.1",
        "webpack-sources": "^1.1.0",
        "worker-farm": "^1.5.2"
      },
      "dependencies": {
        "cacache": {
          "version": "11.3.3",
          "resolved": "https://registry.npmjs.org/cacache/-/cacache-11.3.3.tgz",
          "integrity": "sha512-p8WcneCytvzPxhDvYp31PD039vi77I12W+/KfR9S8AZbaiARFBCpsPJS+9uhWfeBfeAtW7o/4vt3MUqLkbY6nA==",
          "dev": true,
          "requires": {
            "bluebird": "^3.5.5",
            "chownr": "^1.1.1",
            "figgy-pudding": "^3.5.1",
            "glob": "^7.1.4",
            "graceful-fs": "^4.1.15",
            "lru-cache": "^5.1.1",
            "mississippi": "^3.0.0",
            "mkdirp": "^0.5.1",
            "move-concurrently": "^1.0.1",
            "promise-inflight": "^1.0.1",
            "rimraf": "^2.6.3",
            "ssri": "^6.0.1",
            "unique-filename": "^1.1.1",
            "y18n": "^4.0.0"
          }
        },
        "find-cache-dir": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/find-cache-dir/-/find-cache-dir-2.1.0.tgz",
          "integrity": "sha512-Tq6PixE0w/VMFfCgbONnkiQIVol/JJL7nRMi20fqzA4NRs9AfeqMGeRdPi3wIhYkxjeBaWh2rxwapn5Tu3IqOQ==",
          "dev": true,
          "requires": {
            "commondir": "^1.0.1",
            "make-dir": "^2.0.0",
            "pkg-dir": "^3.0.0"
          }
        },
        "find-up": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz",
          "integrity": "sha512-1yD6RmLI1XBfxugvORwlck6f75tYL+iR0jqwsOrOxMZyGYqUuDhJ0l4AXdO1iX/FTs9cBAMEk1gWSEx1kSbylg==",
          "dev": true,
          "requires": {
            "locate-path": "^3.0.0"
          }
        },
        "locate-path": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz",
          "integrity": "sha512-7AO748wWnIhNqAuaty2ZWHkQHRSNfPVIsPIfwEOWO22AmaoVrWavlOcMR5nzTLNYvp36X220/maaRsrec1G65A==",
          "dev": true,
          "requires": {
            "p-locate": "^3.0.0",
            "path-exists": "^3.0.0"
          }
        },
        "lru-cache": {
          "version": "5.1.1",
          "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-5.1.1.tgz",
          "integrity": "sha512-KpNARQA3Iwv+jTA0utUVVbrh+Jlrr1Fv0e56GGzAFOXN7dk/FviaDW8LHmK52DlcH4WP2n6gI8vN1aesBFgo9w==",
          "dev": true,
          "requires": {
            "yallist": "^3.0.2"
          }
        },
        "make-dir": {
          "version": "2.1.0",
          "resolved": "https://registry.npmjs.org/make-dir/-/make-dir-2.1.0.tgz",
          "integrity": "sha512-LS9X+dc8KLxXCb8dni79fLIIUA5VyZoyjSMCwTluaXA0o27cCK0bhXkpgw+sTXVpPy/lSO57ilRixqk0vDmtRA==",
          "dev": true,
          "requires": {
            "pify": "^4.0.1",
            "semver": "^5.6.0"
          }
        },
        "mississippi": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/mississippi/-/mississippi-3.0.0.tgz",
          "integrity": "sha512-x471SsVjUtBRtcvd4BzKE9kFC+/2TeWgKCgw0bZcw1b9l2X3QX5vCWgF+KaZaYm87Ss//rHnWryupDrgLvmSkA==",
          "dev": true,
          "requires": {
            "concat-stream": "^1.5.0",
            "duplexify": "^3.4.2",
            "end-of-stream": "^1.1.0",
            "flush-write-stream": "^1.0.0",
            "from2": "^2.1.0",
            "parallel-transform": "^1.1.0",
            "pump": "^3.0.0",
            "pumpify": "^1.3.3",
            "stream-each": "^1.1.0",
            "through2": "^2.0.0"
          }
        },
        "p-limit": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz",
          "integrity": "sha512-//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==",
          "dev": true,
          "requires": {
            "p-try": "^2.0.0"
          }
        },
        "p-locate": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz",
          "integrity": "sha512-x+12w/To+4GFfgJhBEpiDcLozRJGegY+Ei7/z0tSLkMmxGZNybVMSfWj9aJn8Z5Fc7dBUNJOOVgPv2H7IwulSQ==",
          "dev": true,
          "requires": {
            "p-limit": "^2.0.0"
          }
        },
        "p-try": {
          "version": "2.2.0",
          "resolved": "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz",
          "integrity": "sha512-R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==",
          "dev": true
        },
        "pify": {
          "version": "4.0.1",
          "resolved": "https://registry.npmjs.org/pify/-/pify-4.0.1.tgz",
          "integrity": "sha512-uB80kBFb/tfd68bVleG9T5GGsGPjJrLAUpR5PZIrhBnIaRTQRjqdJSsIKkOP6OAIFbj7GOrcudc5pNjZ+geV2g==",
          "dev": true
        },
        "pkg-dir": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/pkg-dir/-/pkg-dir-3.0.0.tgz",
          "integrity": "sha512-/E57AYkoeQ25qkxMj5PBOVgF8Kiu/h7cYS30Z5+R7WaiCCBfLq58ZI/dSeaEKb9WVJV5n/03QwrN3IeWIFllvw==",
          "dev": true,
          "requires": {
            "find-up": "^3.0.0"
          }
        },
        "pump": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/pump/-/pump-3.0.0.tgz",
          "integrity": "sha512-LwZy+p3SFs1Pytd/jYct4wpv49HiYCqd9Rlc5ZVdk0V+8Yzv6jR5Blk3TRmPL1ft69TxP0IMZGJ+WPFU2BFhww==",
          "dev": true,
          "requires": {
            "end-of-stream": "^1.1.0",
            "once": "^1.3.1"
          }
        },
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        },
        "ssri": {
          "version": "6.0.1",
          "resolved": "https://registry.npmjs.org/ssri/-/ssri-6.0.1.tgz",
          "integrity": "sha512-3Wge10hNcT1Kur4PDFwEieXSCMCJs/7WvSACcrMYrNp+b8kDL1/0wJch5Ni2WrtwEa2IO8OsVfeKIciKCDx/QA==",
          "dev": true,
          "requires": {
            "figgy-pudding": "^3.5.1"
          }
        },
        "yallist": {
          "version": "3.1.1",
          "resolved": "https://registry.npmjs.org/yallist/-/yallist-3.1.1.tgz",
          "integrity": "sha512-a4UGQaWPH59mOXUYnAG2ewncQS4i4F43Tv3JoAM+s2VDAmS9NsK8GpDMLrCHPksFT7h3K6TOoUNn2pb7RoXx4g==",
          "dev": true
        }
      }
    },
    "through": {
      "version": "2.3.8",
      "resolved": "https://registry.npmjs.org/through/-/through-2.3.8.tgz",
      "integrity": "sha1-DdTJ/6q8NXlgsbckEV1+Doai4fU=",
      "dev": true
    },
    "through2": {
      "version": "2.0.5",
      "resolved": "https://registry.npmjs.org/through2/-/through2-2.0.5.tgz",
      "integrity": "sha512-/mrRod8xqpA+IHSLyGCQ2s8SPHiCDEeQJSep1jqLYeEUClOFG2Qsh+4FU6G9VeqpZnGW/Su8LQGc4YKni5rYSQ==",
      "dev": true,
      "requires": {
        "readable-stream": "~2.3.6",
        "xtend": "~4.0.1"
      }
    },
    "thunky": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/thunky/-/thunky-1.1.0.tgz",
      "integrity": "sha512-eHY7nBftgThBqOyHGVN+l8gF0BucP09fMo0oO/Lb0w1OF80dJv+lDVpXG60WMQvkcxAkNybKsrEIE3ZtKGmPrA==",
      "dev": true
    },
    "timers-browserify": {
      "version": "2.0.11",
      "resolved": "https://registry.npmjs.org/timers-browserify/-/timers-browserify-2.0.11.tgz",
      "integrity": "sha512-60aV6sgJ5YEbzUdn9c8kYGIqOubPoUdqQCul3SBAsRCZ40s6Y5cMcrW4dt3/k/EsbLVJNl9n6Vz3fTc+k2GeKQ==",
      "dev": true,
      "requires": {
        "setimmediate": "^1.0.4"
      }
    },
    "tmp": {
      "version": "0.0.33",
      "resolved": "https://registry.npmjs.org/tmp/-/tmp-0.0.33.tgz",
      "integrity": "sha512-jRCJlojKnZ3addtTOjdIqoRuPEKBvNXcGYqzO6zWZX8KfKEpnGY5jfggJQ3EjKuu8D4bJRr0y+cYJFmYbImXGw==",
      "dev": true,
      "requires": {
        "os-tmpdir": "~1.0.2"
      }
    },
    "to-array": {
      "version": "0.1.4",
      "resolved": "https://registry.npmjs.org/to-array/-/to-array-0.1.4.tgz",
      "integrity": "sha1-F+bBH3PdTz10zaek/zI46a2b+JA=",
      "dev": true
    },
    "to-arraybuffer": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz",
      "integrity": "sha1-fSKbH8xjfkZsoIEYCDanqr/4P0M=",
      "dev": true
    },
    "to-fast-properties": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/to-fast-properties/-/to-fast-properties-1.0.3.tgz",
      "integrity": "sha1-uDVx+k2MJbguIxsG46MFXeTKGkc=",
      "dev": true
    },
    "to-object-path": {
      "version": "0.3.0",
      "resolved": "https://registry.npmjs.org/to-object-path/-/to-object-path-0.3.0.tgz",
      "integrity": "sha1-KXWIt7Dn4KwI4E5nL4XB9JmeF68=",
      "dev": true,
      "requires": {
        "kind-of": "^3.0.2"
      },
      "dependencies": {
        "kind-of": {
          "version": "3.2.2",
          "resolved": "https://registry.npmjs.org/kind-of/-/kind-of-3.2.2.tgz",
          "integrity": "sha1-MeohpzS6ubuw8yRm2JOupR5KPGQ=",
          "dev": true,
          "requires": {
            "is-buffer": "^1.1.5"
          }
        }
      }
    },
    "to-regex": {
      "version": "3.0.2",
      "resolved": "https://registry.npmjs.org/to-regex/-/to-regex-3.0.2.tgz",
      "integrity": "sha512-FWtleNAtZ/Ki2qtqej2CXTOayOH9bHDQF+Q48VpWyDXjbYxA4Yz8iDB31zXOBUlOHHKidDbqGVrTUvQMPmBGBw==",
      "dev": true,
      "requires": {
        "define-property": "^2.0.2",
        "extend-shallow": "^3.0.2",
        "regex-not": "^1.0.2",
        "safe-regex": "^1.1.0"
      }
    },
    "to-regex-range": {
      "version": "2.1.1",
      "resolved": "https://registry.npmjs.org/to-regex-range/-/to-regex-range-2.1.1.tgz",
      "integrity": "sha1-fIDBe53+vlmeJzZ+DU3VWQFB2zg=",
      "dev": true,
      "requires": {
        "is-number": "^3.0.0",
        "repeat-string": "^1.6.1"
      }
    },
    "toidentifier": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/toidentifier/-/toidentifier-1.0.0.tgz",
      "integrity": "sha512-yaOH/Pk/VEhBWWTlhI+qXxDFXlejDGcQipMlyxda9nthulaxLZUNcUqFxokp0vcYnvteJln5FNQDRrxj3YcbVw==",
      "dev": true
    },
    "tough-cookie": {
      "version": "2.5.0",
      "resolved": "https://registry.npmjs.org/tough-cookie/-/tough-cookie-2.5.0.tgz",
      "integrity": "sha512-nlLsUzgm1kfLXSXfRZMc1KLAugd4hqJHDTvc2hDIwS3mZAfMEuMbc03SujMF+GEcpaX/qboeycw6iO8JwVv2+g==",
      "dev": true,
      "requires": {
        "psl": "^1.1.28",
        "punycode": "^2.1.1"
      }
    },
    "tree-kill": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/tree-kill/-/tree-kill-1.2.0.tgz",
      "integrity": "sha512-DlX6dR0lOIRDFxI0mjL9IYg6OTncLm/Zt+JiBhE5OlFcAR8yc9S7FFXU9so0oda47frdM/JFsk7UjNt9vscKcg==",
      "dev": true
    },
    "trim-newlines": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/trim-newlines/-/trim-newlines-1.0.0.tgz",
      "integrity": "sha1-WIeWa7WCpFA6QetST301ARgVphM=",
      "dev": true,
      "optional": true
    },
    "trim-right": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/trim-right/-/trim-right-1.0.1.tgz",
      "integrity": "sha1-yy4SAwZ+DI3h9hQJS5/kVwTqYAM=",
      "dev": true
    },
    "true-case-path": {
      "version": "1.0.3",
      "resolved": "https://registry.npmjs.org/true-case-path/-/true-case-path-1.0.3.tgz",
      "integrity": "sha512-m6s2OdQe5wgpFMC+pAJ+q9djG82O2jcHPOI6RNg1yy9rCYR+WD6Nbpl32fDpfC56nirdRy+opFa/Vk7HYhqaew==",
      "dev": true,
      "optional": true,
      "requires": {
        "glob": "^7.1.2"
      }
    },
    "ts-node": {
      "version": "7.0.1",
      "resolved": "https://registry.npmjs.org/ts-node/-/ts-node-7.0.1.tgz",
      "integrity": "sha512-BVwVbPJRspzNh2yfslyT1PSbl5uIk03EZlb493RKHN4qej/D06n1cEhjlOJG69oFsE7OT8XjpTUcYf6pKTLMhw==",
      "dev": true,
      "requires": {
        "arrify": "^1.0.0",
        "buffer-from": "^1.1.0",
        "diff": "^3.1.0",
        "make-error": "^1.1.1",
        "minimist": "^1.2.0",
        "mkdirp": "^0.5.1",
        "source-map-support": "^0.5.6",
        "yn": "^2.0.0"
      }
    },
    "tslib": {
      "version": "1.12.0",
      "resolved": "https://registry.npmjs.org/tslib/-/tslib-1.12.0.tgz",
      "integrity": "sha512-5rxCQkP0kytf4H1T4xz1imjxaUUPMvc5aWp0rJ/VMIN7ClRiH1FwFvBt8wOeMasp/epeUnmSW6CixSIePtiLqA=="
    },
    "tslint": {
      "version": "5.11.0",
      "resolved": "https://registry.npmjs.org/tslint/-/tslint-5.11.0.tgz",
      "integrity": "sha1-mPMMAurjzecAYgHkwzywi0hYHu0=",
      "dev": true,
      "requires": {
        "babel-code-frame": "^6.22.0",
        "builtin-modules": "^1.1.1",
        "chalk": "^2.3.0",
        "commander": "^2.12.1",
        "diff": "^3.2.0",
        "glob": "^7.1.1",
        "js-yaml": "^3.7.0",
        "minimatch": "^3.0.4",
        "resolve": "^1.3.2",
        "semver": "^5.3.0",
        "tslib": "^1.8.0",
        "tsutils": "^2.27.2"
      },
      "dependencies": {
        "resolve": {
          "version": "1.17.0",
          "resolved": "https://registry.npmjs.org/resolve/-/resolve-1.17.0.tgz",
          "integrity": "sha512-ic+7JYiV8Vi2yzQGFWOkiZD5Z9z7O2Zhm9XMaTxdJExKasieFCr+yXZ/WmXsckHiKl12ar0y6XiXDx3m4RHn1w==",
          "dev": true,
          "requires": {
            "path-parse": "^1.0.6"
          }
        }
      }
    },
    "tsutils": {
      "version": "2.29.0",
      "resolved": "https://registry.npmjs.org/tsutils/-/tsutils-2.29.0.tgz",
      "integrity": "sha512-g5JVHCIJwzfISaXpXE1qvNalca5Jwob6FjI4AoPlqMusJ6ftFE7IkkFoMhVLRgK+4Kx3gkzb8UZK5t5yTTvEmA==",
      "dev": true,
      "requires": {
        "tslib": "^1.8.1"
      }
    },
    "tty-browserify": {
      "version": "0.0.0",
      "resolved": "https://registry.npmjs.org/tty-browserify/-/tty-browserify-0.0.0.tgz",
      "integrity": "sha1-oVe6QC2iTpv5V/mqadUk7tQpAaY=",
      "dev": true
    },
    "tunnel-agent": {
      "version": "0.6.0",
      "resolved": "https://registry.npmjs.org/tunnel-agent/-/tunnel-agent-0.6.0.tgz",
      "integrity": "sha1-J6XeoGs2sEoKmWZ3SykIaPD8QP0=",
      "dev": true,
      "requires": {
        "safe-buffer": "^5.0.1"
      }
    },
    "tweetnacl": {
      "version": "0.14.5",
      "resolved": "https://registry.npmjs.org/tweetnacl/-/tweetnacl-0.14.5.tgz",
      "integrity": "sha1-WuaBd/GS1EViadEIr6k/+HQ/T2Q=",
      "dev": true
    },
    "type-check": {
      "version": "0.3.2",
      "resolved": "https://registry.npmjs.org/type-check/-/type-check-0.3.2.tgz",
      "integrity": "sha1-WITKtRLPHTVeP7eE8wgEsrUg23I=",
      "dev": true,
      "requires": {
        "prelude-ls": "~1.1.2"
      }
    },
    "type-is": {
      "version": "1.6.18",
      "resolved": "https://registry.npmjs.org/type-is/-/type-is-1.6.18.tgz",
      "integrity": "sha512-TkRKr9sUTxEH8MdfuCSP7VizJyzRNMjj2J2do2Jr3Kym598JVdEksuzPQCnlFPW4ky9Q+iA+ma9BGm06XQBy8g==",
      "dev": true,
      "requires": {
        "media-typer": "0.3.0",
        "mime-types": "~2.1.24"
      }
    },
    "typedarray": {
      "version": "0.0.6",
      "resolved": "https://registry.npmjs.org/typedarray/-/typedarray-0.0.6.tgz",
      "integrity": "sha1-hnrHTjhkGHsdPUfZlqeOxciDB3c=",
      "dev": true
    },
    "typescript": {
      "version": "3.1.6",
      "resolved": "https://registry.npmjs.org/typescript/-/typescript-3.1.6.tgz",
      "integrity": "sha512-tDMYfVtvpb96msS1lDX9MEdHrW4yOuZ4Kdc4Him9oU796XldPYF/t2+uKoX0BBa0hXXwDlqYQbXY5Rzjzc5hBA==",
      "dev": true
    },
    "uglify-js": {
      "version": "3.9.2",
      "resolved": "https://registry.npmjs.org/uglify-js/-/uglify-js-3.9.2.tgz",
      "integrity": "sha512-zGVwKslUAD/EeqOrD1nQaBmXIHl1Vw371we8cvS8I6mYK9rmgX5tv8AAeJdfsQ3Kk5mGax2SVV/AizxdNGhl7Q==",
      "dev": true,
      "optional": true,
      "requires": {
        "commander": "~2.20.3"
      }
    },
    "uglifyjs-webpack-plugin": {
      "version": "1.3.0",
      "resolved": "https://registry.npmjs.org/uglifyjs-webpack-plugin/-/uglifyjs-webpack-plugin-1.3.0.tgz",
      "integrity": "sha512-ovHIch0AMlxjD/97j9AYovZxG5wnHOPkL7T1GKochBADp/Zwc44pEWNqpKl1Loupp1WhFg7SlYmHZRUfdAacgw==",
      "dev": true,
      "requires": {
        "cacache": "^10.0.4",
        "find-cache-dir": "^1.0.0",
        "schema-utils": "^0.4.5",
        "serialize-javascript": "^1.4.0",
        "source-map": "^0.6.1",
        "uglify-es": "^3.3.4",
        "webpack-sources": "^1.1.0",
        "worker-farm": "^1.5.2"
      },
      "dependencies": {
        "commander": {
          "version": "2.13.0",
          "resolved": "https://registry.npmjs.org/commander/-/commander-2.13.0.tgz",
          "integrity": "sha512-MVuS359B+YzaWqjCL/c+22gfryv+mCBPHAv3zyVI2GN8EY6IRP8VwtasXn8jyyhvvq84R4ImN1OKRtcbIasjYA==",
          "dev": true
        },
        "schema-utils": {
          "version": "0.4.7",
          "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-0.4.7.tgz",
          "integrity": "sha512-v/iwU6wvwGK8HbU9yi3/nhGzP0yGSuhQMzL6ySiec1FSrZZDkhm4noOSWzrNFo/jEc+SJY6jRTwuwbSXJPDUnQ==",
          "dev": true,
          "requires": {
            "ajv": "^6.1.0",
            "ajv-keywords": "^3.1.0"
          }
        },
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        },
        "uglify-es": {
          "version": "3.3.9",
          "resolved": "https://registry.npmjs.org/uglify-es/-/uglify-es-3.3.9.tgz",
          "integrity": "sha512-r+MU0rfv4L/0eeW3xZrd16t4NZfK8Ld4SWVglYBb7ez5uXFWHuVRs6xCTrf1yirs9a4j4Y27nn7SRfO6v67XsQ==",
          "dev": true,
          "requires": {
            "commander": "~2.13.0",
            "source-map": "~0.6.1"
          }
        }
      }
    },
    "ultron": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/ultron/-/ultron-1.1.1.tgz",
      "integrity": "sha512-UIEXBNeYmKptWH6z8ZnqTeS8fV74zG0/eRU9VGkpzz+LIJNs8W/zM/L+7ctCkRrgbNnnR0xxw4bKOr0cW0N0Og==",
      "dev": true
    },
    "unicode-canonical-property-names-ecmascript": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/unicode-canonical-property-names-ecmascript/-/unicode-canonical-property-names-ecmascript-1.0.4.tgz",
      "integrity": "sha512-jDrNnXWHd4oHiTZnx/ZG7gtUTVp+gCcTTKr8L0HjlwphROEW3+Him+IpvC+xcJEFegapiMZyZe02CyuOnRmbnQ==",
      "dev": true
    },
    "unicode-match-property-ecmascript": {
      "version": "1.0.4",
      "resolved": "https://registry.npmjs.org/unicode-match-property-ecmascript/-/unicode-match-property-ecmascript-1.0.4.tgz",
      "integrity": "sha512-L4Qoh15vTfntsn4P1zqnHulG0LdXgjSO035fEpdtp6YxXhMT51Q6vgM5lYdG/5X3MjS+k/Y9Xw4SFCY9IkR0rg==",
      "dev": true,
      "requires": {
        "unicode-canonical-property-names-ecmascript": "^1.0.4",
        "unicode-property-aliases-ecmascript": "^1.0.4"
      }
    },
    "unicode-match-property-value-ecmascript": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/unicode-match-property-value-ecmascript/-/unicode-match-property-value-ecmascript-1.2.0.tgz",
      "integrity": "sha512-wjuQHGQVofmSJv1uVISKLE5zO2rNGzM/KCYZch/QQvez7C1hUhBIuZ701fYXExuufJFMPhv2SyL8CyoIfMLbIQ==",
      "dev": true
    },
    "unicode-property-aliases-ecmascript": {
      "version": "1.1.0",
      "resolved": "https://registry.npmjs.org/unicode-property-aliases-ecmascript/-/unicode-property-aliases-ecmascript-1.1.0.tgz",
      "integrity": "sha512-PqSoPh/pWetQ2phoj5RLiaqIk4kCNwoV3CI+LfGmWLKI3rE3kl1h59XpX2BjgDrmbxD9ARtQobPGU1SguCYuQg==",
      "dev": true
    },
    "union-value": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/union-value/-/union-value-1.0.1.tgz",
      "integrity": "sha512-tJfXmxMeWYnczCVs7XAEvIV7ieppALdyepWMkHkwciRpZraG/xwT+s2JN8+pr1+8jCRf80FFzvr+MpQeeoF4Xg==",
      "dev": true,
      "requires": {
        "arr-union": "^3.1.0",
        "get-value": "^2.0.6",
        "is-extendable": "^0.1.1",
        "set-value": "^2.0.1"
      }
    },
    "unique-filename": {
      "version": "1.1.1",
      "resolved": "https://registry.npmjs.org/unique-filename/-/unique-filename-1.1.1.tgz",
      "integrity": "sha512-Vmp0jIp2ln35UTXuryvjzkjGdRyf9b2lTXuSYUiPmzRcl3FDtYqAwOnTJkAngD9SWhnoJzDbTKwaOrZ+STtxNQ==",
      "dev": true,
      "requires": {
        "unique-slug": "^2.0.0"
      }
    },
    "unique-slug": {
      "version": "2.0.2",
      "resolved": "https://registry.npmjs.org/unique-slug/-/unique-slug-2.0.2.tgz",
      "integrity": "sha512-zoWr9ObaxALD3DOPfjPSqxt4fnZiWblxHIgeWqW8x7UqDzEtHEQLzji2cuJYQFCU6KmoJikOYAZlrTHHebjx2w==",
      "dev": true,
      "requires": {
        "imurmurhash": "^0.1.4"
      }
    },
    "unpipe": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/unpipe/-/unpipe-1.0.0.tgz",
      "integrity": "sha1-sr9O6FFKrmFltIF4KdIbLvSZBOw=",
      "dev": true
    },
    "unset-value": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/unset-value/-/unset-value-1.0.0.tgz",
      "integrity": "sha1-g3aHP30jNRef+x5vw6jtDfyKtVk=",
      "dev": true,
      "requires": {
        "has-value": "^0.3.1",
        "isobject": "^3.0.0"
      },
      "dependencies": {
        "has-value": {
          "version": "0.3.1",
          "resolved": "https://registry.npmjs.org/has-value/-/has-value-0.3.1.tgz",
          "integrity": "sha1-ex9YutpiyoJ+wKIHgCVlSEWZXh8=",
          "dev": true,
          "requires": {
            "get-value": "^2.0.3",
            "has-values": "^0.1.4",
            "isobject": "^2.0.0"
          },
          "dependencies": {
            "isobject": {
              "version": "2.1.0",
              "resolved": "https://registry.npmjs.org/isobject/-/isobject-2.1.0.tgz",
              "integrity": "sha1-8GVWEJaj8dou9GJy+BXIQNh+DIk=",
              "dev": true,
              "requires": {
                "isarray": "1.0.0"
              }
            }
          }
        },
        "has-values": {
          "version": "0.1.4",
          "resolved": "https://registry.npmjs.org/has-values/-/has-values-0.1.4.tgz",
          "integrity": "sha1-bWHeldkd/Km5oCCJrThL/49it3E=",
          "dev": true
        }
      }
    },
    "upath": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/upath/-/upath-1.2.0.tgz",
      "integrity": "sha512-aZwGpamFO61g3OlfT7OQCHqhGnW43ieH9WZeP7QxN/G/jS4jfqUkZxoryvJgVPEcrl5NL/ggHsSmLMHuH64Lhg==",
      "dev": true
    },
    "uri-js": {
      "version": "4.2.2",
      "resolved": "https://registry.npmjs.org/uri-js/-/uri-js-4.2.2.tgz",
      "integrity": "sha512-KY9Frmirql91X2Qgjry0Wd4Y+YTdrdZheS8TFwvkbLWf/G5KNJDCh6pKL5OZctEW4+0Baa5idK2ZQuELRwPznQ==",
      "dev": true,
      "requires": {
        "punycode": "^2.1.0"
      }
    },
    "urix": {
      "version": "0.1.0",
      "resolved": "https://registry.npmjs.org/urix/-/urix-0.1.0.tgz",
      "integrity": "sha1-2pN/emLiH+wf0Y1Js1wpNQZ6bHI=",
      "dev": true
    },
    "url": {
      "version": "0.11.0",
      "resolved": "https://registry.npmjs.org/url/-/url-0.11.0.tgz",
      "integrity": "sha1-ODjpfPxgUh63PFJajlW/3Z4uKPE=",
      "dev": true,
      "requires": {
        "punycode": "1.3.2",
        "querystring": "0.2.0"
      },
      "dependencies": {
        "punycode": {
          "version": "1.3.2",
          "resolved": "https://registry.npmjs.org/punycode/-/punycode-1.3.2.tgz",
          "integrity": "sha1-llOgNvt8HuQjQvIyXM7v6jkmxI0=",
          "dev": true
        }
      }
    },
    "url-join": {
      "version": "4.0.1",
      "resolved": "https://registry.npmjs.org/url-join/-/url-join-4.0.1.tgz",
      "integrity": "sha512-jk1+QP6ZJqyOiuEI9AEWQfju/nB2Pw466kbA0LEZljHwKeMgd9WrAEgEGxjPDD2+TNbbb37rTyhEfrCXfuKXnA==",
      "dev": true
    },
    "url-parse": {
      "version": "1.4.7",
      "resolved": "https://registry.npmjs.org/url-parse/-/url-parse-1.4.7.tgz",
      "integrity": "sha512-d3uaVyzDB9tQoSXFvuSUNFibTd9zxd2bkVrDRvF5TmvWWQwqE4lgYJ5m+x1DbecWkw+LK4RNl2CU1hHuOKPVlg==",
      "dev": true,
      "requires": {
        "querystringify": "^2.1.1",
        "requires-port": "^1.0.0"
      }
    },
    "use": {
      "version": "3.1.1",
      "resolved": "https://registry.npmjs.org/use/-/use-3.1.1.tgz",
      "integrity": "sha512-cwESVXlO3url9YWlFW/TA9cshCEhtu7IKJ/p5soJ/gGpj7vbvFrAY/eIioQ6Dw23KjZhYgiIo8HOs1nQ2vr/oQ==",
      "dev": true
    },
    "useragent": {
      "version": "2.2.1",
      "resolved": "https://registry.npmjs.org/useragent/-/useragent-2.2.1.tgz",
      "integrity": "sha1-z1k+9PLRdYdei7ZY6pLhik/QbY4=",
      "dev": true,
      "requires": {
        "lru-cache": "2.2.x",
        "tmp": "0.0.x"
      },
      "dependencies": {
        "lru-cache": {
          "version": "2.2.4",
          "resolved": "https://registry.npmjs.org/lru-cache/-/lru-cache-2.2.4.tgz",
          "integrity": "sha1-bGWGGb7PFAMdDQtZSxYELOTcBj0=",
          "dev": true
        }
      }
    },
    "util": {
      "version": "0.11.1",
      "resolved": "https://registry.npmjs.org/util/-/util-0.11.1.tgz",
      "integrity": "sha512-HShAsny+zS2TZfaXxD9tYj4HQGlBezXZMZuM/S5PKLLoZkShZiGk9o5CzukI1LVHZvjdvZ2Sj1aW/Ndn2NB/HQ==",
      "dev": true,
      "requires": {
        "inherits": "2.0.3"
      },
      "dependencies": {
        "inherits": {
          "version": "2.0.3",
          "resolved": "https://registry.npmjs.org/inherits/-/inherits-2.0.3.tgz",
          "integrity": "sha1-Yzwsg+PaQqUC9SRmAiSA9CCCYd4=",
          "dev": true
        }
      }
    },
    "util-deprecate": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/util-deprecate/-/util-deprecate-1.0.2.tgz",
      "integrity": "sha1-RQ1Nyfpw3nMnYvvS1KKJgUGaDM8=",
      "dev": true
    },
    "utils-merge": {
      "version": "1.0.1",
      "resolved": "https://registry.npmjs.org/utils-merge/-/utils-merge-1.0.1.tgz",
      "integrity": "sha1-n5VxD1CiZ5R7LMwSR0HBAoQn5xM=",
      "dev": true
    },
    "uuid": {
      "version": "3.4.0",
      "resolved": "https://registry.npmjs.org/uuid/-/uuid-3.4.0.tgz",
      "integrity": "sha512-HjSDRw6gZE5JMggctHBcjVak08+KEVhSIiDzFnT9S9aegmp85S/bReBVTb4QTFaRNptJ9kuYaNhnbNEOkbKb/A==",
      "dev": true
    },
    "validate-npm-package-license": {
      "version": "3.0.4",
      "resolved": "https://registry.npmjs.org/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz",
      "integrity": "sha512-DpKm2Ui/xN7/HQKCtpZxoRWBhZ9Z0kqtygG8XCgNQ8ZlDnxuQmWhj566j8fN4Cu3/JmbhsDo7fcAJq4s9h27Ew==",
      "dev": true,
      "requires": {
        "spdx-correct": "^3.0.0",
        "spdx-expression-parse": "^3.0.0"
      }
    },
    "validate-npm-package-name": {
      "version": "3.0.0",
      "resolved": "https://registry.npmjs.org/validate-npm-package-name/-/validate-npm-package-name-3.0.0.tgz",
      "integrity": "sha1-X6kS2B630MdK/BQN5zF/DKffQ34=",
      "dev": true,
      "requires": {
        "builtins": "^1.0.3"
      }
    },
    "vary": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/vary/-/vary-1.1.2.tgz",
      "integrity": "sha1-IpnwLG3tMNSllhsLn3RSShj2NPw=",
      "dev": true
    },
    "verror": {
      "version": "1.10.0",
      "resolved": "https://registry.npmjs.org/verror/-/verror-1.10.0.tgz",
      "integrity": "sha1-OhBcoXBTr1XW4nDB+CiGguGNpAA=",
      "dev": true,
      "requires": {
        "assert-plus": "^1.0.0",
        "core-util-is": "1.0.2",
        "extsprintf": "^1.2.0"
      }
    },
    "vm-browserify": {
      "version": "1.1.2",
      "resolved": "https://registry.npmjs.org/vm-browserify/-/vm-browserify-1.1.2.tgz",
      "integrity": "sha512-2ham8XPWTONajOR0ohOKOHXkm3+gaBmGut3SRuu75xLd/RRaY6vqgh8NBYYk7+RW3u5AtzPQZG8F10LHkl0lAQ==",
      "dev": true
    },
    "void-elements": {
      "version": "2.0.1",
      "resolved": "https://registry.npmjs.org/void-elements/-/void-elements-2.0.1.tgz",
      "integrity": "sha1-wGavtYK7HLQSjWDqkjkulNXp2+w=",
      "dev": true
    },
    "watchpack": {
      "version": "1.6.1",
      "resolved": "https://registry.npmjs.org/watchpack/-/watchpack-1.6.1.tgz",
      "integrity": "sha512-+IF9hfUFOrYOOaKyfaI7h7dquUIOgyEMoQMLA7OP5FxegKA2+XdXThAZ9TU2kucfhDH7rfMHs1oPYziVGWRnZA==",
      "dev": true,
      "requires": {
        "chokidar": "^2.1.8",
        "graceful-fs": "^4.1.2",
        "neo-async": "^2.5.0"
      },
      "dependencies": {
        "chokidar": {
          "version": "2.1.8",
          "resolved": "https://registry.npmjs.org/chokidar/-/chokidar-2.1.8.tgz",
          "integrity": "sha512-ZmZUazfOzf0Nve7duiCKD23PFSCs4JPoYyccjUFF3aQkQadqBhfzhjkwBH2mNOG9cTBwhamM37EIsIkZw3nRgg==",
          "dev": true,
          "requires": {
            "anymatch": "^2.0.0",
            "async-each": "^1.0.1",
            "braces": "^2.3.2",
            "fsevents": "^1.2.7",
            "glob-parent": "^3.1.0",
            "inherits": "^2.0.3",
            "is-binary-path": "^1.0.0",
            "is-glob": "^4.0.0",
            "normalize-path": "^3.0.0",
            "path-is-absolute": "^1.0.0",
            "readdirp": "^2.2.1",
            "upath": "^1.1.1"
          }
        },
        "normalize-path": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/normalize-path/-/normalize-path-3.0.0.tgz",
          "integrity": "sha512-6eZs5Ls3WtCisHWp9S2GUy8dqkpGi4BVSz3GaqiE6ezub0512ESztXUwUB6C6IKbQkY2Pnb/mD4WYojCRwcwLA==",
          "dev": true
        }
      }
    },
    "wbuf": {
      "version": "1.7.3",
      "resolved": "https://registry.npmjs.org/wbuf/-/wbuf-1.7.3.tgz",
      "integrity": "sha512-O84QOnr0icsbFGLS0O3bI5FswxzRr8/gHwWkDlQFskhSPryQXvrTMxjxGP4+iWYoauLoBvfDpkrOauZ+0iZpDA==",
      "dev": true,
      "requires": {
        "minimalistic-assert": "^1.0.0"
      }
    },
    "webdriver-js-extender": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/webdriver-js-extender/-/webdriver-js-extender-2.1.0.tgz",
      "integrity": "sha512-lcUKrjbBfCK6MNsh7xaY2UAUmZwe+/ib03AjVOpFobX4O7+83BUveSrLfU0Qsyb1DaKJdQRbuU+kM9aZ6QUhiQ==",
      "dev": true,
      "requires": {
        "@types/selenium-webdriver": "^3.0.0",
        "selenium-webdriver": "^3.0.1"
      }
    },
    "webpack": {
      "version": "4.19.1",
      "resolved": "https://registry.npmjs.org/webpack/-/webpack-4.19.1.tgz",
      "integrity": "sha512-j7Q/5QqZRqIFXJvC0E59ipLV5Hf6lAnS3ezC3I4HMUybwEDikQBVad5d+IpPtmaQPQArvgUZLXIN6lWijHBn4g==",
      "dev": true,
      "requires": {
        "@webassemblyjs/ast": "1.7.6",
        "@webassemblyjs/helper-module-context": "1.7.6",
        "@webassemblyjs/wasm-edit": "1.7.6",
        "@webassemblyjs/wasm-parser": "1.7.6",
        "acorn": "^5.6.2",
        "acorn-dynamic-import": "^3.0.0",
        "ajv": "^6.1.0",
        "ajv-keywords": "^3.1.0",
        "chrome-trace-event": "^1.0.0",
        "enhanced-resolve": "^4.1.0",
        "eslint-scope": "^4.0.0",
        "json-parse-better-errors": "^1.0.2",
        "loader-runner": "^2.3.0",
        "loader-utils": "^1.1.0",
        "memory-fs": "~0.4.1",
        "micromatch": "^3.1.8",
        "mkdirp": "~0.5.0",
        "neo-async": "^2.5.0",
        "node-libs-browser": "^2.0.0",
        "schema-utils": "^0.4.4",
        "tapable": "^1.1.0",
        "uglifyjs-webpack-plugin": "^1.2.4",
        "watchpack": "^1.5.0",
        "webpack-sources": "^1.2.0"
      },
      "dependencies": {
        "schema-utils": {
          "version": "0.4.7",
          "resolved": "https://registry.npmjs.org/schema-utils/-/schema-utils-0.4.7.tgz",
          "integrity": "sha512-v/iwU6wvwGK8HbU9yi3/nhGzP0yGSuhQMzL6ySiec1FSrZZDkhm4noOSWzrNFo/jEc+SJY6jRTwuwbSXJPDUnQ==",
          "dev": true,
          "requires": {
            "ajv": "^6.1.0",
            "ajv-keywords": "^3.1.0"
          }
        }
      }
    },
    "webpack-core": {
      "version": "0.6.9",
      "resolved": "https://registry.npmjs.org/webpack-core/-/webpack-core-0.6.9.tgz",
      "integrity": "sha1-/FcViMhVjad76e+23r3Fo7FyvcI=",
      "dev": true,
      "requires": {
        "source-list-map": "~0.1.7",
        "source-map": "~0.4.1"
      },
      "dependencies": {
        "source-list-map": {
          "version": "0.1.8",
          "resolved": "https://registry.npmjs.org/source-list-map/-/source-list-map-0.1.8.tgz",
          "integrity": "sha1-xVCyq1Qn9rPyH1r+rYjE9Vh7IQY=",
          "dev": true
        },
        "source-map": {
          "version": "0.4.4",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.4.4.tgz",
          "integrity": "sha1-66T12pwNyZneaAMti092FzZSA2s=",
          "dev": true,
          "requires": {
            "amdefine": ">=0.0.4"
          }
        }
      }
    },
    "webpack-dev-middleware": {
      "version": "3.3.0",
      "resolved": "https://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-3.3.0.tgz",
      "integrity": "sha512-5C5gXtOo1I6+0AEg4UPglYEtu3Rai6l5IiO6aUu65scHXz29dc3oIWMiRwvcNLXgL0HwRkRxa9N02ZjFt4hY8w==",
      "dev": true,
      "requires": {
        "loud-rejection": "^1.6.0",
        "memory-fs": "~0.4.1",
        "mime": "^2.3.1",
        "range-parser": "^1.0.3",
        "url-join": "^4.0.0",
        "webpack-log": "^2.0.0"
      },
      "dependencies": {
        "mime": {
          "version": "2.4.5",
          "resolved": "https://registry.npmjs.org/mime/-/mime-2.4.5.tgz",
          "integrity": "sha512-3hQhEUF027BuxZjQA3s7rIv/7VCQPa27hN9u9g87sEkWaKwQPuXOkVKtOeiyUrnWqTDiOs8Ed2rwg733mB0R5w==",
          "dev": true
        }
      }
    },
    "webpack-dev-server": {
      "version": "3.1.8",
      "resolved": "https://registry.npmjs.org/webpack-dev-server/-/webpack-dev-server-3.1.8.tgz",
      "integrity": "sha512-c+tcJtDqnPdxCAzEEZKdIPmg3i5i7cAHe+B+0xFNK0BlCc2HF/unYccbU7xTgfGc5xxhCztCQzFmsqim+KhI+A==",
      "dev": true,
      "requires": {
        "ansi-html": "0.0.7",
        "bonjour": "^3.5.0",
        "chokidar": "^2.0.0",
        "compression": "^1.5.2",
        "connect-history-api-fallback": "^1.3.0",
        "debug": "^3.1.0",
        "del": "^3.0.0",
        "express": "^4.16.2",
        "html-entities": "^1.2.0",
        "http-proxy-middleware": "~0.18.0",
        "import-local": "^2.0.0",
        "internal-ip": "^3.0.1",
        "ip": "^1.1.5",
        "killable": "^1.0.0",
        "loglevel": "^1.4.1",
        "opn": "^5.1.0",
        "portfinder": "^1.0.9",
        "schema-utils": "^1.0.0",
        "selfsigned": "^1.9.1",
        "serve-index": "^1.7.2",
        "sockjs": "0.3.19",
        "sockjs-client": "1.1.5",
        "spdy": "^3.4.1",
        "strip-ansi": "^3.0.0",
        "supports-color": "^5.1.0",
        "webpack-dev-middleware": "3.2.0",
        "webpack-log": "^2.0.0",
        "yargs": "12.0.2"
      },
      "dependencies": {
        "ansi-regex": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/ansi-regex/-/ansi-regex-3.0.0.tgz",
          "integrity": "sha1-7QMXwyIGT3lGbAKWa922Bas32Zg=",
          "dev": true
        },
        "camelcase": {
          "version": "4.1.0",
          "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-4.1.0.tgz",
          "integrity": "sha1-1UVjW+HjPFQmScaRc+Xeas+uNN0=",
          "dev": true
        },
        "cliui": {
          "version": "4.1.0",
          "resolved": "https://registry.npmjs.org/cliui/-/cliui-4.1.0.tgz",
          "integrity": "sha512-4FG+RSG9DL7uEwRUZXZn3SS34DiDPfzP0VOiEwtUWlE+AR2EIg+hSyvrIgUUfhdgR/UkAeW2QHgeP+hWrXs7jQ==",
          "dev": true,
          "requires": {
            "string-width": "^2.1.1",
            "strip-ansi": "^4.0.0",
            "wrap-ansi": "^2.0.0"
          },
          "dependencies": {
            "strip-ansi": {
              "version": "4.0.0",
              "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
              "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
              "dev": true,
              "requires": {
                "ansi-regex": "^3.0.0"
              }
            }
          }
        },
        "debug": {
          "version": "3.2.6",
          "resolved": "https://registry.npmjs.org/debug/-/debug-3.2.6.tgz",
          "integrity": "sha512-mel+jf7nrtEl5Pn1Qx46zARXKDpBbvzezse7p7LqINmdoIk8PYP5SySaxEmYv6TZ0JyEKA1hsCId6DIhgITtWQ==",
          "dev": true,
          "requires": {
            "ms": "^2.1.1"
          }
        },
        "decamelize": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/decamelize/-/decamelize-2.0.0.tgz",
          "integrity": "sha512-Ikpp5scV3MSYxY39ymh45ZLEecsTdv/Xj2CaQfI8RLMuwi7XvjX9H/fhraiSuU+C5w5NTDu4ZU72xNiZnurBPg==",
          "dev": true,
          "requires": {
            "xregexp": "4.0.0"
          }
        },
        "find-up": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/find-up/-/find-up-3.0.0.tgz",
          "integrity": "sha512-1yD6RmLI1XBfxugvORwlck6f75tYL+iR0jqwsOrOxMZyGYqUuDhJ0l4AXdO1iX/FTs9cBAMEk1gWSEx1kSbylg==",
          "dev": true,
          "requires": {
            "locate-path": "^3.0.0"
          }
        },
        "is-fullwidth-code-point": {
          "version": "2.0.0",
          "resolved": "https://registry.npmjs.org/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz",
          "integrity": "sha1-o7MKXE8ZkYMWeqq5O+764937ZU8=",
          "dev": true
        },
        "locate-path": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/locate-path/-/locate-path-3.0.0.tgz",
          "integrity": "sha512-7AO748wWnIhNqAuaty2ZWHkQHRSNfPVIsPIfwEOWO22AmaoVrWavlOcMR5nzTLNYvp36X220/maaRsrec1G65A==",
          "dev": true,
          "requires": {
            "p-locate": "^3.0.0",
            "path-exists": "^3.0.0"
          }
        },
        "mime": {
          "version": "2.4.5",
          "resolved": "https://registry.npmjs.org/mime/-/mime-2.4.5.tgz",
          "integrity": "sha512-3hQhEUF027BuxZjQA3s7rIv/7VCQPa27hN9u9g87sEkWaKwQPuXOkVKtOeiyUrnWqTDiOs8Ed2rwg733mB0R5w==",
          "dev": true
        },
        "ms": {
          "version": "2.1.2",
          "resolved": "https://registry.npmjs.org/ms/-/ms-2.1.2.tgz",
          "integrity": "sha512-sGkPx+VjMtmA6MX27oA4FBFELFCZZ4S4XqeGOXCv68tT+jb3vk/RyaKWP0PTKyWtmLSM0b+adUTEvbs1PEaH2w==",
          "dev": true
        },
        "p-limit": {
          "version": "2.3.0",
          "resolved": "https://registry.npmjs.org/p-limit/-/p-limit-2.3.0.tgz",
          "integrity": "sha512-//88mFWSJx8lxCzwdAABTJL2MyWB12+eIY7MDL2SqLmAkeKU9qxRvWuSyTjm3FUmpBEMuFfckAIqEaVGUDxb6w==",
          "dev": true,
          "requires": {
            "p-try": "^2.0.0"
          }
        },
        "p-locate": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/p-locate/-/p-locate-3.0.0.tgz",
          "integrity": "sha512-x+12w/To+4GFfgJhBEpiDcLozRJGegY+Ei7/z0tSLkMmxGZNybVMSfWj9aJn8Z5Fc7dBUNJOOVgPv2H7IwulSQ==",
          "dev": true,
          "requires": {
            "p-limit": "^2.0.0"
          }
        },
        "p-try": {
          "version": "2.2.0",
          "resolved": "https://registry.npmjs.org/p-try/-/p-try-2.2.0.tgz",
          "integrity": "sha512-R4nPAVTAU0B9D35/Gk3uJf/7XYbQcyohSKdvAxIRSNghFl4e71hVoGnBNQz9cWaXxO2I10KTC+3jMdvvoKw6dQ==",
          "dev": true
        },
        "string-width": {
          "version": "2.1.1",
          "resolved": "https://registry.npmjs.org/string-width/-/string-width-2.1.1.tgz",
          "integrity": "sha512-nOqH59deCq9SRHlxq1Aw85Jnt4w6KvLKqWVik6oA9ZklXLNIOlqg4F2yrT1MVaTjAqvVwdfeZ7w7aCvJD7ugkw==",
          "dev": true,
          "requires": {
            "is-fullwidth-code-point": "^2.0.0",
            "strip-ansi": "^4.0.0"
          },
          "dependencies": {
            "strip-ansi": {
              "version": "4.0.0",
              "resolved": "https://registry.npmjs.org/strip-ansi/-/strip-ansi-4.0.0.tgz",
              "integrity": "sha1-qEeQIusaw2iocTibY1JixQXuNo8=",
              "dev": true,
              "requires": {
                "ansi-regex": "^3.0.0"
              }
            }
          }
        },
        "webpack-dev-middleware": {
          "version": "3.2.0",
          "resolved": "https://registry.npmjs.org/webpack-dev-middleware/-/webpack-dev-middleware-3.2.0.tgz",
          "integrity": "sha512-YJLMF/96TpKXaEQwaLEo+Z4NDK8aV133ROF6xp9pe3gQoS7sxfpXh4Rv9eC+8vCvWfmDjRQaMSlRPbO+9G6jgA==",
          "dev": true,
          "requires": {
            "loud-rejection": "^1.6.0",
            "memory-fs": "~0.4.1",
            "mime": "^2.3.1",
            "path-is-absolute": "^1.0.0",
            "range-parser": "^1.0.3",
            "url-join": "^4.0.0",
            "webpack-log": "^2.0.0"
          }
        },
        "yargs": {
          "version": "12.0.2",
          "resolved": "https://registry.npmjs.org/yargs/-/yargs-12.0.2.tgz",
          "integrity": "sha512-e7SkEx6N6SIZ5c5H22RTZae61qtn3PYUE8JYbBFlK9sYmh3DMQ6E5ygtaG/2BW0JZi4WGgTR2IV5ChqlqrDGVQ==",
          "dev": true,
          "requires": {
            "cliui": "^4.0.0",
            "decamelize": "^2.0.0",
            "find-up": "^3.0.0",
            "get-caller-file": "^1.0.1",
            "os-locale": "^3.0.0",
            "require-directory": "^2.1.1",
            "require-main-filename": "^1.0.1",
            "set-blocking": "^2.0.0",
            "string-width": "^2.0.0",
            "which-module": "^2.0.0",
            "y18n": "^3.2.1 || ^4.0.0",
            "yargs-parser": "^10.1.0"
          }
        },
        "yargs-parser": {
          "version": "10.1.0",
          "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-10.1.0.tgz",
          "integrity": "sha512-VCIyR1wJoEBZUqk5PA+oOBF6ypbwh5aNB3I50guxAL/quggdfs4TtNHQrSazFA3fYZ+tEqfs0zIGlv0c/rgjbQ==",
          "dev": true,
          "requires": {
            "camelcase": "^4.1.0"
          }
        }
      }
    },
    "webpack-log": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/webpack-log/-/webpack-log-2.0.0.tgz",
      "integrity": "sha512-cX8G2vR/85UYG59FgkoMamwHUIkSSlV3bBMRsbxVXVUk2j6NleCKjQ/WE9eYg9WY4w25O9w8wKP4rzNZFmUcUg==",
      "dev": true,
      "requires": {
        "ansi-colors": "^3.0.0",
        "uuid": "^3.3.2"
      }
    },
    "webpack-merge": {
      "version": "4.1.4",
      "resolved": "https://registry.npmjs.org/webpack-merge/-/webpack-merge-4.1.4.tgz",
      "integrity": "sha512-TmSe1HZKeOPey3oy1Ov2iS3guIZjWvMT2BBJDzzT5jScHTjVC3mpjJofgueEzaEd6ibhxRDD6MIblDr8tzh8iQ==",
      "dev": true,
      "requires": {
        "lodash": "^4.17.5"
      }
    },
    "webpack-sources": {
      "version": "1.2.0",
      "resolved": "https://registry.npmjs.org/webpack-sources/-/webpack-sources-1.2.0.tgz",
      "integrity": "sha512-9BZwxR85dNsjWz3blyxdOhTgtnQvv3OEs5xofI0wPYTwu5kaWxS08UuD1oI7WLBLpRO+ylf0ofnXLXWmGb2WMw==",
      "dev": true,
      "requires": {
        "source-list-map": "^2.0.0",
        "source-map": "~0.6.1"
      },
      "dependencies": {
        "source-map": {
          "version": "0.6.1",
          "resolved": "https://registry.npmjs.org/source-map/-/source-map-0.6.1.tgz",
          "integrity": "sha512-UjgapumWlbMhkBgzT7Ykc5YXUT46F0iKu8SGXq0bcwP5dz/h0Plj6enJqjz1Zbq2l5WaqYnrVbwWOWMyF3F47g==",
          "dev": true
        }
      }
    },
    "webpack-subresource-integrity": {
      "version": "1.1.0-rc.6",
      "resolved": "https://registry.npmjs.org/webpack-subresource-integrity/-/webpack-subresource-integrity-1.1.0-rc.6.tgz",
      "integrity": "sha512-Az7y8xTniNhaA0620AV1KPwWOqawurVVDzQSpPAeR5RwNbL91GoBSJAAo9cfd+GiFHwsS5bbHepBw1e6Hzxy4w==",
      "dev": true,
      "requires": {
        "webpack-core": "^0.6.8"
      }
    },
    "websocket-driver": {
      "version": "0.7.3",
      "resolved": "https://registry.npmjs.org/websocket-driver/-/websocket-driver-0.7.3.tgz",
      "integrity": "sha512-bpxWlvbbB459Mlipc5GBzzZwhoZgGEZLuqPaR0INBGnPAY1vdBX6hPnoFXiw+3yWxDuHyQjO2oXTMyS8A5haFg==",
      "dev": true,
      "requires": {
        "http-parser-js": ">=0.4.0 <0.4.11",
        "safe-buffer": ">=5.1.0",
        "websocket-extensions": ">=0.1.1"
      }
    },
    "websocket-extensions": {
      "version": "0.1.3",
      "resolved": "https://registry.npmjs.org/websocket-extensions/-/websocket-extensions-0.1.3.tgz",
      "integrity": "sha512-nqHUnMXmBzT0w570r2JpJxfiSD1IzoI+HGVdd3aZ0yNi3ngvQ4jv1dtHt5VGxfI2yj5yqImPhOK4vmIh2xMbGg==",
      "dev": true
    },
    "when": {
      "version": "3.6.4",
      "resolved": "https://registry.npmjs.org/when/-/when-3.6.4.tgz",
      "integrity": "sha1-RztRfsFZ4rhQBUl6E5g/CVQS404=",
      "dev": true
    },
    "which": {
      "version": "1.3.1",
      "resolved": "https://registry.npmjs.org/which/-/which-1.3.1.tgz",
      "integrity": "sha512-HxJdYWq1MTIQbJ3nw0cqssHoTNU267KlrDuGZ1WYlxDStUtKUhOaJmh112/TZmHxxUfuJqPXSOm7tDyas0OSIQ==",
      "dev": true,
      "requires": {
        "isexe": "^2.0.0"
      }
    },
    "which-module": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/which-module/-/which-module-2.0.0.tgz",
      "integrity": "sha1-2e8H3Od7mQK4o6j6SzHD4/fm6Ho=",
      "dev": true
    },
    "wide-align": {
      "version": "1.1.3",
      "resolved": "https://registry.npmjs.org/wide-align/-/wide-align-1.1.3.tgz",
      "integrity": "sha512-QGkOQc8XL6Bt5PwnsExKBPuMKBxnGxWWW3fU55Xt4feHozMUhdUMaBCk290qpm/wG5u/RSKzwdAC4i51YigihA==",
      "dev": true,
      "optional": true,
      "requires": {
        "string-width": "^1.0.2 || 2"
      }
    },
    "word-wrap": {
      "version": "1.2.3",
      "resolved": "https://registry.npmjs.org/word-wrap/-/word-wrap-1.2.3.tgz",
      "integrity": "sha512-Hz/mrNwitNRh/HUAtM/VT/5VH+ygD6DV7mYKZAtHOrbs8U7lvPS6xf7EJKMF0uW1KJCl0H701g3ZGus+muE5vQ==",
      "dev": true
    },
    "wordwrap": {
      "version": "1.0.0",
      "resolved": "https://registry.npmjs.org/wordwrap/-/wordwrap-1.0.0.tgz",
      "integrity": "sha1-J1hIEIkUVqQXHI0CJkQa3pDLyus=",
      "dev": true
    },
    "worker-farm": {
      "version": "1.7.0",
      "resolved": "https://registry.npmjs.org/worker-farm/-/worker-farm-1.7.0.tgz",
      "integrity": "sha512-rvw3QTZc8lAxyVrqcSGVm5yP/IJ2UcB3U0graE3LCFoZ0Yn2x4EoVSqJKdB/T5M+FLcRPjz4TDacRf3OCfNUzw==",
      "dev": true,
      "requires": {
        "errno": "~0.1.7"
      }
    },
    "wrap-ansi": {
      "version": "2.1.0",
      "resolved": "https://registry.npmjs.org/wrap-ansi/-/wrap-ansi-2.1.0.tgz",
      "integrity": "sha1-2Pw9KE3QV5T+hJc8rs3Rz4JP3YU=",
      "dev": true,
      "requires": {
        "string-width": "^1.0.1",
        "strip-ansi": "^3.0.1"
      }
    },
    "wrappy": {
      "version": "1.0.2",
      "resolved": "https://registry.npmjs.org/wrappy/-/wrappy-1.0.2.tgz",
      "integrity": "sha1-tSQ9jz7BqjXxNkYFvA0QNuMKtp8=",
      "dev": true
    },
    "ws": {
      "version": "3.3.3",
      "resolved": "https://registry.npmjs.org/ws/-/ws-3.3.3.tgz",
      "integrity": "sha512-nnWLa/NwZSt4KQJu51MYlCcSQ5g7INpOrOMt4XV8j4dqTXdmlUmSHQ8/oLC069ckre0fRsgfvsKwbTdtKLCDkA==",
      "dev": true,
      "requires": {
        "async-limiter": "~1.0.0",
        "safe-buffer": "~5.1.0",
        "ultron": "~1.1.0"
      }
    },
    "xml2js": {
      "version": "0.4.23",
      "resolved": "https://registry.npmjs.org/xml2js/-/xml2js-0.4.23.tgz",
      "integrity": "sha512-ySPiMjM0+pLDftHgXY4By0uswI3SPKLDw/i3UXbnO8M/p28zqexCUoPmQFrYD+/1BzhGJSs2i1ERWKJAtiLrug==",
      "dev": true,
      "requires": {
        "sax": ">=0.6.0",
        "xmlbuilder": "~11.0.0"
      }
    },
    "xmlbuilder": {
      "version": "11.0.1",
      "resolved": "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-11.0.1.tgz",
      "integrity": "sha512-fDlsI/kFEx7gLvbecc0/ohLG50fugQp8ryHzMTuW9vSa1GJ0XYWKnhsUx7oie3G98+r56aTQIUB4kht42R3JvA==",
      "dev": true
    },
    "xmlhttprequest-ssl": {
      "version": "1.5.5",
      "resolved": "https://registry.npmjs.org/xmlhttprequest-ssl/-/xmlhttprequest-ssl-1.5.5.tgz",
      "integrity": "sha1-wodrBhaKrcQOV9l+gRkayPQ5iz4=",
      "dev": true
    },
    "xregexp": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/xregexp/-/xregexp-4.0.0.tgz",
      "integrity": "sha512-PHyM+sQouu7xspQQwELlGwwd05mXUFqwFYfqPO0cC7x4fxyHnnuetmQr6CjJiafIDoH4MogHb9dOoJzR/Y4rFg==",
      "dev": true
    },
    "xtend": {
      "version": "4.0.2",
      "resolved": "https://registry.npmjs.org/xtend/-/xtend-4.0.2.tgz",
      "integrity": "sha512-LKYU1iAXJXUgAXn9URjiu+MWhyUXHsvfp7mcuYm9dSUKK0/CjtrUwFAxD82/mCWbtLsGjFIad0wIsod4zrTAEQ==",
      "dev": true
    },
    "y18n": {
      "version": "4.0.0",
      "resolved": "https://registry.npmjs.org/y18n/-/y18n-4.0.0.tgz",
      "integrity": "sha512-r9S/ZyXu/Xu9q1tYlpsLIsa3EeLXXk0VwlxqTcFRfg9EhMW+17kbt9G0NrgCmhGb5vT2hyhJZLfDGx+7+5Uj/w==",
      "dev": true
    },
    "yallist": {
      "version": "2.1.2",
      "resolved": "https://registry.npmjs.org/yallist/-/yallist-2.1.2.tgz",
      "integrity": "sha1-HBH5IY8HYImkfdUS+TxmmaaoHVI=",
      "dev": true
    },
    "yargs": {
      "version": "7.1.0",
      "resolved": "https://registry.npmjs.org/yargs/-/yargs-7.1.0.tgz",
      "integrity": "sha1-a6MY6xaWFyf10oT46gA+jWFU0Mg=",
      "dev": true,
      "optional": true,
      "requires": {
        "camelcase": "^3.0.0",
        "cliui": "^3.2.0",
        "decamelize": "^1.1.1",
        "get-caller-file": "^1.0.1",
        "os-locale": "^1.4.0",
        "read-pkg-up": "^1.0.1",
        "require-directory": "^2.1.1",
        "require-main-filename": "^1.0.1",
        "set-blocking": "^2.0.0",
        "string-width": "^1.0.2",
        "which-module": "^1.0.0",
        "y18n": "^3.2.1",
        "yargs-parser": "^5.0.0"
      },
      "dependencies": {
        "camelcase": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-3.0.0.tgz",
          "integrity": "sha1-MvxLn82vhF/N9+c7uXysImHwqwo=",
          "dev": true,
          "optional": true
        },
        "invert-kv": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/invert-kv/-/invert-kv-1.0.0.tgz",
          "integrity": "sha1-EEqOSqym09jNFXqO+L+rLXo//bY=",
          "dev": true,
          "optional": true
        },
        "lcid": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/lcid/-/lcid-1.0.0.tgz",
          "integrity": "sha1-MIrMr6C8SDo4Z7S28rlQYlHRuDU=",
          "dev": true,
          "optional": true,
          "requires": {
            "invert-kv": "^1.0.0"
          }
        },
        "os-locale": {
          "version": "1.4.0",
          "resolved": "https://registry.npmjs.org/os-locale/-/os-locale-1.4.0.tgz",
          "integrity": "sha1-IPnxeuKe00XoveWDsT0gCYA8FNk=",
          "dev": true,
          "optional": true,
          "requires": {
            "lcid": "^1.0.0"
          }
        },
        "which-module": {
          "version": "1.0.0",
          "resolved": "https://registry.npmjs.org/which-module/-/which-module-1.0.0.tgz",
          "integrity": "sha1-u6Y8qGGUiZT/MHc2CJ47lgJsKk8=",
          "dev": true,
          "optional": true
        },
        "y18n": {
          "version": "3.2.1",
          "resolved": "https://registry.npmjs.org/y18n/-/y18n-3.2.1.tgz",
          "integrity": "sha1-bRX7qITAhnnA136I53WegR4H+kE=",
          "dev": true,
          "optional": true
        }
      }
    },
    "yargs-parser": {
      "version": "5.0.0",
      "resolved": "https://registry.npmjs.org/yargs-parser/-/yargs-parser-5.0.0.tgz",
      "integrity": "sha1-J17PDX/+Bcd+ZOfIbkzZS/DhIoo=",
      "dev": true,
      "optional": true,
      "requires": {
        "camelcase": "^3.0.0"
      },
      "dependencies": {
        "camelcase": {
          "version": "3.0.0",
          "resolved": "https://registry.npmjs.org/camelcase/-/camelcase-3.0.0.tgz",
          "integrity": "sha1-MvxLn82vhF/N9+c7uXysImHwqwo=",
          "dev": true,
          "optional": true
        }
      }
    },
    "yeast": {
      "version": "0.1.2",
      "resolved": "https://registry.npmjs.org/yeast/-/yeast-0.1.2.tgz",
      "integrity": "sha1-AI4G2AlDIMNy28L47XagymyKxBk=",
      "dev": true
    },
    "yn": {
      "version": "2.0.0",
      "resolved": "https://registry.npmjs.org/yn/-/yn-2.0.0.tgz",
      "integrity": "sha1-5a2ryKz0CPY4X8dklWhMiOavaJo=",
      "dev": true
    },
    "zone.js": {
      "version": "0.8.29",
      "resolved": "https://registry.npmjs.org/zone.js/-/zone.js-0.8.29.tgz",
      "integrity": "sha512-mla2acNCMkWXBD+c+yeUrBUrzOxYMNFdQ6FGfigGGtEVBPJx07BQeJekjt9DmH1FtZek4E9rE1eRR9qQpxACOQ=="
    }
  }
}

'
echo "$packagelock" > ./$_nombreProject/package-lock.json
echo 'package-lock.json generado correctamente!'

