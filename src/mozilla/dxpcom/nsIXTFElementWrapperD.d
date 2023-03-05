/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFElementWrapper.idl
 */

module mozilla.dxpcom.nsIXTFElementWrapperD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXTFElementWrapper;


public import mozilla.dxpcom.nsIXTFElementWrapperD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAtom;

public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;


/* starting wrapper class:    nsIXTFElementWrapper */
class nsIXTFElementWrapperD : public nsISupportsD {

  static const nsIID IID = NS_IXTFELEMENTWRAPPER_IID;


  alias nsIXTFElementWrapper InnerType;

  this(nsIXTFElementWrapper intr){
    super(intr);
    this.inner = intr;
  }

  nsIXTFElementWrapper opCast() {
    return inner;
  }

  void opAssign(nsIXTFElementWrapper value) {
    inner = value;
  }

  /* readonly attribute nsIDOMElement elementNode; */
  nsIDOMElementD  ElementNode(){
    nsIDOMElement value;
    nsresult __result = inner.GetElementNode(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /* readonly attribute nsIDOMElement documentFrameElement; */
  nsIDOMElementD  DocumentFrameElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetDocumentFrameElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

  /**
   * Events can be unmasked by setting the corresponding bit as given
   * by the NOTIFY_* constants in nsIXTFElement and nsIXTFVisual:
   */
  /* attribute unsigned long notificationMask; */
  PRUint32 NotificationMask(){
    PRUint32 value;
    nsresult __result = inner.GetNotificationMask(&value);
    CheckException(__result);
    return value;
  }
  void NotificationMask(PRUint32 aNotificationMask){
    nsresult __result = inner.SetNotificationMask(aNotificationMask);
    CheckException(__result);
  }

  /**
   * Sets the intrinsic state for the element.
   * @see nsIContent::IntrinsicState().
   */
  /* void setIntrinsicState (in long newState); */
  void SetIntrinsicState(PRInt32 newState){
    nsresult __result = inner.SetIntrinsicState(newState);
    CheckException(__result);
  }

private:
  nsIXTFElementWrapper inner;

}

