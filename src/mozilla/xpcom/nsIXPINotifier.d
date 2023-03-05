/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPINotifier.idl
 */

module mozilla.xpcom.nsIXPINotifier;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIXPIListener */
const char[] NS_IXPILISTENER_IID_STR = "eea90d40-b059-11d2-915e-c12b696c9333";

const nsIID NS_IXPILISTENER_IID= 
  {0xeea90d40, 0xb059, 0x11d2, 
    [ 0x91, 0x5e, 0xc1, 0x2b, 0x69, 0x6c, 0x93, 0x33 ]};

extern(Windows)
interface nsIXPIListener : nsISupports {
  static const char[] IID_STR = NS_IXPILISTENER_IID_STR;
  static const nsIID IID = NS_IXPILISTENER_IID;

  /* void onInstallStart (in wstring URL); */
  nsresult OnInstallStart(PRUnichar *URL);

  /* void onInstallDone (in wstring URL, in long status); */
  nsresult OnInstallDone(PRUnichar *URL, PRInt32 status);

  /* void onPackageNameSet (in wstring URL, in wstring UIPackageName, in wstring version); */
  nsresult OnPackageNameSet(PRUnichar *URL, PRUnichar *UIPackageName, PRUnichar *version_);

  /* void onItemScheduled (in wstring message); */
  nsresult OnItemScheduled(PRUnichar *message);

  /* void onFinalizeProgress (in wstring message, in long itemNum, in long totNum); */
  nsresult OnFinalizeProgress(PRUnichar *message, PRInt32 itemNum, PRInt32 totNum);

  /* void onLogComment (in wstring comment); */
  nsresult OnLogComment(PRUnichar *comment);

}

