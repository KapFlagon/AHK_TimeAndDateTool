; ***** Script Settings ***** ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


; ***** Auto Execute block ***** ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


; ***** Class Definition ***** ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

class TimeAndDateTool {

; ***** Functions ***** ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


  __New() {
      1sec_ms := 1000
      1min_ms := 60000
      60min_ms := 3600000
  }
  
  ConvertMStoHHMMSS(timeMS) {
      outputValue := ""
      
      totalSeconds := timeMS / this.1sec_ms
      
      outputValue := this.convertSecsToHHMMSS(totalSeconds)
      
      Return outputValue
  }
  
  convertSecsToHHMMSS(time_S) { ; Convert the specified number of seconds to hh:mm:ss format.
      time := 19990101  ; *Midnight* of an arbitrary date.
      time += %time_S%, seconds
      FormatTime, outputFormat, %time%, HH:mm:ss
      return outputFormat
  }
  
  generateTimestamp() {
      timestamp := ""
      FormatTime, timestamp, %A_Now%, ddd dd.MM.yyyy HH:mm:ss
      Return timestamp
  }
  
  getCurrentMonth() {
      return A_MMM
  }
  
  getCurrentYear() {
      return A_YYYY
  }
    
  addDateToTime(shortTimeText) {
    ; create a variable to return
    returnVar :=
    
    ; create a format object, with todays year, month, and day numbers
    FormatTime, todayDT, %A_Now%, yyyyMMdd
    
    ; Add the passed variable to the end of the numerical date value
    returnVar := todayDT . shortTimeText
    
    return returnVar
  }
}

