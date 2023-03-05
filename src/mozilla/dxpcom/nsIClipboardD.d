/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboard.idl
 */

module mozilla.dxpcom.nsIClipboardD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClipboard;


public import mozilla.dxpcom.nsIClipboardD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsITransferable;
public import mozilla.dxpcom.nsITransferableD;
public import mozilla.xpcom.nsIClipboardOwner;
public import mozilla.dxpcom.nsIClipboardOwnerD;


/* starting wrapper class:    nsIClipboard */
class nsIClipboardD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARD_IID;


  alias nsIClipboard InnerType;

  this(nsIClipboard intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboard opCast() {
    return inner;
  }

  void opAssign(nsIClipboard value) {
    inner = value;
  }

  enum { kSelectionClipboard = 0 }

  enum { kGlobalClipboard = 1 }

  /**
    * Given a transferable, set the data on the native clipboard
    *
    * @param  aTransferable The transferable
    * @param  anOwner The owner of the transferable
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_Ok if no errors
    */
  /* void setData (in nsITransferable aTransferable, in nsIClipboardOwner anOwner, in long aWhichClipboard); */
  void SetData(nsITransferableD aTransferable, nsIClipboardOwnerD anOwner, PRInt32 aWhichClipboard){
    nsresult __result = inner.SetData(aTransferable ? cast(nsITransferable)aTransferable : null, anOwner ? cast(nsIClipboardOwner)anOwner : null, aWhichClipboard);
    CheckException(__result);
  }

  /**
    * Given a transferable, get the clipboard data.
    *
    * @param  aTransferable The transferable
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_Ok if no errors
    */
  /* void getData (in nsITransferable aTransferable, in long aWhichClipboard); */
  void GetData(nsITransferableD aTransferable, PRInt32 aWhichClipboard){
    nsresult __result = inner.GetData(aTransferable ? cast(nsITransferable)aTransferable : null, aWhichClipboard);
    CheckException(__result);
  }

  /**
    * This empties the clipboard and notifies the clipboard owner.
    * This empties the "logical" clipboard. It does not clear the native clipboard.
    *
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_OK if successful.
    */
  /* void emptyClipboard (in long aWhichClipboard); */
  void EmptyClipboard(PRInt32 aWhichClipboard){
    nsresult __result = inner.EmptyClipboard(aWhichClipboard);
    CheckException(__result);
  }

  /**
    * This provides a way to give correct UI feedback about, for instance, a paste 
    * should be allowed. It does _NOT_ actually retreive the data and should be a very
    * inexpensive call. All it does is check if there is data on the clipboard matching
    * any of the flavors in the given list.
    *
    * @aFlavorList - nsISupportsCString's in a nsISupportsArray (for JavaScript).
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @outResult - if data is present matching one of 
    * @result NS_OK if successful.
    */
  /* boolean hasDataMatchingFlavors (in nsISupportsArray aFlavorList, in long aWhichClipboard); */
  PRBool HasDataMatchingFlavors(nsISupportsArrayD aFlavorList, PRInt32 aWhichClipboard){
    PRBool _retval;
    nsresult __result = inner.HasDataMatchingFlavors(aFlavorList ? cast(nsISupportsArray)aFlavorList : null, aWhichClipboard, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * Allows clients to determine if the implementation supports the concept of a 
    * separate clipboard for selection.
    * 
    * @outResult - true if 
    * @result NS_OK if successful.
    */
  /* boolean supportsSelectionClipboard (); */
  PRBool SupportsSelectionClipboard(){
    PRBool _retval;
    nsresult __result = inner.SupportsSelectionClipboard(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIClipboard inner;

}


/* starting wrapper class:    nsIClipboardImage */
class nsIClipboardImageD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARDIMAGE_IID;


  alias nsIClipboardImage InnerType;

  this(nsIClipboardImage intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboardImage opCast() {
    return inner;
  }

  void opAssign(nsIClipboardImage value) {
    inner = value;
  }

  /* [noscript] void setNativeImage (in voidPtr aNativeImageData); */
  void SetNativeImage(void * aNativeImageData){
    nsresult __result = inner.SetNativeImage(aNativeImageData);
    CheckException(__result);
  }

  /* [noscript] void getNativeImage (in voidPtr aNativeImageData); */
  void GetNativeImage(void * aNativeImageData){
    nsresult __result = inner.GetNativeImage(aNativeImageData);
    CheckException(__result);
  }

  /* [noscript] void releaseNativeImage (in voidPtr aNativeImageData); */
  void ReleaseNativeImage(void * aNativeImageData){
    nsresult __result = inner.ReleaseNativeImage(aNativeImageData);
    CheckException(__result);
  }

private:
  nsIClipboardImage inner;

}

