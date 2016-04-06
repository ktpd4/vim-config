myself use vim config file
===========

##link ~/.vimrc to the repo vimrc file,then pull and push will auto change the vim

##Vundle use
Set up Vuncle
$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Install Bundles:
Launch vim and run :BundleInstall
To install from command line: vim +BundleInstall +qall

##vim复制到系统剪切板
sudo apt-get install vim-gui-common
就可以支持+储存器了,这时我们选中范围后按"+y就复制到+寄存器中,在外面就可以ctrl+v复制了.
当然这个命令还是麻烦
我们可以修改.vimrc,在其中添加一条map映射
vmap <C-c> "+y
vmap是在VISUAL模式下的映射,是在按了v进入可视化之后才启用,是ctrl+c,这样相当于"+y这个命令.
将系统剪切板的东西复制进vim比较简单,可以进入插入模式,直接右键粘贴,也可以shift+insert.这个不需要+寄存器的支持也可以用.


