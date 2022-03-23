kubectl get secret <secret-name>  -o=jsonpath="{.data.token}" | base64 -d

