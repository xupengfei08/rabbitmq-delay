### 创建rabbitmq带延迟队列插件的Docker镜像

#### 基础信息
> 基于rabbitmq管饭基础镜像rabbitmq:3.7-management，版本3.7。延时插件版本与之对应使用3.7.*

插件地址：
http://www.rabbitmq.com/community-plugins.html

#### Dockerfile信息
```dockerfile
FROM rabbitmq:3.7-management

COPY ./src/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez /plugins

# --offline 仅仅修改启用的插件文件
# --online 将与正在运行的代理连接失败视为致命错误
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange
```

#### 镜像生成脚本

```bash
docker build -t suanmilk/rabbitmq-delay:3.7 .
```