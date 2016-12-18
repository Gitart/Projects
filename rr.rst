  How often to check resources. 

  Default interval: ``10s``

:disk_limit:
  Minimum free disk space in MB. 

  Default: ``2GB``

:mem_limit: 
  Minimum free memory amount in MB. 

  Default: ``512MB``


RC Assert
=========

Module checks test's exit code with predefined acceptable codes. If exit code matches, it is overrides as 0. Otherwise it is replaced with code from option ``fail_code``

INI file section: **[rcassert]**

Options
-------

:pass:
  list of acceptable codes, delimiter - whitespace. 

  Default: empty, no check is performed.

:fail_code:
  Exit code when check fails, integer number. 

  Default: 10


Tips&Tricks
===========

Shows tips and tricks in fullscreen console.

INI-file section: **[tips]**

Options
-------

:disable:
  Disable tips and tricks.

  Default: 0 (don't).


BatteryHistorian
================

Module collects android device battery historian log to artifacts.  

INI-file section: **[battery_historian]**  

Options
-------

:device_id:  
  Android device id. Should be specified.  

  Default: None (will raise an exception).  
