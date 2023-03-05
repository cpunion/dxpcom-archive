/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentCharsetInfo.idl
 */

module mozilla.xpcom.nsIDocumentCharsetInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAtom;


/* starting interface:    nsIDocumentCharsetInfo */
const char[] NS_IDOCUMENTCHARSETINFO_IID_STR = "2d40b291-01e1-11d4-9d0e-0050040007b2";

const nsIID NS_IDOCUMENTCHARSETINFO_IID= 
  {0x2d40b291, 0x01e1, 0x11d4, 
    [ 0x9d, 0x0e, 0x00, 0x50, 0x04, 0x00, 0x07, 0xb2 ]};

extern(Windows)
interface nsIDocumentCharsetInfo : nsISupports {
  static const char[] IID_STR = NS_IDOCUMENTCHARSETINFO_IID_STR;
  static const nsIID IID = NS_IDOCUMENTCHARSETINFO_IID;

  /* attribute nsIAtom forcedCharset; */
  nsresult GetForcedCharset(nsIAtom  *aForcedCharset);
  nsresult SetForcedCharset(nsIAtom  aForcedCharset);

  /* attribute boolean forcedDetector; */
  nsresult GetForcedDetector(PRBool *aForcedDetector);
  nsresult SetForcedDetector(PRBool aForcedDetector);

  /* attribute nsIAtom parentCharset; */
  nsresult GetParentCharset(nsIAtom  *aParentCharset);
  nsresult SetParentCharset(nsIAtom  aParentCharset);

  /* attribute PRInt32 parentCharsetSource; */
  nsresult GetParentCharsetSource(PRInt32 *aParentCharsetSource);
  nsresult SetParentCharsetSource(PRInt32 aParentCharsetSource);

}

