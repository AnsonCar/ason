import platform
import requests
import zipfile
import io

chomedriver_version = "114.0.5735.90"

if platform.system().lower() == "windows":
    zip_file_url = f"https://chromedriver.storage.googleapis.com/{chomedriver_version}/chromedriver_win32.zip"

elif platform.system().lower() == "darwin":
    if platform.machine().startswith("arm"):
        zip_file_url = f"https://chromedriver.storage.googleapis.com/{chomedriver_version}/chromedriver_mac_arm64.zip"

    else:
        zip_file_url = f"https://chromedriver.storage.googleapis.com/{chomedriver_version}/chromedriver_mac64.zip"

elif platform.system().lower() == "linux":
    zip_file_url = f"https://chromedriver.storage.googleapis.com/{chomedriver_version}/chromedriver_linux64.zip"

r = requests.get(zip_file_url, stream=True)
# 将响应数据转换为内存中的文件对象，并创建 ZIP 文件对象
z = zipfile.ZipFile(io.BytesIO(r.content))
# 将 ZIP 文件中的所有文件解压缩到当前目录下
z.extractall()