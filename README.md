参考https://zhuanlan.zhihu.com/p/624172594
修改了alpine的版本号

; 构建host1、host2、host3的镜像
docker build -t example-ansible-node -f Dockerfile.node .
; 启动服务
docker-compose up -d
; 进入ansible容器
docker exec -it example-ansible-master ash

ansible myvirtualmachines -k -m authorized_key -a "user=root key='{{ lookup('file', '~/.ssh/id_rsa.pub') }}'"
; 输入密码123456

; 测试连接
ansible all -m ping
