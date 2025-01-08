## Использование:

- Позвать команду "make build", собрав исходник step-ca
- Запустить minikube командой "minikube start"
- Удалить предыдущий чарт, если такой имеется "helm uninstall step-ca --namespace default"
- Собрать образ командой "eval $(minikube -p minikube docker-env) && docker image rm step-ca && docker build -t step-ca .", удалив предыдущую установку чарта, очистив предыдущий image, 
- Применить helm-чарт командой "helm install step-ca ./helm-step-ca --namespace default"