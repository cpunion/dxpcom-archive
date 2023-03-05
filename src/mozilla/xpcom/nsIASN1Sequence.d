/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Sequence.idl
 */

module mozilla.xpcom.nsIASN1Sequence;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIASN1Object;

public import mozilla.xpcom.nsIArray;


/* starting interface:    nsIASN1Sequence */
const char[] NS_IASN1SEQUENCE_IID_STR = "b6b957e6-1dd1-11b2-89d7-e30624f50b00";

const nsIID NS_IASN1SEQUENCE_IID= 
  {0xb6b957e6, 0x1dd1, 0x11b2, 
    [ 0x89, 0xd7, 0xe3, 0x06, 0x24, 0xf5, 0x0b, 0x00 ]};

/**
 * This represents a sequence of ASN.1 objects,
 * where ASN.1 is "Abstract Syntax Notation number One".
 *
 * Overview of how this ASN1 interface is intended to
 * work.
 *
 * First off, the nsIASN1Sequence is any type in ASN1
 * that consists of sub-elements (ie SEQUENCE, SET)
 * nsIASN1Printable Items are all the other types that
 * can be viewed by themselves without interpreting further.
 * Examples would include INTEGER, UTF-8 STRING, OID.
 * These are not intended to directly reflect the numberous
 * types that exist in ASN1, but merely an interface to ease
 * producing a tree display the ASN1 structure of any DER
 * object.
 *
 * The additional state information carried in this interface
 * makes it fit for being used as the data structure
 * when working with visual reprenstation of ASN.1 objects
 * in a human user interface, like in a tree widget
 * where open/close state of nodes must be remembered.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIASN1Sequence : nsIASN1Object {
  static const char[] IID_STR = NS_IASN1SEQUENCE_IID_STR;
  static const nsIID IID = NS_IASN1SEQUENCE_IID;

  /**
   *  The array of objects stored in the sequence.
   */
  /* attribute nsIMutableArray ASN1Objects; */
  nsresult GetASN1Objects(nsIMutableArray  *aASN1Objects);
  nsresult SetASN1Objects(nsIMutableArray  aASN1Objects);

  /**
   *  Whether the node at this position in the ASN.1 data structure
   *  sequence contains sub elements understood by the
   *  application.
   */
  /* attribute boolean isValidContainer; */
  nsresult GetIsValidContainer(PRBool *aIsValidContainer);
  nsresult SetIsValidContainer(PRBool aIsValidContainer);

  /**
   *  Whether the contained objects should be shown or hidden.
   *  A UI implementation can use this flag to store the current
   *  expansion state when shown in a tree widget.
   */
  /* attribute boolean isExpanded; */
  nsresult GetIsExpanded(PRBool *aIsExpanded);
  nsresult SetIsExpanded(PRBool aIsExpanded);

}

