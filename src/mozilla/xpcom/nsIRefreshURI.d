/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRefreshURI.idl
 */

module mozilla.xpcom.nsIRefreshURI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIURI;

public import mozilla.xpcom.nsIChannel; /* forward declaration */


/* starting interface:    nsIRefreshURI */
const char[] NS_IREFRESHURI_IID_STR = "69efc430-2efe-11d2-9e5d-006008bf092e";

const nsIID NS_IREFRESHURI_IID= 
  {0x69efc430, 0x2efe, 0x11d2, 
    [ 0x9e, 0x5d, 0x00, 0x60, 0x08, 0xbf, 0x09, 0x2e ]};

extern(Windows)
interface nsIRefreshURI : nsISupports {
  static const char[] IID_STR = NS_IREFRESHURI_IID_STR;
  static const nsIID IID = NS_IREFRESHURI_IID;

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
  nsresult RefreshURI(nsIURI aURI, PRInt32 aMillis, PRBool aRepeat, PRBool aMetaRefresh);

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
  nsresult SetupRefreshURI(nsIChannel aChannel);

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
  nsresult SetupRefreshURIFromHeader(nsIURI aBaseURI, nsACString * aHeader);

  /**
      * Cancels all timer loads.
      */
  /* void cancelRefreshURITimers (); */
  nsresult CancelRefreshURITimers();

}

