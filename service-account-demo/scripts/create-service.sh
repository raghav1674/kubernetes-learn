curl -k -X POST -H 'Authorization:Bearer <token>' \
-H 'Content-Type: application/yaml' \
--data '
kind: Service
apiVersion: v1
metadata:
  name: nginx-service
spec:
  ports:
    - port: 80
      targetPort: 80
      nodePort: 32000
  selector:
      app: nginx
  type: NodePort
' https://<minikube-ip>:8443/api/v1/namespaces/<namespace>/services
