/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFLiteral.idl
 */

module mozilla.xpcom.nsIRDFLiteral;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRDFNode;


/* starting interface:    nsIRDFLiteral */
const char[] NS_IRDFLITERAL_IID_STR = "e0c493d2-9542-11d2-8eb8-00805f29f370";

const nsIID NS_IRDFLITERAL_IID= 
  {0xe0c493d2, 0x9542, 0x11d2, 
    [ 0x8e, 0xb8, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

/**
 * A literal node in the graph, whose value is a string.
 */
extern(Windows)
interface nsIRDFLiteral : nsIRDFNode {
  static const char[] IID_STR = NS_IRDFLITERAL_IID_STR;
  static const nsIID IID = NS_IRDFLITERAL_IID;

  /**
     * The Unicode string value of the literal.
     */
  /* readonly attribute wstring Value; */
  nsresult GetValue(PRUnichar * *aValue);

  /**
     * An unscriptable version used to avoid a string copy. Meant
     * for use as a performance optimization.
     */
  /* [noscript] void GetValueConst ([shared] out wstring aConstValue); */
  nsresult GetValueConst(PRUnichar **aConstValue);

}


/* starting interface:    nsIRDFDate */
const char[] NS_IRDFDATE_IID_STR = "e13a24e1-c77a-11d2-80be-006097b76b8e";

const nsIID NS_IRDFDATE_IID= 
  {0xe13a24e1, 0xc77a, 0x11d2, 
    [ 0x80, 0xbe, 0x00, 0x60, 0x97, 0xb7, 0x6b, 0x8e ]};

/**
 * A literal node in the graph, whose value is a date
 */
extern(Windows)
interface nsIRDFDate : nsIRDFNode {
  static const char[] IID_STR = NS_IRDFDATE_IID_STR;
  static const nsIID IID = NS_IRDFDATE_IID;

  /**
     * The date value of the literal
     */
  /* readonly attribute long long Value; */
  nsresult GetValue(PRInt64 *aValue);

}


/* starting interface:    nsIRDFInt */
const char[] NS_IRDFINT_IID_STR = "e13a24e3-c77a-11d2-80be-006097b76b8e";

const nsIID NS_IRDFINT_IID= 
  {0xe13a24e3, 0xc77a, 0x11d2, 
    [ 0x80, 0xbe, 0x00, 0x60, 0x97, 0xb7, 0x6b, 0x8e ]};

/**
 * A literal node in the graph, whose value is an integer
 */
extern(Windows)
interface nsIRDFInt : nsIRDFNode {
  static const char[] IID_STR = NS_IRDFINT_IID_STR;
  static const nsIID IID = NS_IRDFINT_IID;

  /**
     * The integer value of the literal
     */
  /* readonly attribute long Value; */
  nsresult GetValue(PRInt32 *aValue);

}


/* starting interface:    nsIRDFBlob */
const char[] NS_IRDFBLOB_IID_STR = "237f85a2-1dd2-11b2-94af-8122582fc45e";

const nsIID NS_IRDFBLOB_IID= 
  {0x237f85a2, 0x1dd2, 0x11b2, 
    [ 0x94, 0xaf, 0x81, 0x22, 0x58, 0x2f, 0xc4, 0x5e ]};

/**
 * A literal node in the graph, whose value is arbitrary
 * binary data.
 */
extern(Windows)
interface nsIRDFBlob : nsIRDFNode {
  static const char[] IID_STR = NS_IRDFBLOB_IID_STR;
  static const nsIID IID = NS_IRDFBLOB_IID;

  /**
     * The binary data.
     */
  /* [noscript] readonly attribute const_octet_ptr value; */
  nsresult GetValue(PRUint8 * *aValue);

  /**
     * The data's length.
     */
  /* readonly attribute long length; */
  nsresult GetLength(PRInt32 *aLength);

}

