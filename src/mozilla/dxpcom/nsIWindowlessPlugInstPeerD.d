/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowlessPlugInstPeer.idl
 */

module mozilla.dxpcom.nsIWindowlessPlugInstPeerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWindowlessPlugInstPeer;


public import mozilla.dxpcom.nsIWindowlessPlugInstPeerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;


/* starting wrapper class:    nsIWindowlessPluginInstancePeer */
class nsIWindowlessPluginInstancePeerD : public nsISupportsD {

  static const nsIID IID = NS_IWINDOWLESSPLUGININSTANCEPEER_IID;


  alias nsIWindowlessPluginInstancePeer InnerType;

  this(nsIWindowlessPluginInstancePeer intr){
    super(intr);
    this.inner = intr;
  }

  nsIWindowlessPluginInstancePeer opCast() {
    return inner;
  }

  void opAssign(nsIWindowlessPluginInstancePeer value) {
    inner = value;
  }

  /** 
   * Corresponds to NPN_InvalidateRect
   */
  /* void invalidateRect (in nsPluginRectPtr aRect); */
  void InvalidateRect(nsPluginRect * aRect){
    nsresult __result = inner.InvalidateRect(aRect);
    CheckException(__result);
  }

  /** 
   * Corresponds to NPN_InvalidateRegion
   */
  /* void invalidateRegion (in nsPluginRegion aRegion); */
  void InvalidateRegion(nsPluginRegion aRegion){
    nsresult __result = inner.InvalidateRegion(aRegion);
    CheckException(__result);
  }

  /** 
   * Corresponds to NPN_ForceRedraw
   */
  /* void forceRedraw (); */
  void ForceRedraw(){
    nsresult __result = inner.ForceRedraw();
    CheckException(__result);
  }

private:
  nsIWindowlessPluginInstancePeer inner;

}

