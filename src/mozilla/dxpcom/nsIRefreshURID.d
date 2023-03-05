/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRefreshURI.idl
 */

module mozilla.dxpcom.nsIRefreshURID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRefreshURI;


public import mozilla.dxpcom.nsIRefreshURID;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIRefreshURI */
class nsIRefreshURID : public nsISupportsD {

  static const nsIID IID = NS_IREFRESHURI_IID;


  alias nsIRefreshURI InnerType;

  this(nsIRefreshURI intr){
    super(intr);
    this.inner = intr;
  }

  nsIRefreshURI opCast() {
    return inner;
  }

  void opAssign(nsIRefreshURI value) {
    inner = value;
  }

  /**
      * Load a uri after waiting for aMillis milliseconds. If the docshell
      * is busy loading a page currently, the refresh request will be
      * queued and executed when the current load finishes. 
      *
      * @param aUri The uri to refresh.
      * @param aMillis The number of milliseconds to wait.
      * @param aRepeat Flag to indicate if the uri is to be 
      *                repeatedly refreshed every aMillis milliseconds.
      * @parem aMetaRefresh Flag to indicate if this is a Meta refresh.
      */
  /* void refreshURI (in nsIURI aURI, in long aMillis, in boolean aRepeat, in boolean aMetaRefresh); */
  void RefreshURI(nsIURID aURI, PRInt32 aMillis, PRBool aRepeat, PRBool aMetaRefresh){
    nsresult __result = inner.RefreshURI(aURI ? cast(nsIURI)aURI : null, aMillis, aRepeat, aMetaRefresh);
    CheckException(__result);
  }

  /**
      * Checks the passed in channel to see if there is a refresh header, 
      * if there is, will setup a timer to refresh the uri found
      * in the header. If docshell is busy loading a page currently, the
      * request will be queued and executed when the current page 
      * finishes loading. 
      *
      * Returns the NS_REFRESHURI_HEADER_FOUND success code if a refresh
      * header was found and successfully setup.
      *
      * @param aChannel The channel to be parsed. 
      */
  /* void setupRefreshURI (in nsIChannel aChannel); */
  void SetupRefreshURI(nsIChannelD aChannel){
    nsresult __result = inner.SetupRefreshURI(aChannel ? cast(nsIChannel)aChannel : null);
    CheckException(__result);
  }

  /**
      * Parses the passed in header string and sets up a refreshURI if
      * a "refresh" header is found. If docshell is busy loading a page 
      * currently, the request will be queued and executed when 
      * the current page finishes loading. 
      *
      * @param aBaseURI base URI to resolve refresh uri with.
      * @param aHeader  The meta refresh header string.
      */
  /* void setupRefreshURIFromHeader (in nsIURI aBaseURI, in ACString aHeader); */
  void SetupRefreshURIFromHeader(nsIURID aBaseURI, char[] aHeader){
    scope auto _aHeader = new ACString(aHeader);
    nsresult __result = inner.SetupRefreshURIFromHeader(aBaseURI ? cast(nsIURI)aBaseURI : null, cast(nsACString*)_aHeader);
    CheckException(__result);
  }

  /**
      * Cancels all timer loads.
      */
  /* void cancelRefreshURITimers (); */
  void CancelRefreshURITimers(){
    nsresult __result = inner.CancelRefreshURITimers();
    CheckException(__result);
  }

private:
  nsIRefreshURI inner;

}

