/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewerFile.idl
 */

module mozilla.dxpcom.nsIContentViewerFileD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentViewerFile;


public import mozilla.dxpcom.nsIContentViewerFileD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPrintSettings;
public import mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIWebProgressListener;

public import mozilla.dxpcom.nsIWebProgressListenerD;


/* starting wrapper class:    nsIContentViewerFile */
/**
 * The nsIDocShellFile    
 */
class nsIContentViewerFileD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTVIEWERFILE_IID;


  alias nsIContentViewerFile InnerType;

  this(nsIContentViewerFile intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentViewerFile opCast() {
    return inner;
  }

  void opAssign(nsIContentViewerFile value) {
    inner = value;
  }

  /* readonly attribute boolean printable; */
  PRBool Printable(){
    PRBool value;
    nsresult __result = inner.GetPrintable(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] void print (in boolean aSilent, in FILE aDebugFile, in nsIPrintSettings aPrintSettings); */
  void Print(PRBool aSilent, FILE * aDebugFile, nsIPrintSettingsD aPrintSettings){
    nsresult __result = inner.Print(aSilent, aDebugFile, aPrintSettings ? cast(nsIPrintSettings)aPrintSettings : null);
    CheckException(__result);
  }

  /* [noscript] void printWithParent (in nsIDOMWindowInternal aParentWin, in nsIPrintSettings aThePrintSettings, in nsIWebProgressListener aWPListener); */
  void PrintWithParent(nsIDOMWindowInternalD aParentWin, nsIPrintSettingsD aThePrintSettings, nsIWebProgressListenerD aWPListener){
    nsresult __result = inner.PrintWithParent(aParentWin ? cast(nsIDOMWindowInternal)aParentWin : null, aThePrintSettings ? cast(nsIPrintSettings)aThePrintSettings : null, aWPListener ? cast(nsIWebProgressListener)aWPListener : null);
    CheckException(__result);
  }

private:
  nsIContentViewerFile inner;

}

