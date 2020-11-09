# mac-custom-url-scheme-to-script

An example repository for building own custom url scheme and pass the parameters to script

一個如何在 mac 上自訂 url protocol 並透過網頁傳送參數至指定 script 的範例

* [English](https://github.com/chrisliuqq/mac-custom-url-scheme-to-script/blob/master/README.md)
* [正體中文](https://github.com/chrisliuqq/mac-custom-url-scheme-to-script/blob/master/README.zh_TW.md)

## 用 AppleScript 寫收到網址時該如何處理

* 開啟 `工序指令編寫程式`。
* 複製以下程式碼，貼到 `工序指令編寫程式` 中，新開的檔案。

```applescript
on open location schemeUrl
	
	set oldDelims to AppleScript's text item delimiters
	-- 將預設的間隔符號存起來（目前沒用到）
	set newDelims to {"custom://", "?param="}
	-- 建立新的間隔符號來取得參數內容
	set AppleScript's text item delimiters to newDelims
	-- 將工序指令編寫程式的間隔符號套用到剛剛建立的新的
	set param to item 3 of the text items of schemeUrl
	-- 從收到的網址中依照上面建立的間隔符號取得第三個參數，並設定為 param 變數
	set param to do shell script "/bin/bash " & "/path/to/your/script.sh " & param
	-- set param to do shell script "python " & "/path/to/your/python/script.py " & param
	-- 執行 bash 並將結果回存在 param 中
	
	display alert "done" & param
	-- 顯示結果
	
end open location
```

* 將程式碼中的 `custom://` 與 `?param=` 換成您所想要的名字。

> 這個範例所使用的 protocol 預計是這樣 `custom://something-I-dont-need?param=Hello`

* 將程式碼中的 `bin/bash`, `/path/to/your/script.sh` 與 `param` 調整為您所要執行的 shell script 路徑, 或者移除掉底下預設的 python 格式的註解，改用 python。
* 如果您不需要顯示結果的話，可以移除或註解 `display alert` 這行。
* 將此檔案儲存成「應用程式」。 

## 在應用程式中註冊 url scheme

* 滑鼠右鍵點擊你剛剛儲存的應用程式，並選擇 `顯示套件內容`。
* 在資料夾 `Contents` 中找到檔案 `Info.plist`。
* 用你喜歡的文字編輯器開啟這個檔案。
* 找到以下的位置。

```xml
<key>CFBundleIdentifier</key>
<string>com.apple.ScriptEditor.example.schemeHandler</string>
```
* 複製底下的程式碼並接著上面的位置貼上。

```xml
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleURLName</key>
		<string>Custom Scheme</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<string>custom</string>
		</array>
	</dict>
</array>
```

* 將 `Custom Scheme` 和 `custom` 改成您所希望的 scheme。
* 儲存!

## 開始測試之前

* 完成上面的步驟後，請先執行一次剛剛用 `工序指令編寫程式` 儲存的應用程式，讓他註冊一下新的 url scheme。
* 重新啟動您的 瀏覽器/終端機/iTerm2，讓他們也能吃到新的 url scheme。
* 完成！

## 資料來源

* <http://jones.kaist.edu/notebook/2012/09/creating-a-custom-url-scheme-via-applescript-and-python.html>
