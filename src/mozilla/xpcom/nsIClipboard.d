/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboard.idl
 */

module mozilla.xpcom.nsIClipboard;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsITransferable;
public import mozilla.xpcom.nsIClipboardOwner;


/* starting interface:    nsIClipboard */
const char[] NS_ICLIPBOARD_IID_STR = "8b5314ba-db01-11d2-96ce-0060b0fb9956";

const nsIID NS_ICLIPBOARD_IID= 
  {0x8b5314ba, 0xdb01, 0x11d2, 
    [ 0x96, 0xce, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

extern(Windows)
interface nsIClipboard : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARD_IID_STR;
  static const nsIID IID = NS_ICLIPBOARD_IID;

  enum { kSelectionClipboard = 0 };

  enum { kGlobalClipboard = 1 };

  /**
    * Given a transferable, set the data on the native clipboard
    *
    * @param  aTransferable The transferable
    * @param  anOwner The owner of the transferable
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_Ok if no errors
    */
  /* void setData (in nsITransferable aTransferable, in nsIClipboardOwner anOwner, in long aWhichClipboard); */
  nsresult SetData(nsITransferable aTransferable, nsIClipboardOwner anOwner, PRInt32 aWhichClipboard);

  /**
    * Given a transferable, get the clipboard data.
    *
    * @param  aTransferable The transferable
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_Ok if no errors
    */
  /* void getData (in nsITransferable aTransferable, in long aWhichClipboard); */
  nsresult GetData(nsITransferable aTransferable, PRInt32 aWhichClipboard);

  /**
    * This empties the clipboard and notifies the clipboard owner.
    * This empties the "logical" clipboard. It does not clear the native clipboard.
    *
    * @param  aWhichClipboard Specifies the clipboard to which this operation applies.
    * @result NS_OK if successful.
    */
  /* void emptyClipboard (in long aWhichClipboard); */
  nsresult EmptyClipboard(PRInt32 aWhichClipboard);

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
  nsresult HasDataMatchingFlavors(nsISupportsArray aFlavorList, PRInt32 aWhichClipboard, PRBool *_retval);

  /**
    * Allows clients to determine if the implementation supports the concept of a 
    * separate clipboard for selection.
    * 
    * @outResult - true if 
    * @result NS_OK if successful.
    */
  /* boolean supportsSelectionClipboard (); */
  nsresult SupportsSelectionClipboard(PRBool *_retval);

}


/* starting interface:    nsIClipboardImage */
const char[] NS_ICLIPBOARDIMAGE_IID_STR = "db21eb6c-aebb-4d16-94ec-bcd8bbf513ae";

const nsIID NS_ICLIPBOARDIMAGE_IID= 
  {0xdb21eb6c, 0xaebb, 0x4d16, 
    [ 0x94, 0xec, 0xbc, 0xd8, 0xbb, 0xf5, 0x13, 0xae ]};

extern(Windows)
interface nsIClipboardImage : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDIMAGE_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDIMAGE_IID;

  /* [noscript] void setNativeImage (in voidPtr aNativeImageData); */
  nsresult SetNativeImage(void * aNativeImageData);

  /* [noscript] void getNativeImage (in voidPtr aNativeImageData); */
  nsresult GetNativeImage(void * aNativeImageData);

  /* [noscript] void releaseNativeImage (in voidPtr aNativeImageData); */
  nsresult ReleaseNativeImage(void * aNativeImageData);

}

