# How to download it 
Run the command `git clone https://github.com/Tangyeye/tangyeye-blog`.  

# How to new page 
Run command `hexo new "page_name"` or create new file `*.md` and corresponding folder in `./source/_posts` 

# How to update it 
Run `upload.bat` 

# Hint 
All commands must be run in the root directory of the repository.  
查阅markdown。  
可参考`./source/_posts`中的文章作为写作模板，若在其中添加图片，图片只能存放于和文章同目录下的同名文件夹。  
以上内容皆有现成模板，请仔细观察模板内的内容，因模板内容自带英语注解，应该很容易理解吧。  
除了以上提到的可修改内容，其它文件不要轻易修改（除非熟悉Hexo框架）。  
每次修改后，需双击运行`./upload.bat`脚本，可自动提交修改到`github`仓库，一般约2~3min后，网站内容会同步到最新内容。  
你的`github`账号内新加的仓库，都不是多余的，删除任何一个，都会影响你的网站的正常运维。  
当你在不同电脑或虚拟机内使用同一个仓库进行修改时，可能会出现修改的内容不一致的情况，所以当你在A电脑上修改博客并上传，然后要在B电脑上继续之前的工作时，注意更新本地仓库内容&rarry;双击运行`update*.bat`/`update*.sh`，否则可能会出现修改内容有冲突的情况，导致你无法正常用脚本上传修改内容，那么容易理解的解决方法就是，把作过修改的内容复制出来放在一个新目录中的新文件中，然后删除本地仓库重新下载仓库，再把添加或修改的内容填补回去，一般就没问题了。  
## 可修改内容 
- `./source/`
    - `posts/*`
    - `about/index.md`

## `Windows` 
`C:/User/username/.ssh`建议你备份好该文件夹（除非你熟悉自己配置ssh密钥，网上有很多教程），当你换个windows系统环境时，需恢复该文件夹到指定用户目录下，以便脚本正常运行。  
本仓库可在多个电脑中进行同步操作，若是要获取其它电脑上最新提交的修改，双击运行`update.bat`。  

# Reference 

## Prerequisite 

### Windows 

#### Choice 1 
Install [Git - Downloads](https://git-scm.com/downloads).  
Add environment variables for `Git`.  

#### Choice 2 
- How to open `CMD`
    - `Win+Q` to search `cmd`

- Run `CMD` by `Administrator`
    - Install [Chocolatey - The package manager for Windows](https://chocolatey.org/)
    - `choco install -y git`

## Create SSH Key
Right click at the root directory of the current user, e.g. `C:\Users\myname`.  
Click `git bash`.  

Run the following commands in `git bash`  
```
mkdir .ssh
cd .ssh
ssh-keygen -t rsa -C "email"
```
Input file name: `id_rsa_github`  

Add file `config` to `.ssh` folder   
```
Host github.com
    HostName github.com
    PreferredAuthentications publickey
    IdentityFile ~/.ssh/id_rsa_github
```

## Add SSH public key to `GitHub` 
`GitHub` &rarr; login &rarr; `Settings` &rarr; `SSH and GPG keys` &rarr; `New SSH key`  
Copy the content of `id_rsa_github.pub` to `Key` textarea and input the random name for `Title` textbox.  

## Download repository 
- Go to a diretory
- Right click to click `git bash`
- Run the command `git clone git@github.com:Tangyeye/tangyeye-blog.git`
