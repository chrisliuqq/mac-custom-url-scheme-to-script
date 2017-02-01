# mac-custom-url-scheme-to-script

An example repository for building own custom url scheme and pass the parameters to script

一個如何在 mac 上自訂 url protocol 並透過網頁傳送參數至指定 script 的範例

* English
* 正體中文(todo)

## Write the scheme handler in AppleScript

* open `AppleScript`.
* copy and paste the following code to it.

```
on open location schemeUrl		set oldDelims to AppleScript's text item delimiters	--This saves Applescript's old text item delimiters to the variable oldDelims.	set newDelims to {"custom://", "?param="}	--This sets the variable newDelims to our new custom url handler prefix and the prefix for the page number argument.	set AppleScript's text item delimiters to newDelims	--This sets Applescript's text item delimiters to the newDelims.	set param to item 3 of the text items of schemeUrl	--This extracts the file name from the passed url using the new text item delimiters. The param is the third text item.	set param to do shell script "/bin/bash " & "/path/to/your/script.sh " & param	-- set param to do shell script "python " & "/path/to/your/python/script.py " & param
	-- This sets the variable param to your script execute result		display alert "done" & param
	-- This display the result	end open location
```

* modify the `custom://` and `?param=` to the url scheme you want.

> in this example, we set the url scheme to `custom://something-I-dont-need?param=Hello`

* modify the `bin/bash`, `/path/to/your/script.sh` and the `param` position, or just uncomment the python line.
* comment the `display alert` line if you don't need.
* save the applescript to Application.

## Register the url scheme in application

* Right click on the application you just save, and select `Show Package Contents`
* Find the `Info.plist` file in path `Contents`
* Use whatever text editor your like to edit it.
* Find the line

```
<key>CFBundleIdentifier</key>
<string>com.apple.ScriptEditor.example.schemeHandler</string>
```
* Paste the following code after it.

```
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

* Change the `Custom Scheme` and `custom` to what you want.
* Save it!

## Before test it

* Just run the application after you finish the previous step to register the url scheme in macos.
* Restart the browser/terminal/iterm to get the renew url scheme.

## Reference

* <http://jones.kaist.edu/notebook/2012/09/creating-a-custom-url-scheme-via-applescript-and-python.html>