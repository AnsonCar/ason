#!/usr/bin/env bash

set -e

echo ""
echo "Usage: ason COMMAND [OPTIONS]"
echo ""
echo "Some useful ason commands are:"

echo "#Basic"
echo " version              顯示版本號"
echo " updata               更新工具包"
echo " chomedriver          下載chomedriver"

echo ""
echo "----------"
echo "#python"
echo " py init              安裝python虛擬環境"
echo " py init r            安裝python虛擬環境及依賴包"
echo " py outlib            輸出python依賴包"

echo ""
echo "##django"
echo " startproject <name>  Django 建立專案"
echo " startapp <name>      Django 建立app"

echo ""
echo "----------"
echo "#other"
echo " secretKey            生成密鑰"
echo " tree                 顯示文件樹狀結構"
echo " view                 顯示ason名稱"
echo " help                 顯示幫助"
echo ""
