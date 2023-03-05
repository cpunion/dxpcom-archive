/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptablePlugin.idl
 */

module mozilla.xpcom.nsIScriptablePlugin;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIScriptablePlugin */
const char[] NS_ISCRIPTABLEPLUGIN_IID_STR = "f1a12bba-1dd1-11b2-a95f-cdc118605e92";

const nsIID NS_ISCRIPTABLEPLUGIN_IID= 
  {0xf1a12bba, 0x1dd1, 0x11b2, 
    [ 0xa9, 0x5f, 0xcd, 0xc1, 0x18, 0x60, 0x5e, 0x92 ]};

extern(Windows)
interface nsIScriptablePlugin : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEPLUGIN_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEPLUGIN_IID;

  /**
     * The object to be wrapped and exposed to JavaScript.  It should
     * be an XPCOM object, and it can be the same object as the plugin.
     */
  /* readonly attribute nsQIResult scriptablePeer; */
  nsresult GetScriptablePeer(void * *aScriptablePeer);

  /**
     * The interface that XPConnect should use when exposing the peer
     * object to JavaScript.  All scriptable methods on the interface
     * will be available to JavaScript.
     */
  /* readonly attribute nsIIDPtr scriptableInterface; */
  nsresult GetScriptableInterface(nsIID * *aScriptableInterface);

}

