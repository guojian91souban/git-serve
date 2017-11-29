# git-serve
git serve 
轻量级的git serve

# 用法
```
docker build -t git-serve -f Dockerfile .
docker run -d -p 60022:22 git-serve
```
访问
```
// 访问ssh 
// 账号密码 root root
ssh root@localhost -p60022
// 访问git仓库.
// git账号和密码 git git 
git clone ssh://git@localhost:60022/data.git
```
