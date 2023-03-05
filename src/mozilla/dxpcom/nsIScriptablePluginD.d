/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptablePlugin.idl
 */

module mozilla.dxpcom.nsIScriptablePluginD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptablePlugin;


public import mozilla.dxpcom.nsIScriptablePluginD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIScriptablePlugin */
class nsIScriptablePluginD : public nsISupportsD {

  static const nsIID IID = NS_ISCRIPTABLEPLUGIN_IID;


  alias nsIScriptablePlugin InnerType;

  this(nsIScriptablePlugin intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptablePlugin opCast() {
    return inner;
  }

  void opAssign(nsIScriptablePlugin value) {
    inner = value;
  }

  /**
     * The object to be wrapped and exposed to JavaScript.  It should
     * be an XPCOM object, and it can be the same object as the plugin.
     */
  /* readonly attribute nsQIResult scriptablePeer; */
  void * ScriptablePeer(){
    void * value;
    nsresult __result = inner.GetScriptablePeer(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The interface that XPConnect should use when exposing the peer
     * object to JavaScript.  All scriptable methods on the interface
     * will be available to JavaScript.
     */
  /* readonly attribute nsIIDPtr scriptableInterface; */
  nsIID * ScriptableInterface(){
    nsIID * value;
    nsresult __result = inner.GetScriptableInterface(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIScriptablePlugin inner;

}

