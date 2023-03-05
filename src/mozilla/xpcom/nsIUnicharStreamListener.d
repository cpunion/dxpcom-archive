/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUnicharStreamListener.idl
 */

module mozilla.xpcom.nsIUnicharStreamListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRequestObserver;


/* starting interface:    nsIUnicharStreamListener */
const char[] NS_IUNICHARSTREAMLISTENER_IID_STR = "4a7e9b62-fef8-400d-9865-d6820f630b4c";

const nsIID NS_IUNICHARSTREAMLISTENER_IID= 
  {0x4a7e9b62, 0xfef8, 0x400d, 
    [ 0x98, 0x65, 0xd6, 0x82, 0x0f, 0x63, 0x0b, 0x4c ]};

/**
 * nsIUnicharStreamListener is very similar to nsIStreamListener with
 * the difference being that this interface gives notifications about
 * data being available after the raw data has been converted to
 * UTF-16.
 *
 * nsIUnicharStreamListener
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIUnicharStreamListener : nsIRequestObserver {
  static const char[] IID_STR = NS_IUNICHARSTREAMLISTENER_IID_STR;
  static const nsIID IID = NS_IUNICHARSTREAMLISTENER_IID;

  /**
     * Called when the next chunk of data (corresponding to the
     * request) is available.
     *
     * @param aRequest request corresponding to the source of the data
     * @param aContext user defined context
     * @param aData the data chunk
     *
     * An exception thrown from onUnicharDataAvailable has the
     * side-effect of causing the request to be canceled.
     */
  /* void onUnicharDataAvailable (in nsIRequest aRequest, in nsISupports aContext, in AString aData); */
  nsresult OnUnicharDataAvailable(nsIRequest aRequest, nsISupports aContext, nsAString * aData);

}

