# TimeAndDateTool 
An Autohotkey Class for working with time and dates. 
## How to use
1. Download the TimeAndDateTool.ahk file.
2. Place TimeAndDateTool.ahk in your local AHK library folder 
    - If you are not using a local AHK library folder, you can place TimeAndDateTool.ahk into the same folder as the script that is going to use the class. 
3. Insert an appropriate ["#Include"](https://www.autohotkey.com/docs/commands/_Include.htm) statement near the top of the .ahk script which will use the TimeAndDateTool.ahk class. 
4. Create an instance of the TimeAndDateTool class in your .ahk file.
    - `timeAndDateTool := new TimeAndDateTool()`
5. Use the instance to call class methods.
    - In this example, you can generate a time stamp and assign it to a variable.
        - `timeStampVar := timeAndDateTool.generateTimestamp()`