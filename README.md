# dotfiles
储存一些终端配置文件

## 文件对照表
|仓库文件|备份地址|
|:---:|:---:|
|vimrc|$HOME/.vimrc|

## 恢复命令

复制以下命令

```bash
git clone https://github.com/fructosecloud/dotfiles.git
```

  
```bash
cd dotfiles && cp vimrc $HOME/.vimrc
```
或者

```bash
cd dotfiles && ln -s vimrc $HOME/.vimrc #创建软链接，以便于后续备份
```
