FROM rabbitmq:3.7-management

COPY ./src/rabbitmq_delayed_message_exchange-20171201-3.7.x.ez /plugins

# --offline 仅仅修改启用的插件文件
# --online 将与正在运行的代理连接失败视为致命错误
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange