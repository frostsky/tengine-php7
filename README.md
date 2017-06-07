# tengine-php7
包含tengine + php7 + redis + phpredis + swoole 的docker镜像 

# 包括以下组件   
- tengine-2.2.0   
- php-7.1.5    
- redis-3.2.9   

php已安装启用以下扩展：    
- opcache    
- curl   
- phpredis   
- swoole    

# 使用说明
1. 需要在本地workspace下创建两个目录：devlog 和 ngx。devlog 存放php错误日志，ngx存放tengine网站配置文件。    
2. 下载或git clone 所有代码到本地某目录，比如：phpdocker    
然后，执行docker命令创建镜像：   
docker build -t frostsky/tengine-php7 /path/to/phpdocker    
3. 或者 docker pull frostsky/tengine-php7   

***生成容器并运行***：     
docker run -itd -p 80:80 -p 8888:22 -p 443:443 -p 6379:6379 -v /workspace:/data/www --name tengine frostsky/tengine-php7:latest

# 注意
本镜像继承自 centos-sshd 镜像。可访问 [centos-sshd](https://github.com/frostsky/centos-sshd)
