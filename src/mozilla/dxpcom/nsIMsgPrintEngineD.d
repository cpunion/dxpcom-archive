/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgPrintEngine.idl
 */

module mozilla.dxpcom.nsIMsgPrintEngineD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgPrintEngine;


public import mozilla.dxpcom.nsIMsgPrintEngineD;

public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIMsgStatusFeedback;
public import mozilla.dxpcom.nsIMsgStatusFeedbackD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsIPrintSettings;

public import mozilla.dxpcom.nsIPrintSettingsD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsIWebBrowserPrint;

public import mozilla.dxpcom.nsIWebBrowserPrintD;


/* starting wrapper class:    nsIMsgPrintEngine */
class nsIMsgPrintEngineD : public nsISupportsD {

  static const nsIID IID = NS_IMSGPRINTENGINE_IID;


  alias nsIMsgPrintEngine InnerType;

  this(nsIMsgPrintEngine intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgPrintEngine opCast() {
    return inner;
  }

  void opAssign(nsIMsgPrintEngine value) {
    inner = value;
  }

  /**
     * Print/PrintPreview Msg Type
     */
  enum { MNAB_START = 0 }

  enum { MNAB_PRINT_MSG = 0 }

  enum { MNAB_PRINTPREVIEW_MSG = 1 }

  enum { MNAB_PRINT_AB_CARD = 2 }

  enum { MNAB_PRINTPREVIEW_AB_CARD = 3 }

  enum { MNAB_PRINT_ADDRBOOK = 4 }

  enum { MNAB_PRINTPREVIEW_ADDRBOOK = 5 }

  enum { MNAB_END = 6 }

  /* void setWindow (in nsIDOMWindowInternal ptr); */
  void SetWindow(nsIDOMWindowInternalD ptr){
    nsresult __result = inner.SetWindow(ptr ? cast(nsIDOMWindowInternal)ptr : null);
    CheckException(__result);
  }

  /* void setParentWindow (in nsIDOMWindowInternal ptr); */
  void SetParentWindow(nsIDOMWindowInternalD ptr){
    nsresult __result = inner.SetParentWindow(ptr ? cast(nsIDOMWindowInternal)ptr : null);
    CheckException(__result);
  }

  /* void showWindow (in boolean aShow); */
  void ShowWindow(PRBool aShow){
    nsresult __result = inner.ShowWindow(aShow);
    CheckException(__result);
  }

  /* void setStatusFeedback (in nsIMsgStatusFeedback feedback); */
  void SetStatusFeedback(nsIMsgStatusFeedbackD feedback){
    nsresult __result = inner.SetStatusFeedback(feedback ? cast(nsIMsgStatusFeedback)feedback : null);
    CheckException(__result);
  }

  /* void setPrintURICount (in PRInt32 aCount); */
  void SetPrintURICount(PRInt32 aCount){
    nsresult __result = inner.SetPrintURICount(aCount);
    CheckException(__result);
  }

  /* void addPrintURI (in wstring aURI); */
  void AddPrintURI(PRUnichar*aURI){
    nsresult __result = inner.AddPrintURI(aURI);
    CheckException(__result);
  }

  /* void startPrintOperation (in nsIPrintSettings aPS); */
  void StartPrintOperation(nsIPrintSettingsD aPS){
    nsresult __result = inner.StartPrintOperation(aPS ? cast(nsIPrintSettings)aPS : null);
    CheckException(__result);
  }

  /* void setStartupPPObserver (in nsIObserver startupPPObs); */
  void SetStartupPPObserver(nsIObserverD startupPPObs){
    nsresult __result = inner.SetStartupPPObserver(startupPPObs ? cast(nsIObserver)startupPPObs : null);
    CheckException(__result);
  }

  /* void setMsgType (in long aMsgType); */
  void SetMsgType(PRInt32 aMsgType){
    nsresult __result = inner.SetMsgType(aMsgType);
    CheckException(__result);
  }

  /* attribute boolean doPrintPreview; */
  PRBool DoPrintPreview(){
    PRBool value;
    nsresult __result = inner.GetDoPrintPreview(&value);
    CheckException(__result);
    return value;
  }
  void DoPrintPreview(PRBool aDoPrintPreview){
    nsresult __result = inner.SetDoPrintPreview(aDoPrintPreview);
    CheckException(__result);
  }

  /* readonly attribute nsIWebBrowserPrint webBrowserPrint; */
  nsIWebBrowserPrintD  WebBrowserPrint(){
    nsIWebBrowserPrint value;
    nsresult __result = inner.GetWebBrowserPrint(&value);
    CheckException(__result);
    return new nsIWebBrowserPrintD(value);
  }

private:
  nsIMsgPrintEngine inner;

}

