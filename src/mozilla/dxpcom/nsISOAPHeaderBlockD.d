/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPHeaderBlock.idl
 */

module mozilla.dxpcom.nsISOAPHeaderBlockD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPHeaderBlock;


public import mozilla.dxpcom.nsISOAPHeaderBlockD;

public import mozilla.xpcom.nsISOAPBlock;
public import mozilla.dxpcom.nsISOAPBlockD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;

public import mozilla.xpcom.nsIVariant;

public import mozilla.dxpcom.nsIVariantD;

public import mozilla.xpcom.nsISOAPEncoding;

public import mozilla.dxpcom.nsISOAPEncodingD;

public import mozilla.xpcom.nsISchema;

import mozilla.dxpcom.nsISchemaD;


/* starting wrapper class:    nsISOAPHeaderBlock */
/**
 * This interface encapsulates an arbitrary header block to be used
 * by the soap serialization or protocol.  See the description of the
 * nsISOAPBlock interface for information on how the basics of this
 * interface works.
 */
class nsISOAPHeaderBlockD : public nsISOAPBlockD {

  static const nsIID IID = NS_ISOAPHEADERBLOCK_IID;


  alias nsISOAPHeaderBlock InnerType;

  this(nsISOAPHeaderBlock intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPHeaderBlock opCast() {
    return inner;
  }

  void opAssign(nsISOAPHeaderBlock value) {
    inner = value;
  }

  /**
   * The actor URI of the header block.  If element is set,
   *   then this is a computed value.  If this is modified,
   *   then element  is set to null and all attributes computed 
   *   from element revert to previous uncomputed values.
   */
  /* attribute AString actorURI; */
  wchar[] ActorURI(){
    scope auto value = new AString();
    nsresult __result = inner.GetActorURI(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ActorURI(wchar[] aActorURI){
    scope auto value = new AString(aActorURI);
    nsresult __result = inner.SetActorURI(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * Flags that the processor must understand this header.
   *   If element is set, then this is a computed value.
   *   If this is modified, then element is set to null and 
   *   all attributes computed from element revert to
   *   previous uncomputed values.
   */
  /* attribute boolean mustUnderstand; */
  PRBool MustUnderstand(){
    PRBool value;
    nsresult __result = inner.GetMustUnderstand(&value);
    CheckException(__result);
    return value;
  }
  void MustUnderstand(PRBool aMustUnderstand){
    nsresult __result = inner.SetMustUnderstand(aMustUnderstand);
    CheckException(__result);
  }

private:
  nsISOAPHeaderBlock inner;

}

