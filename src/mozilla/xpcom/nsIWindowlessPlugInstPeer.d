/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWindowlessPlugInstPeer.idl
 */

module mozilla.xpcom.nsIWindowlessPlugInstPeer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;


/* starting interface:    nsIWindowlessPluginInstancePeer */
const char[] NS_IWINDOWLESSPLUGININSTANCEPEER_IID_STR = "57b4e2f0-019b-11d2-815b-006008119d7a";

const nsIID NS_IWINDOWLESSPLUGININSTANCEPEER_IID= 
  {0x57b4e2f0, 0x019b, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

extern(Windows)
interface nsIWindowlessPluginInstancePeer : nsISupports {
  static const char[] IID_STR = NS_IWINDOWLESSPLUGININSTANCEPEER_IID_STR;
  static const nsIID IID = NS_IWINDOWLESSPLUGININSTANCEPEER_IID;

  /** 
   * Corresponds to NPN_InvalidateRect
   */
  /* void invalidateRect (in nsPluginRectPtr aRect); */
  nsresult InvalidateRect(nsPluginRect * aRect);

  /** 
   * Corresponds to NPN_InvalidateRegion
   */
  /* void invalidateRegion (in nsPluginRegion aRegion); */
  nsresult InvalidateRegion(nsPluginRegion aRegion);

  /** 
   * Corresponds to NPN_ForceRedraw
   */
  /* void forceRedraw (); */
  nsresult ForceRedraw();

}

