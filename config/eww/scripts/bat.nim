import os, osproc, strutils, math

let arg = os.paramStr(1)

proc state(): string =
  let commandOutput = execCmdEx("upower -i `upower -e | grep 'BAT'` | grep state")[0].split(":")[1].strip()
  if commandOutput == "charging":
    return "true"
  elif commandOutput == "discharging":
    return "false"
  elif commandOutput == "fully-charged":
    return "full"
  else:
    return "error detecting battery state"
      
proc name(): string =
  return execCmdEx(r"upower -i `upower -e | grep 'BAT'` | grep native")[0].split(":")[1].strip()
proc maxCap: int =
  return execCmdEx(r"upower -i `upower -e | grep 'BAT'` | grep cap")[0].split(":")[1].strip().replace("%", "").parseFloat().trunc().int()
proc charge: string =
  return execCmdEx(r"upower -i `upower -e | grep 'BAT'` | grep perc")[0].split(":")[1].strip().replace("%", "")
    
if arg == "--state":
  echo state()
elif arg == "--name":
  echo name()
elif arg == "--cap":
  echo maxCap()
elif arg == "--charge":
  echo charge()
