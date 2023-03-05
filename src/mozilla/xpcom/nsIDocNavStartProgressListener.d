/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocNavStartProgressListener.idl
 */

module mozilla.xpcom.nsIDocNavStartProgressListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIDocNavStartProgressCallback */
const char[] NS_IDOCNAVSTARTPROGRESSCALLBACK_IID_STR = "163f3437-1d69-4db7-9ce1-fd420fba8219";

const nsIID NS_IDOCNAVSTARTPROGRESSCALLBACK_IID= 
  {0x163f3437, 0x1d69, 0x4db7, 
    [ 0x9c, 0xe1, 0xfd, 0x42, 0x0f, 0xba, 0x82, 0x19 ]};

extern(Windows)
interface nsIDocNavStartProgressCallback : nsISupports {
  static const char[] IID_STR = NS_IDOCNAVSTARTPROGRESSCALLBACK_IID_STR;
  static const nsIID IID = NS_IDOCNAVSTARTPROGRESSCALLBACK_IID;

  /* void onDocNavStart (in nsIRequest aRequest, in AUTF8String aUri); */
  nsresult OnDocNavStart(nsIRequest aRequest, nsACString * aUri);

}


/* starting interface:    nsIDocNavStartProgressListener */
const char[] NS_IDOCNAVSTARTPROGRESSLISTENER_IID_STR = "84991d1b-b010-4127-9e71-82017559abff";

const nsIID NS_IDOCNAVSTARTPROGRESSLISTENER_IID= 
  {0x84991d1b, 0xb010, 0x4127, 
    [ 0x9e, 0x71, 0x82, 0x01, 0x75, 0x59, 0xab, 0xff ]};

extern(Windows)
interface nsIDocNavStartProgressListener : nsISupports {
  static const char[] IID_STR = NS_IDOCNAVSTARTPROGRESSLISTENER_IID_STR;
  static const nsIID IID = NS_IDOCNAVSTARTPROGRESSLISTENER_IID;

  /**
   * Set to true to enable this component. Defaults to false (disabled). When
   * you set this to true, the listener will be attached to the docloader and
   * the callback can start getting events.
   */
  /* attribute boolean enabled; */
  nsresult GetEnabled(PRBool *aEnabled);
  nsresult SetEnabled(PRBool aEnabled);

  /**
   * Number of ms to wait after receiving a doc load event and calling the
   * callback.  Even when set to zero, we set a timer so the call will fire
   * asynchronously.  Defaults to 0.
   */
  /* attribute PRUint32 delay; */
  nsresult GetDelay(PRUint32 *aDelay);
  nsresult SetDelay(PRUint32 aDelay);

  /**
   * Callback object to be used when enabled=true.
   * NULL when there is no callback.
   */
  /* attribute nsIDocNavStartProgressCallback callback; */
  nsresult GetCallback(nsIDocNavStartProgressCallback  *aCallback);
  nsresult SetCallback(nsIDocNavStartProgressCallback  aCallback);

  /**
   * We ignore about:, chrome: and file: URIs.
   */
  /* boolean isSpurious (in nsIURI aURI); */
  nsresult IsSpurious(nsIURI aURI, PRBool *_retval);

}

