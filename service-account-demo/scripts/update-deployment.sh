curl -k -X PATCH \
 -H "Authorization: Bearer <token>" \
 -H 'Content-Type: application/strategic-merge-patch+json' \
 --data '
{"spec":{"replicas":5,"template":{"spec":{"containers":[{"name":"nginx","image":"nginx:1.21.6-alpine"}]}}}}' \
https://<minikube-ip>:8443/apis/apps/v1/namespaces/<namespace>/deployments/<deployment-name>







