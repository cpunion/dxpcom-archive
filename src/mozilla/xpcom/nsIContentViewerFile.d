/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerFile.idl
 */

module mozilla.xpcom.nsIContentViewerFile;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrintSettings;

public import mozilla.xpcom.nsIDOMWindowInternal; /* forward declaration */

public import mozilla.xpcom.nsIWebProgressListener; /* forward declaration */


/* starting interface:    nsIContentViewerFile */
const char[] NS_ICONTENTVIEWERFILE_IID_STR = "6317f32c-9bc7-11d3-bccc-0060b0fc76bd";

const nsIID NS_ICONTENTVIEWERFILE_IID= 
  {0x6317f32c, 0x9bc7, 0x11d3, 
    [ 0xbc, 0xcc, 0x00, 0x60, 0xb0, 0xfc, 0x76, 0xbd ]};

/**
 * The nsIDocShellFile    
 */
extern(Windows)
interface nsIContentViewerFile : nsISupports {
  static const char[] IID_STR = NS_ICONTENTVIEWERFILE_IID_STR;
  static const nsIID IID = NS_ICONTENTVIEWERFILE_IID;

  /* readonly attribute boolean printable; */
  nsresult GetPrintable(PRBool *aPrintable);

  /* [noscript] void print (in boolean aSilent, in FILE aDebugFile, in nsIPrintSettings aPrintSettings); */
  nsresult Print(PRBool aSilent, FILE * aDebugFile, nsIPrintSettings aPrintSettings);

  /* [noscript] void printWithParent (in nsIDOMWindowInternal aParentWin, in nsIPrintSettings aThePrintSettings, in nsIWebProgressListener aWPListener); */
  nsresult PrintWithParent(nsIDOMWindowInternal aParentWin, nsIPrintSettings aThePrintSettings, nsIWebProgressListener aWPListener);

}

