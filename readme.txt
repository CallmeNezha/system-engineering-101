# 可使用 docker 进行网站开发

1. 使用文件夹下 Dockerfile 构建 docker 镜像 (包含jekyll和ruby依赖)
   使用 `sudo docker build -t jekyll:dev .` 构建

2. 运行 docker
   使用 `sudo docker run -itd -v $(pwd):/home/www -w /home/www -p 4000:4000 --rm --name jekyll-serve jekyll:dev /usr/local/bin/bundler exec jekyll serve --host 0.0.0.0 --port 4000`

3. 打开本机浏览器，输入地址 http://localhost:4000
