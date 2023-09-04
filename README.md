<p align="center">
    <img width="192px" src="./doc/Logo/NERV.svg" >
</p>
<h1 align="center"><b>ason</b></h1>

<p align="center">終端小工具</p>
<p align="center">主要是個人使用，所有不跟規範</p>
<p align="center">目前只支持Mac，上學無時間</p>

## 理念
因為 太多指令需要記同太長，所以我自己寫幾個指令簡化指令（套娃）。
> 左手jupyter，右手python，中間shell。

旨在提供一系列方便的功能和工具。

## 簡介
<!-- #### 框架由以下基本模組構成：
1. Data Analysis 數據分析
2. Data Visualization 數據可視化
3. Machine Learning 機器學習 -->
待更新

## 項目結構
```
*
├── README.md
├── ason_help.sh
├── ason_init.sh
├── ason_py.sh
├── ason_updata.sh
├── ason_version.sh
├── bin
│   └── ason
├── doc
│   ├── Logo
│   │   └── NERV.svg
│   └── changelog.md
├── download_chomedriver.py
└── secret_key.py
```

## 安裝
```shell
git clone https://github.com/AnsonCar/ason.git ~/ason
chmod +x ~/ason
chmod +x ~/ason/bin/ason
echo 'export PATH="$PATH:$HOME/ason/bin"' >> ~/.bash_profile
echo "source ~/.bash_profile" >> ~/.zshrc
echo "source ~/.bash_profile" >> ~/.bashrc
```

### 使用方法
```
#Basic
 version              顯示版本號
 updata               更新工具包
 chomedriver          下載chomedriver

----------
#python
 py init              安裝python虛擬環境
 py init r            安裝python虛擬環境及依賴包
 py outlib            輸出python依賴包

##django
 startproject <name>  Django 建立專案
 startapp <name>      Django 建立app

----------
#other
 secretKey            生成密鑰
 tree                 顯示文件樹狀結構
 view                 顯示ason名稱
 help                 顯示幫助
```

## 查閱更多
查看 [Change Log(更新日志)](doc/changelog.md) 

如果覺得本項目有潛力 或 對你有幫助，可以點Star鼓勵一下~