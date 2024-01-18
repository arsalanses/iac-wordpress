## describe
```
{
    "default-address-pools": [
        {"base": "172.21.0.0/16", "size": 24},
        {"base": "172.22.0.0/16", "size": 24},
        {"base": "172.23.0.0/16", "size": 24},
        {"base": "172.24.0.0/16", "size": 24},
        {"base": "172.25.0.0/16", "size": 24}
    ],

    "registry-mirrors": ["https://hub.hamdocker.ir"],
    "insecure-registries": ["https://hub.hamdocker.ir"],

    "data-root": "/mnt/data",

    "log-driver": "json-file",
    "log-level": "info",
    "log-opts": {
        "max-file": "5",
        "max-size": "10m"
    }
}
```
