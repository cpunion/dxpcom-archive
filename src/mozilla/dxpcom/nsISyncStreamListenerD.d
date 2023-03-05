/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISyncStreamListener.idl
 */

module mozilla.dxpcom.nsISyncStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISyncStreamListener;


public import mozilla.dxpcom.nsISyncStreamListenerD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsISyncStreamListener */
class nsISyncStreamListenerD : public nsIStreamListenerD {

  static const nsIID IID = NS_ISYNCSTREAMLISTENER_IID;


  alias nsISyncStreamListener InnerType;

  this(nsISyncStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISyncStreamListener opCast() {
    return inner;
  }

  void opAssign(nsISyncStreamListener value) {
    inner = value;
  }

  /**
     * Returns an input stream that when read will fetch data delivered to the
     * sync stream listener.  The nsIInputStream implementation will wait for
     * OnDataAvailable events before returning from Read.
     *
     * NOTE: Reading from the returned nsIInputStream may spin the current
     * thread's event queue, which could result in any event being processed.
     */
  /* readonly attribute nsIInputStream inputStream; */
  nsIInputStreamD  InputStream(){
    nsIInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }

private:
  nsISyncStreamListener inner;

}

