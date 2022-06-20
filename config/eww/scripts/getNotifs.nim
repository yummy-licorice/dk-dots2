import os, osproc, strutils, strformat

let logFile = readFile(getHomeDir() & "notifi-log").split("\n")
let notifCount = len(logFile)

let 
  n1 = logFile[notifCount].split(":")
  n2 = logFile[notifCount - 1].split(":")
  n3 = logFile[notifCount - 2].split(":")
  n4 = logFile[notifCount - 3].split(":")
  n5 = logFile[notifCount - 4].split(":")
  n1t = n1[0]
  n2t = n2[0]
  n3t = n3[0]
  n4t = n4[0]
  n5t = n5[0]
  n1b = n1[1]
  n2b = n2[1]
  n3b = n3[1]
  n4b = n4[1]
  n5b = n5[1]
  
echo fmt"""
        (box :orientation "vertical"
             :halign "top"
             :class "noti1"
          (box :orientation "horizontal" 
               :halign "top"
               :valign "center"
               :class "noti1t"
              "{n1t}"
            )
          "description"
    )
    (box :orientation "vertical"
             :halign "top"
             :class "noti1"
          (box :orientation "horizontal" 
               :halign "top"
               :valign "center"
               :class "noti1t"
              "title"
            )
          "description"
    ) 
    (box :orientation "vertical"
             :halign "top"
             :class "noti1"
          (box :orientation "horizontal" 
               :halign "top"
               :valign "center"
               :class "noti1t"
              "title"
            )
          "description"
    )
    (box :orientation "vertical"
             :halign "top"
             :class "noti1"
          (box :orientation "horizontal" 
               :halign "top"
               :valign "center"
               :class "noti1t"
              "title"
            )
          "description"
    )"""
  
  

