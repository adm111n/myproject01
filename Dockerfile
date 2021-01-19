FROM grafana/grafana
# задаем метку, что maintener то есть разработчик, тот кто поддерживает это образ
LABEL maintainer="Timur2021@gmail.com"
# просто выводим на экран фразу 'Hello world!'
EXEC ["echo", "'Hello world!'"]
# создаем папку 'tmp' а в ней папку 'grafana' (начиная с корня '/')
RUN ["mkdir", "-p", "/tmp/grafana"]
# добавляем переменную GF_INSTALL_PLUGINS
# которая будет использована Grafana для автоматической установки плагинов при старте
ENV GF_INSTALL_PLUGINS="grafana-clock-panel,grafana-simple-json-datasou
