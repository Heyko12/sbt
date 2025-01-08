## Использование:

- Подключить submodules командой "git submodule init && git submodule update", вызванной из корня репозитория
- Позвать команду "make build", собрав исходник step-ca
- Запустить minikube командой "minikube start"
- Собрать образ командой "eval $(minikube -p minikube docker-env) && helm uninstall step-ca --namespace default && docker inage rm step-ca && docker build -t step-ca .", удалив предыдущую установку чарта, очистив предыдущий image, 
- Применить helm-чарт командой "helm uninstall step-ca --namespace default && helm install step-ca ./helm-step-ca --namespace default"