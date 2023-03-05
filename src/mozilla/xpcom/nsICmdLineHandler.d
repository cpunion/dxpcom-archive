/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICmdLineHandler.idl
 */

module mozilla.xpcom.nsICmdLineHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsICmdLineHandler */
const char[] NS_ICMDLINEHANDLER_IID_STR = "ae12670a-1dd1-11b2-80cd-82ec93559deb";

const nsIID NS_ICMDLINEHANDLER_IID= 
  {0xae12670a, 0x1dd1, 0x11b2, 
    [ 0x80, 0xcd, 0x82, 0xec, 0x93, 0x55, 0x9d, 0xeb ]};

extern(Windows)
interface nsICmdLineHandler : nsISupports {
  static const char[] IID_STR = NS_ICMDLINEHANDLER_IID_STR;
  static const nsIID IID = NS_ICMDLINEHANDLER_IID;

  /* readonly attribute string commandLineArgument; */
  nsresult GetCommandLineArgument(char * *aCommandLineArgument);

  /* readonly attribute string prefNameForStartup; */
  nsresult GetPrefNameForStartup(char * *aPrefNameForStartup);

  /* readonly attribute string chromeUrlForTask; */
  nsresult GetChromeUrlForTask(char * *aChromeUrlForTask);

  /* readonly attribute string helpText; */
  nsresult GetHelpText(char * *aHelpText);

  /* readonly attribute boolean handlesArgs; */
  nsresult GetHandlesArgs(PRBool *aHandlesArgs);

  /* readonly attribute wstring defaultArgs; */
  nsresult GetDefaultArgs(PRUnichar * *aDefaultArgs);

  /* readonly attribute boolean openWindowWithArgs; */
  nsresult GetOpenWindowWithArgs(PRBool *aOpenWindowWithArgs);

}

