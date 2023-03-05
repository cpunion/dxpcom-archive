/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPHeaderBlock.idl
 */

module mozilla.xpcom.nsISOAPHeaderBlock;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISOAPBlock;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsISchema;


/* starting interface:    nsISOAPHeaderBlock */
const char[] NS_ISOAPHEADERBLOCK_IID_STR = "063d4a4e-1dd2-11b2-a365-cbaf1651f140";

const nsIID NS_ISOAPHEADERBLOCK_IID= 
  {0x063d4a4e, 0x1dd2, 0x11b2, 
    [ 0xa3, 0x65, 0xcb, 0xaf, 0x16, 0x51, 0xf1, 0x40 ]};

/**
 * This interface encapsulates an arbitrary header block to be used
 * by the soap serialization or protocol.  See the description of the
 * nsISOAPBlock interface for information on how the basics of this
 * interface works.
 */
extern(Windows)
interface nsISOAPHeaderBlock : nsISOAPBlock {
  static const char[] IID_STR = NS_ISOAPHEADERBLOCK_IID_STR;
  static const nsIID IID = NS_ISOAPHEADERBLOCK_IID;

  /**
   * The actor URI of the header block.  If element is set,
   *   then this is a computed value.  If this is modified,
   *   then element  is set to null and all attributes computed 
   *   from element revert to previous uncomputed values.
   */
  /* attribute AString actorURI; */
  nsresult GetActorURI(nsAString * aActorURI);
  nsresult SetActorURI(nsAString * aActorURI);

  /**
   * Flags that the processor must understand this header.
   *   If element is set, then this is a computed value.
   *   If this is modified, then element is set to null and 
   *   all attributes computed from element revert to
   *   previous uncomputed values.
   */
  /* attribute boolean mustUnderstand; */
  nsresult GetMustUnderstand(PRBool *aMustUnderstand);
  nsresult SetMustUnderstand(PRBool aMustUnderstand);

}

