/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstancePeer2.idl
 */

module mozilla.xpcom.nsIPluginInstancePeer2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPluginInstancePeer;


/* starting interface:    nsIPluginInstancePeer2 */
const char[] NS_IPLUGININSTANCEPEER2_IID_STR = "e7d48c00-e1f1-11d2-8360-fbc8abc4ae7c";

const nsIID NS_IPLUGININSTANCEPEER2_IID= 
  {0xe7d48c00, 0xe1f1, 0x11d2, 
    [ 0x83, 0x60, 0xfb, 0xc8, 0xab, 0xc4, 0xae, 0x7c ]};

/**
 * The nsIPluginInstancePeer2 interface extends the nsIPluginInstancePeer
 * interface, providing access to functionality provided by newer browsers.
 * All functionality in nsIPluginInstancePeer can be mapped to the 4.X
 * plugin API.
 */
extern(Windows)
interface nsIPluginInstancePeer2 : nsIPluginInstancePeer {
  static const char[] IID_STR = NS_IPLUGININSTANCEPEER2_IID_STR;
  static const nsIID IID = NS_IPLUGININSTANCEPEER2_IID;

  /**
     * Get the JavaScript window object corresponding to this plugin instance.
     *
   * @param aJSWindow - the resulting JavaScript window object
   * @result          - NS_OK if this operation was successful
     */
  /* readonly attribute JSObjectPtr JSWindow; */
  nsresult GetJSWindow(JSObject * *aJSWindow);

  /**
	 * Get the JavaScript execution thread corresponding to this plugin instance.
	 *
   * @param aJSThread - the resulting JavaScript thread id
   * @result            - NS_OK if this operation was successful
	 */
  /* readonly attribute unsigned long JSThread; */
  nsresult GetJSThread(PRUint32 *aJSThread);

  /**
	 * Get the JavaScript context to this plugin instance.
	 *
   * @param aJSContext - the resulting JavaScript context
   * @result           - NS_OK if this operation was successful
	 */
  /* readonly attribute JSContextPtr JSContext; */
  nsresult GetJSContext(JSContext * *aJSContext);

}

