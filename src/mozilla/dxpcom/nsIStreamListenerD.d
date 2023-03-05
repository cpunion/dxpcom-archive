/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStreamListener.idl
 */

module mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStreamListener;


public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIRequestObserver;
public import mozilla.dxpcom.nsIRequestObserverD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIStreamListener */
/**
 * nsIStreamListener
 *
 * @status FROZEN
 */
class nsIStreamListenerD : public nsIRequestObserverD {

  static const nsIID IID = NS_ISTREAMLISTENER_IID;


  alias nsIStreamListener InnerType;

  this(nsIStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIStreamListener opCast() {
    return inner;
  }

  void opAssign(nsIStreamListener value) {
    inner = value;
  }

  /**
     * Called when the next chunk of data (corresponding to the request) may
     * be read without blocking the calling thread.  The onDataAvailable impl
     * must read exactly |aCount| bytes of data before returning.
     *
     * @param aRequest request corresponding to the source of the data
     * @param aContext user defined context
     * @param aInputStream input stream containing the data chunk
     * @param aOffset
     *        Number of bytes that were sent in previous onDataAvailable calls
     *        for this request. In other words, the sum of all previous count
     *        parameters.
     *        If that number is greater than or equal to 2^32, this parameter
     *        will be PR_UINT32_MAX (2^32 - 1).
     * @param aCount number of bytes available in the stream
     *
     * NOTE: The aInputStream parameter must implement readSegments.
     *
     * An exception thrown from onDataAvailable has the side-effect of
     * causing the request to be canceled.
     */
  /* void onDataAvailable (in nsIRequest aRequest, in nsISupports aContext, in nsIInputStream aInputStream, in unsigned long aOffset, in unsigned long aCount); */
  void OnDataAvailable(nsIRequestD aRequest, nsISupportsD aContext, nsIInputStreamD aInputStream, PRUint32 aOffset, PRUint32 aCount){
    nsresult __result = inner.OnDataAvailable(aRequest ? cast(nsIRequest)aRequest : null, aContext ? cast(nsISupports)aContext : null, aInputStream ? cast(nsIInputStream)aInputStream : null, aOffset, aCount);
    CheckException(__result);
  }

private:
  nsIStreamListener inner;

}

