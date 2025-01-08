## Использование:

- Подключить submodules командой "git submodule init && git submodule update", вызванной из корня репозитория
- Позвать команду "make build"
- Запустить minikube командой "minikube start"
- Собрать образ командой "eval $(minikube -p minikube docker-env) && docker build -t step-ca ."
- Применить helm-чарт командой "helm uninstall step-ca --namespace default && helm install step-ca ./helm-step-ca --namespace default"