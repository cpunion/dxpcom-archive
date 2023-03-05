/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstancePeer2.idl
 */

module mozilla.dxpcom.nsIPluginInstancePeer2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginInstancePeer2;


public import mozilla.dxpcom.nsIPluginInstancePeer2D;

public import mozilla.xpcom.nsIPluginInstancePeer;
public import mozilla.dxpcom.nsIPluginInstancePeerD;


/* starting wrapper class:    nsIPluginInstancePeer2 */
/**
 * The nsIPluginInstancePeer2 interface extends the nsIPluginInstancePeer
 * interface, providing access to functionality provided by newer browsers.
 * All functionality in nsIPluginInstancePeer can be mapped to the 4.X
 * plugin API.
 */
class nsIPluginInstancePeer2D : public nsIPluginInstancePeerD {

  static const nsIID IID = NS_IPLUGININSTANCEPEER2_IID;


  alias nsIPluginInstancePeer2 InnerType;

  this(nsIPluginInstancePeer2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginInstancePeer2 opCast() {
    return inner;
  }

  void opAssign(nsIPluginInstancePeer2 value) {
    inner = value;
  }

  /**
     * Get the JavaScript window object corresponding to this plugin instance.
     *
   * @param aJSWindow - the resulting JavaScript window object
   * @result          - NS_OK if this operation was successful
     */
  /* readonly attribute JSObjectPtr JSWindow; */
  JSObject * JSWindow_(){
    JSObject * value;
    nsresult __result = inner.GetJSWindow(&value);
    CheckException(__result);
    return value;
  }

  /**
	 * Get the JavaScript execution thread corresponding to this plugin instance.
	 *
   * @param aJSThread - the resulting JavaScript thread id
   * @result            - NS_OK if this operation was successful
	 */
  /* readonly attribute unsigned long JSThread; */
  PRUint32 JSThread_(){
    PRUint32 value;
    nsresult __result = inner.GetJSThread(&value);
    CheckException(__result);
    return value;
  }

  /**
	 * Get the JavaScript context to this plugin instance.
	 *
   * @param aJSContext - the resulting JavaScript context
   * @result           - NS_OK if this operation was successful
	 */
  /* readonly attribute JSContextPtr JSContext; */
  JSContext * JSContext_(){
    JSContext * value;
    nsresult __result = inner.GetJSContext(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIPluginInstancePeer2 inner;

}

