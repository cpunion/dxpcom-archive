/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPParameter.idl
 */

module mozilla.xpcom.nsISOAPParameter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISOAPBlock;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIVariant; /* forward declaration */

public import mozilla.xpcom.nsISOAPEncoding; /* forward declaration */

public import mozilla.xpcom.nsISchema;


/* starting interface:    nsISOAPParameter */
const char[] NS_ISOAPPARAMETER_IID_STR = "99ec6690-535f-11d4-9a58-000064657374";

const nsIID NS_ISOAPPARAMETER_IID= 
  {0x99ec6690, 0x535f, 0x11d4, 
    [ 0x9a, 0x58, 0x00, 0x00, 0x64, 0x65, 0x73, 0x74 ]};

/**
 * This interface encapsulates an arbitrary parameter to be used
 * by the soap serialization or protocol.  See the nsISOAPBlock
 * interface for particulars about how this interface works.
 */
extern(Windows)
interface nsISOAPParameter : nsISOAPBlock {
  static const char[] IID_STR = NS_ISOAPPARAMETER_IID_STR;
  static const nsIID IID = NS_ISOAPPARAMETER_IID;

}

