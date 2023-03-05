/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGlobalHistory3.idl
 */

module mozilla.dxpcom.nsIGlobalHistory3D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIGlobalHistory3;


public import mozilla.dxpcom.nsIGlobalHistory3D;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIGlobalHistory2;
public import mozilla.dxpcom.nsIGlobalHistory2D;

public import mozilla.xpcom.nsIChannel;

public import mozilla.dxpcom.nsIChannelD;


/* starting wrapper class:    nsIGlobalHistory3 */
/**
 * Provides information about global history to gecko, extending GlobalHistory2
 */
class nsIGlobalHistory3D : public nsIGlobalHistory2D {

  static const nsIID IID = NS_IGLOBALHISTORY3_IID;


  alias nsIGlobalHistory3 InnerType;

  this(nsIGlobalHistory3 intr){
    super(intr);
    this.inner = intr;
  }

  nsIGlobalHistory3 opCast() {
    return inner;
  }

  void opAssign(nsIGlobalHistory3 value) {
    inner = value;
  }

  /**
   * Notifies the history system that the page loading via aOldChannel
   * redirected to aNewChannel. Implementations should generally add the URI for
   * aOldChannel to history for link coloring, but are advised not to expose it
   * in the history user interface. This function is preferred if
   * nsIGlobalHistory3 is available. Otherwise, nsIGlobalHistory2.addURI should
   * be called with redirect=true.
   *
   * This function is preferred to nsIGlobalHistory2.addURI because it provides
   * more information (including the redirect destination, channels involved,
   * and redirect flags) to the history implementation.
   *
   * For implementors of nsIGlobalHistory3: The history implementation is
   * responsible for sending NS_LINK_VISITED_EVENT_TOPIC to observers for
   * redirect pages. This notification must be sent for history consumers for
   * all non-redirect pages.
   *
   * @param aToplevel whether the URI is loaded in a top-level window.  If
   *        false, the load is in a subframe.
   *
   * The other params to this function are the same as those for
   * nsIChannelEventSink::OnChannelRedirect.
   *
   * Note: Implementors who wish to implement this interface but rely on
   * nsIGlobalHistory2.addURI for redirect processing may throw
   * NS_ERROR_NOT_IMPLEMENTED from this method.  If they do so, then callers
   * must call nsIGlobalHistory2.addURI upon getting the
   * NS_ERROR_NOT_IMPLEMENTED result.
   */
  /* void addDocumentRedirect (in nsIChannel aOldChannel, in nsIChannel aNewChannel, in PRInt32 aFlags, in boolean aTopLevel); */
  void AddDocumentRedirect(nsIChannelD aOldChannel, nsIChannelD aNewChannel, PRInt32 aFlags, PRBool aTopLevel){
    nsresult __result = inner.AddDocumentRedirect(aOldChannel ? cast(nsIChannel)aOldChannel : null, aNewChannel ? cast(nsIChannel)aNewChannel : null, aFlags, aTopLevel);
    CheckException(__result);
  }

private:
  nsIGlobalHistory3 inner;

}

