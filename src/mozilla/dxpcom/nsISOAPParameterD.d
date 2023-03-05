/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPParameter.idl
 */

module mozilla.dxpcom.nsISOAPParameterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPParameter;


public import mozilla.dxpcom.nsISOAPParameterD;

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


/* starting wrapper class:    nsISOAPParameter */
/**
 * This interface encapsulates an arbitrary parameter to be used
 * by the soap serialization or protocol.  See the nsISOAPBlock
 * interface for particulars about how this interface works.
 */
class nsISOAPParameterD : public nsISOAPBlockD {

  static const nsIID IID = NS_ISOAPPARAMETER_IID;


  alias nsISOAPParameter InnerType;

  this(nsISOAPParameter intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPParameter opCast() {
    return inner;
  }

  void opAssign(nsISOAPParameter value) {
    inner = value;
  }

private:
  nsISOAPParameter inner;

}

