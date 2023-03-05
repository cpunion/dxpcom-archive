/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIProxyObjectManager.idl
 */

module mozilla.xpcom.nsIProxyObjectManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIEventQueue; /* forward declaration */


/* starting interface:    nsIProxyObjectManager */
const char[] NS_IPROXYOBJECTMANAGER_IID_STR = "eea90d43-b059-11d2-915e-c12b696c9333";

const nsIID NS_IPROXYOBJECTMANAGER_IID= 
  {0xeea90d43, 0xb059, 0x11d2, 
    [ 0x91, 0x5e, 0xc1, 0x2b, 0x69, 0x6c, 0x93, 0x33 ]};

/**
 * See http://www.mozilla.org/projects/xpcom/Proxies.html
 */
extern(Windows)
interface nsIProxyObjectManager : nsISupports {
  static const char[] IID_STR = NS_IPROXYOBJECTMANAGER_IID_STR;
  static const nsIID IID = NS_IPROXYOBJECTMANAGER_IID;

  /**
     * Constants for proxyType
     */
/**
     * Synchronous: Block until result available, like function call.
     */
  enum { INVOKE_SYNC = 1 };

  /**
     * Asynchronous: Return without waiting for result.
     * (Warning: do not pass &pointers into stack when using this flag.)
     */
  enum { INVOKE_ASYNC = 2 };

  /**
     * Always create proxy even if for same thread as current thread.
     */
  enum { FORCE_PROXY_CREATION = 4 };

  /* void getProxyForObject (in nsIEventQueue destQueue, in nsIIDRef iid, in nsISupports object, in PRInt32 proxyType, [iid_is (iid), retval] out nsQIResult result); */
  nsresult GetProxyForObject(nsIEventQueue destQueue, nsIID * iid, nsISupports object, PRInt32 proxyType, void * *result);

  /* void getProxy (in nsIEventQueue destQueue, in nsIIDRef cid, in nsISupports aOuter, in nsIIDRef iid, in PRInt32 proxyType, [iid_is (iid), retval] out nsQIResult result); */
  nsresult GetProxy(nsIEventQueue destQueue, nsIID * cid, nsISupports aOuter, nsIID * iid, PRInt32 proxyType, void * *result);

}

