/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardOwner.idl
 */

module mozilla.dxpcom.nsIClipboardOwnerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClipboardOwner;


public import mozilla.dxpcom.nsIClipboardOwnerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsITransferable;
public import mozilla.dxpcom.nsITransferableD;


/* starting wrapper class:    nsIClipboardOwner */
class nsIClipboardOwnerD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARDOWNER_IID;


  alias nsIClipboardOwner InnerType;

  this(nsIClipboardOwner intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboardOwner opCast() {
    return inner;
  }

  void opAssign(nsIClipboardOwner value) {
    inner = value;
  }

  /**
    * Notifies the owner of the clipboard transferable that the
    * transferable is being removed from the clipboard
    *
    * @param  aTransferable The transferable
    * @result NS_Ok if no errors
    */
  /* void LosingOwnership (in nsITransferable aTransferable); */
  void LosingOwnership(nsITransferableD aTransferable){
    nsresult __result = inner.LosingOwnership(aTransferable ? cast(nsITransferable)aTransferable : null);
    CheckException(__result);
  }

private:
  nsIClipboardOwner inner;

}

