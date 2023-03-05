/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCScriptNotify.idl
 */

module mozilla.xpcom.nsIXPCScriptNotify;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIXPConnect;


/* starting interface:    nsIXPCScriptNotify */
const char[] NS_IXPCSCRIPTNOTIFY_IID_STR = "b804504d-0025-4d6b-8ced-d94e41102a7f";

const nsIID NS_IXPCSCRIPTNOTIFY_IID= 
  {0xb804504d, 0x0025, 0x4d6b, 
    [ 0x8c, 0xed, 0xd9, 0x4e, 0x41, 0x10, 0x2a, 0x7f ]};

extern(Windows)
interface nsIXPCScriptNotify : nsISupports {
  static const char[] IID_STR = NS_IXPCSCRIPTNOTIFY_IID_STR;
  static const nsIID IID = NS_IXPCSCRIPTNOTIFY_IID;

  /**
     * Method invoked when a script has been executed by XPConnect
     */
  /* void ScriptExecuted (); */
  nsresult ScriptExecuted();

  /**
     * Method invoked to preserve an nsIXPConnectWrappedNative as needed
     */
  /* void preserveWrapper (in nsIXPConnectWrappedNative wrapper); */
  nsresult PreserveWrapper(nsIXPConnectWrappedNative wrapper);

}

