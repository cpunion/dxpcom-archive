/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXSLTProcessorPrivate.idl
 */

module mozilla.xpcom.nsIXSLTProcessorPrivate;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIXSLTProcessorPrivate */
const char[] NS_IXSLTPROCESSORPRIVATE_IID_STR = "b8d727f7-67f4-4dc1-a318-ec0c87280816";

const nsIID NS_IXSLTPROCESSORPRIVATE_IID= 
  {0xb8d727f7, 0x67f4, 0x4dc1, 
    [ 0xa3, 0x18, 0xec, 0x0c, 0x87, 0x28, 0x08, 0x16 ]};

extern(Windows)
interface nsIXSLTProcessorPrivate : nsISupports {
  static const char[] IID_STR = NS_IXSLTPROCESSORPRIVATE_IID_STR;
  static const nsIID IID = NS_IXSLTPROCESSORPRIVATE_IID;

  /**
   * Disables all loading of external documents, such as from
   * <xsl:import> and document()
   * Defaults to off and is *not* reset by calls to reset()
   */
  enum { DISABLE_ALL_LOADS = 1U };

  /**
   * Flags for this processor. Defaults to 0. See individual flags above
   * for documentation for effect of reset()
   */
  /* attribute unsigned long flags; */
  nsresult GetFlags(PRUint32 *aFlags);
  nsresult SetFlags(PRUint32 aFlags);

}

