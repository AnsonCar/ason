#!/usr/bin/env bash

set -e

echo ""
echo "Some useful ason commands are:"

echo "#Basic"
echo " version              顯示版本號"
echo " chomedriver          下載chomedriver"

echo ""

echo "#python"
echo " py init              安裝python虛擬環境"
echo " py init r            安裝python虛擬環境及依賴包"
echo " py outlib            輸出python依賴包"

echo "##django"
echo " startproject <name>  Django 建立專案"
echo " startapp <name>      Django 建立app"

echo "##other"
echo " secretKey            生成密鑰"