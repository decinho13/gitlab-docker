# Datei: dbgl/docker-compose.yml
version: '3'
services:
  gitlab:
    hostname: gitlab.dockerbuch.info
    image: gitlab/gitlab-ce:latets
    environment:
      GITLAB_OMNIBUS_CONFIG: |
        external_url 'https://gitlab.dockerbuch.info/'
        nginx['listen_port']=80
        nginx['listen_https']= false
        nginx['proxy_set_headers']= {
          "X-Forwarded-Proto" => "https",
          "X-Forwarded-Ssl" => "on"
         }
         postgresql['enable'] = false
         gitlab_rails['db_host']='postgresql'
         gitlab_rails['db_port'] = '5432'
         gitlab_rails['db_username'] = 'gitlab'
         gitlab_rails['db_password'] = 'Xoh1jee6gei7'
         gitlab_rails['db_database'] = 'gitlab_prod'
         gitlab_rails['db_adapter'] = 'postgresql'
         gitlab_rails['db_encoding'] = 'utf8'
         redis['enable'] = false
         gitlab_rails['redis_host'] = 'redis'
         gitlab_rails['redis_port'] = '6379'
         gitlab_rails['gitlab_shell_ssh_port'] = '2222'
         gitlab_rails[''] = ''
         gitlab_rails[''] = ''
