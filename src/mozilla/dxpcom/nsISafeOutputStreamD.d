/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISafeOutputStream.idl
 */

module mozilla.dxpcom.nsISafeOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISafeOutputStream;


public import mozilla.dxpcom.nsISafeOutputStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISafeOutputStream */
/**
 * This interface provides a mechanism to control an output stream
 * that takes care not to overwrite an existing target until it is known
 * that all writes to the destination succeeded.
 * 
 * An object that supports this interface is intended to also support
 * nsIOutputStream.
 *
 * For example, a file output stream that supports this interface writes to
 * a temporary file, and moves it over the original file when |finish| is
 * called only if the stream can be successfully closed and all writes
 * succeeded.  If |finish| is called but something went wrong during
 * writing, it will delete the temporary file and not touch the original.
 * If the stream is closed by calling |close| directly, or the stream
 * goes away, the original file will not be overwritten, and the temporary
 * file will be deleted.
 *
 * Currently, this interface is implemented only for file output streams.
 */
class nsISafeOutputStreamD : public nsISupportsD {

  static const nsIID IID = NS_ISAFEOUTPUTSTREAM_IID;


  alias nsISafeOutputStream InnerType;

  this(nsISafeOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsISafeOutputStream opCast() {
    return inner;
  }

  void opAssign(nsISafeOutputStream value) {
    inner = value;
  }

  /**
     * Call this method to close the stream and cause the original target
     * to be overwritten. Note: if any call to |write| failed to write out
     * all of the data given to it, then calling this method will |close| the
     * stream and return failure. Further, if closing the stream fails, this
     * method will return failure. The original target will be overwritten only
     * if all calls to |write| succeeded and the stream was successfully closed.
     */
  /* void finish (); */
  void Finish(){
    nsresult __result = inner.Finish();
    CheckException(__result);
  }

private:
  nsISafeOutputStream inner;

}

