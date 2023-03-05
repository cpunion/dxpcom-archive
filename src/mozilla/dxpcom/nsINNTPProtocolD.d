/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPProtocol.idl
 */

module mozilla.dxpcom.nsINNTPProtocolD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINNTPProtocol;


public import mozilla.dxpcom.nsINNTPProtocolD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIUrlListener;

public import mozilla.dxpcom.nsIUrlListenerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsINntpUrl;

public import mozilla.dxpcom.nsINntpUrlD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsINNTPProtocol */
class nsINNTPProtocolD : public nsISupportsD {

  static const nsIID IID = NS_INNTPPROTOCOL_IID;


  alias nsINNTPProtocol InnerType;

  this(nsINNTPProtocol intr){
    super(intr);
    this.inner = intr;
  }

  nsINNTPProtocol opCast() {
    return inner;
  }

  void opAssign(nsINNTPProtocol value) {
    inner = value;
  }

  /* attribute boolean isBusy; */
  PRBool IsBusy(){
    PRBool value;
    nsresult __result = inner.GetIsBusy(&value);
    CheckException(__result);
    return value;
  }
  void IsBusy(PRBool aIsBusy){
    nsresult __result = inner.SetIsBusy(aIsBusy);
    CheckException(__result);
  }

  /* void LoadNewsUrl (in nsIURI aUri, in nsISupports aConsumer); */
  void LoadNewsUrl(nsIURID aUri, nsISupportsD aConsumer){
    nsresult __result = inner.LoadNewsUrl(aUri ? cast(nsIURI)aUri : null, aConsumer ? cast(nsISupports)aConsumer : null);
    CheckException(__result);
  }

  /* void Initialize (in nsIURI aURL, in nsIMsgWindow aMsgWindow); */
  void Initialize(nsIURID aURL, nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.Initialize(aURL ? cast(nsIURI)aURL : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void GetLastActiveTimeStamp (out PRTime aTimeStamp); */
  void GetLastActiveTimeStamp(out PRTime aTimeStamp){
    nsresult __result = inner.GetLastActiveTimeStamp(&aTimeStamp);
    CheckException(__result);
  }

  /* attribute boolean isCachedConnection; */
  PRBool IsCachedConnection(){
    PRBool value;
    nsresult __result = inner.GetIsCachedConnection(&value);
    CheckException(__result);
    return value;
  }
  void IsCachedConnection(PRBool aIsCachedConnection){
    nsresult __result = inner.SetIsCachedConnection(aIsCachedConnection);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgFolder currentFolder; */
  nsIMsgFolderD  CurrentFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetCurrentFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /* void CloseConnection (); */
  void CloseConnection(){
    nsresult __result = inner.CloseConnection();
    CheckException(__result);
  }

private:
  nsINNTPProtocol inner;

}

