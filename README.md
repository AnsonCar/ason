<p align="center">
    <img width="192px" src="./doc/Logo/NERV.svg" >
</p>
<h1 align="center"><b>ason</b></h1>

<p align="center">終端小工具</p>
<p align="center">主要是個人使用，所有不跟規範</p>

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
# git clone https://github.com/AnsonCar/ason.git ~/ason
chmod +x ~/ason
chmod +x ~/ason/bin/ason
echo 'export PATH="$PATH:$HOME/ason/bin"' >> ~/.bash_profile
echo "source ~/.bash_profile" >> ~/.zshrc
```

### 使用方法
```shell
ason help
```

## 查閱更多
查看 [Change Log(更新日志)](doc/changelog.md) 

如果覺得本項目有潛力 或 對你有幫助，可以點Star鼓勵一下~