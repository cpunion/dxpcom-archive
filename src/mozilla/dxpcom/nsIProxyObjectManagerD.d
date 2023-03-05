/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyObjectManager.idl
 */

module mozilla.dxpcom.nsIProxyObjectManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIProxyObjectManager;


public import mozilla.dxpcom.nsIProxyObjectManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIEventQueue;

public import mozilla.dxpcom.nsIEventQueueD;


/* starting wrapper class:    nsIProxyObjectManager */
/**
 * See http://www.mozilla.org/projects/xpcom/Proxies.html
 */
class nsIProxyObjectManagerD : public nsISupportsD {

  static const nsIID IID = NS_IPROXYOBJECTMANAGER_IID;


  alias nsIProxyObjectManager InnerType;

  this(nsIProxyObjectManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIProxyObjectManager opCast() {
    return inner;
  }

  void opAssign(nsIProxyObjectManager value) {
    inner = value;
  }

  /**
     * Constants for proxyType
     */
/**
     * Synchronous: Block until result available, like function call.
     */
  enum { INVOKE_SYNC = 1 }

  /**
     * Asynchronous: Return without waiting for result.
     * (Warning: do not pass &pointers into stack when using this flag.)
     */
  enum { INVOKE_ASYNC = 2 }

  /**
     * Always create proxy even if for same thread as current thread.
     */
  enum { FORCE_PROXY_CREATION = 4 }

  /* void getProxyForObject (in nsIEventQueue destQueue, in nsIIDRef iid, in nsISupports object, in PRInt32 proxyType, [iid_is (iid), retval] out nsQIResult result); */
  void GetProxyForObject(nsIEventQueueD destQueue, nsIID * iid, nsISupportsD object, PRInt32 proxyType, out void * result){
    nsresult __result = inner.GetProxyForObject(destQueue ? cast(nsIEventQueue)destQueue : null, iid, object ? cast(nsISupports)object : null, proxyType, &result);
    CheckException(__result);
  }

  /* void getProxy (in nsIEventQueue destQueue, in nsIIDRef cid, in nsISupports aOuter, in nsIIDRef iid, in PRInt32 proxyType, [iid_is (iid), retval] out nsQIResult result); */
  void GetProxy(nsIEventQueueD destQueue, nsIID * cid, nsISupportsD aOuter, nsIID * iid, PRInt32 proxyType, out void * result){
    nsresult __result = inner.GetProxy(destQueue ? cast(nsIEventQueue)destQueue : null, cid, aOuter ? cast(nsISupports)aOuter : null, iid, proxyType, &result);
    CheckException(__result);
  }

private:
  nsIProxyObjectManager inner;

}

