/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISimpleStreamListener.idl
 */

module mozilla.dxpcom.nsISimpleStreamListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISimpleStreamListener;


public import mozilla.dxpcom.nsISimpleStreamListenerD;

public import mozilla.xpcom.nsIStreamListener;
public import mozilla.dxpcom.nsIStreamListenerD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsISimpleStreamListener */
/**
 * A simple stream listener can be used with AsyncRead to supply data to
 * a output stream.
 */
class nsISimpleStreamListenerD : public nsIStreamListenerD {

  static const nsIID IID = NS_ISIMPLESTREAMLISTENER_IID;


  alias nsISimpleStreamListener InnerType;

  this(nsISimpleStreamListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISimpleStreamListener opCast() {
    return inner;
  }

  void opAssign(nsISimpleStreamListener value) {
    inner = value;
  }

  /**
     * Initialize the simple stream listener.
     *
     * @param aSink data will be read from the channel to this output stream.
     *              Must implement writeFrom.
     * @param aObserver optional stream observer (can be NULL)
     */
  /* void init (in nsIOutputStream aSink, in nsIRequestObserver aObserver); */
  void Init(nsIOutputStreamD aSink, nsIRequestObserverD aObserver){
    nsresult __result = inner.Init(aSink ? cast(nsIOutputStream)aSink : null, aObserver ? cast(nsIRequestObserver)aObserver : null);
    CheckException(__result);
  }

private:
  nsISimpleStreamListener inner;

}

