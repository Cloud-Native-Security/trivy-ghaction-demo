## Cert Manager

Documentation: https://cert-manager.io/docs/installation/helm/ 
Blog post https://someweb.github.io/devops/cert-manager-kubernetes/


```
kubectl create namespace cert-manager
helm repo add jetstack https://charts.jetstack.io
helm repo update

helm install \
  cert-manager jetstack/cert-manager \
  --namespace cert-manager \
  --version v1.13.1 
```


## Traefik
https://www.digitalocean.com/community/tutorials/how-to-secure-your-site-in-kubernetes-with-cert-manager-traefik-and-let-s-encrypt

```
helm repo add traefik https://helm.traefik.io/traefik
helm repo update

helm upgrade --install --namespace=traefik traefik traefik/traefik
```

## Metallb

https://github.com/metallb/metallb/issues/1823#issuecomment-1420023215 

AHHHHHHHHHHH

```
kubectl delete ValidatingWebhookConfiguration validating-webhook-configuration
```

This fixes the following error:
```
Error from server (InternalError): error when creating "ipaddresspool.yaml": Internal error occurred: failed calling webhook "ipaddresspoolvalidationwebhook.metallb.io": failed to call webhook: Post "https://webhook-service.metallb-system.svc:443/validate-metallb-io-v1beta1-ipaddresspool?timeout=10s": service "webhook-service" not found
Error from server (InternalError): error when creating "ipaddresspool.yaml": Internal error occurred: failed calling webhook "l2advertisementvalidationwebhook.metallb.io": failed to call webhook: Post "https://webhook-service.metallb-system.svc:443/validate-metallb-io-v1beta1-l2advertisement?timeout=10s": service "webhook-service" not found
```



