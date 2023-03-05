/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardOwner.idl
 */

module mozilla.xpcom.nsIClipboardOwner;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsITransferable;


/* starting interface:    nsIClipboardOwner */
const char[] NS_ICLIPBOARDOWNER_IID_STR = "5a31c7a1-e122-11d2-9a57-000064657374";

const nsIID NS_ICLIPBOARDOWNER_IID= 
  {0x5a31c7a1, 0xe122, 0x11d2, 
    [ 0x9a, 0x57, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

extern(Windows)
interface nsIClipboardOwner : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDOWNER_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDOWNER_IID;

  /**
    * Notifies the owner of the clipboard transferable that the
    * transferable is being removed from the clipboard
    *
    * @param  aTransferable The transferable
    * @result NS_Ok if no errors
    */
  /* void LosingOwnership (in nsITransferable aTransferable); */
  nsresult LosingOwnership(nsITransferable aTransferable);

}

