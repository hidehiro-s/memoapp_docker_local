# 概要

Docker自己学習。
memoアプリをDocker上で起動する（ローカル環境）  

Docker version 20.10.8  
Ruby Version 2.5.8　　
Rails Version 2.5.4　　

# コマンドメモ  
$ mkdir memo_docker  
$ cd memo_docker  
#Dockerfile、docker-compose.yml、srcファイルを作成。  
#srcファイル内にrailアプリを入れる。  
$ docker-compose run web rails new . --force --database=mysql  
$ docker-compose build  
$ docker-compose run web rails db:create  
$ docker-compose up -d  
$ docker-compose down  
$ docker-compose logs  
$ docker-compose exec web /bin/bash   

# 参考  
・[Docker超入門講座 合併版 | ゼロから実践する4時間のフルコース](https://www.youtube.com/watch?v=lZD1MIHwMBY&t=22s)
・[Docker + Rails で Bundler v2.X を使う](https://qiita.com/tanakaworld/items/468d421eca58576006fb)　　
・[Docker docker-compose up時、You must use Bundler 2 or greater with this lockfile.　という地獄のエラー](https://qiita.com/avicii2314/items/769aacd3b5b949dcbcb8)　　
