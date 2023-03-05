/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISystemInfo.idl
 */

module mozilla.xpcom.nsISystemInfo;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsISupports;


/* starting interface:    nsISystemInfo */
const char[] NS_ISYSTEMINFO_IID_STR = "4189b420-1dd2-11b2-bff7-daaf5c1f7b10";

const nsIID NS_ISYSTEMINFO_IID= 
  {0x4189b420, 0x1dd2, 0x11b2, 
    [ 0xbf, 0xf7, 0xda, 0xaf, 0x5c, 0x1f, 0x7b, 0x10 ]};

/**
 * System information service.
 * 
 * At present, a thin wrapper around PR_GetSystemInfo.
 */
extern(Windows)
interface nsISystemInfo : nsISupports {
  static const char[] IID_STR = NS_ISYSTEMINFO_IID_STR;
  static const nsIID IID = NS_ISYSTEMINFO_IID;

  /** The system hostname. */
  /* readonly attribute string hostname; */
  nsresult GetHostname(char * *aHostname);

  /** The operating system name. */
  /* readonly attribute string OSName; */
  nsresult GetOSName(char * *aOSName);

  /** The operating system version. */
  /* readonly attribute string OSVersion; */
  nsresult GetOSVersion(char * *aOSVersion);

  /** The processor architecture of the machine. */
  /* readonly attribute string architecture; */
  nsresult GetArchitecture(char * *aArchitecture);

}

