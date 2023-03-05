/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPopupBoxObject.idl
 */

module mozilla.dxpcom.nsIPopupBoxObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPopupBoxObject;


public import mozilla.dxpcom.nsIPopupBoxObjectD;

public import mozilla.xpcom.nsIBoxObject;
public import mozilla.dxpcom.nsIBoxObjectD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIPopupBoxObject */
class nsIPopupBoxObjectD : public nsISupportsD {

  static const nsIID IID = NS_IPOPUPBOXOBJECT_IID;


  alias nsIPopupBoxObject InnerType;

  this(nsIPopupBoxObject intr){
    super(intr);
    this.inner = intr;
  }

  nsIPopupBoxObject opCast() {
    return inner;
  }

  void opAssign(nsIPopupBoxObject value) {
    inner = value;
  }

  /* void showPopup (in nsIDOMElement srcContent, in nsIDOMElement popupContent, in long xpos, in long ypos, in wstring popupType, in wstring anchorAlignment, in wstring popupAlignment); */
  void ShowPopup(nsIDOMElementD srcContent, nsIDOMElementD popupContent, PRInt32 xpos, PRInt32 ypos, PRUnichar*popupType, PRUnichar*anchorAlignment, PRUnichar*popupAlignment){
    nsresult __result = inner.ShowPopup(srcContent ? cast(nsIDOMElement)srcContent : null, popupContent ? cast(nsIDOMElement)popupContent : null, xpos, ypos, popupType, anchorAlignment, popupAlignment);
    CheckException(__result);
  }

  /* void hidePopup (); */
  void HidePopup(){
    nsresult __result = inner.HidePopup();
    CheckException(__result);
  }

  /** 
   * Allow the popup to automatically position itself.
   */
  /* attribute boolean autoPosition; */
  PRBool AutoPosition(){
    PRBool value;
    nsresult __result = inner.GetAutoPosition(&value);
    CheckException(__result);
    return value;
  }
  void AutoPosition(PRBool aAutoPosition){
    nsresult __result = inner.SetAutoPosition(aAutoPosition);
    CheckException(__result);
  }

  /**
   * Allow the popup to eat all key events
   */
  /* void enableKeyboardNavigator (in boolean enableKeyboardNavigator); */
  void EnableKeyboardNavigator(PRBool enableKeyboardNavigator){
    nsresult __result = inner.EnableKeyboardNavigator(enableKeyboardNavigator);
    CheckException(__result);
  }

  /** 
   * Enable automatic popup dismissal
   */
  /* void enableRollup (in boolean enableRollup); */
  void EnableRollup(PRBool enableRollup){
    nsresult __result = inner.EnableRollup(enableRollup);
    CheckException(__result);
  }

  /** 
   * Size the popup to the given dimensions
   */
  /* void sizeTo (in long width, in long height); */
  void SizeTo(PRInt32 width, PRInt32 height){
    nsresult __result = inner.SizeTo(width, height);
    CheckException(__result);
  }

  /**
   * Move the popup to a point on screen
   */
  /* void moveTo (in long left, in long top); */
  void MoveTo(PRInt32 left, PRInt32 top){
    nsresult __result = inner.MoveTo(left, top);
    CheckException(__result);
  }

private:
  nsIPopupBoxObject inner;

}

