# k8s-auto-install
Тестовый проект для автоматизированного поднятия кластера k8s

Требования:
1. Установленный QUEMU/KVM для запуска машин
2. Python3, Ansible, 

Инструкция:
1. Создаём машины с помощью Vagrant
   1.1. Зайти в k8s-auto-install/vagrant
   1.2. Запускаем машины
   	```shell
    	vagrant up --provider=libvirt
    
3. Для полностью автоматизированного решения запускаем
   
   ```shell
   ansible-playbook all_in_one.yml -i inventory.yml 
   
4. Конфиг для подключения к кластеру будет расположен в ~/$HOME/.kube
