/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Sequence.idl
 */

module mozilla.dxpcom.nsIASN1SequenceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIASN1Sequence;


public import mozilla.dxpcom.nsIASN1SequenceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIASN1Object;
public import mozilla.dxpcom.nsIASN1ObjectD;

public import mozilla.xpcom.nsIArray;

import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsIASN1Sequence */
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
class nsIASN1SequenceD : public nsIASN1ObjectD {

  static const nsIID IID = NS_IASN1SEQUENCE_IID;


  alias nsIASN1Sequence InnerType;

  this(nsIASN1Sequence intr){
    super(intr);
    this.inner = intr;
  }

  nsIASN1Sequence opCast() {
    return inner;
  }

  void opAssign(nsIASN1Sequence value) {
    inner = value;
  }

  /**
   *  The array of objects stored in the sequence.
   */
  /* attribute nsIMutableArray ASN1Objects; */
  nsIMutableArrayD  ASN1Objects(){
    nsIMutableArray value;
    nsresult __result = inner.GetASN1Objects(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void ASN1Objects(nsIMutableArrayD  aASN1Objects){
    nsIMutableArray value;
    nsresult __result = inner.SetASN1Objects(value);
    CheckException(__result);
  }

  /**
   *  Whether the node at this position in the ASN.1 data structure
   *  sequence contains sub elements understood by the
   *  application.
   */
  /* attribute boolean isValidContainer; */
  PRBool IsValidContainer(){
    PRBool value;
    nsresult __result = inner.GetIsValidContainer(&value);
    CheckException(__result);
    return value;
  }
  void IsValidContainer(PRBool aIsValidContainer){
    nsresult __result = inner.SetIsValidContainer(aIsValidContainer);
    CheckException(__result);
  }

  /**
   *  Whether the contained objects should be shown or hidden.
   *  A UI implementation can use this flag to store the current
   *  expansion state when shown in a tree widget.
   */
  /* attribute boolean isExpanded; */
  PRBool IsExpanded(){
    PRBool value;
    nsresult __result = inner.GetIsExpanded(&value);
    CheckException(__result);
    return value;
  }
  void IsExpanded(PRBool aIsExpanded){
    nsresult __result = inner.SetIsExpanded(aIsExpanded);
    CheckException(__result);
  }

private:
  nsIASN1Sequence inner;

}

