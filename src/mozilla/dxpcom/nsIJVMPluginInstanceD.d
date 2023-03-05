/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIJVMPluginInstance.idl
 */

module mozilla.dxpcom.nsIJVMPluginInstanceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIJVMPluginInstance;


public import mozilla.dxpcom.nsIJVMPluginInstanceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIJVMPluginInstance */
class nsIJVMPluginInstanceD : public nsISupportsD {

  static const nsIID IID = NS_IJVMPLUGININSTANCE_IID;


  alias nsIJVMPluginInstance InnerType;

  this(nsIJVMPluginInstance intr){
    super(intr);
    this.inner = intr;
  }

  nsIJVMPluginInstance opCast() {
    return inner;
  }

  void opAssign(nsIJVMPluginInstance value) {
    inner = value;
  }

  /* [noscript] void GetJavaObject (out jobject result); */
  void GetJavaObject(out jobject result){
    nsresult __result = inner.GetJavaObject(&result);
    CheckException(__result);
  }

  /* [noscript] void GetText (in nChar result); */
  void GetText(char ** result){
    nsresult __result = inner.GetText(result);
    CheckException(__result);
  }

private:
  nsIJVMPluginInstance inner;

}

