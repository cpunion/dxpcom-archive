/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Object.idl
 */

module mozilla.xpcom.nsIASN1Object;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIASN1Object */
const char[] NS_IASN1OBJECT_IID_STR = "ba8bf582-1dd1-11b2-898c-f40246bc9a63";

const nsIID NS_IASN1OBJECT_IID= 
  {0xba8bf582, 0x1dd1, 0x11b2, 
    [ 0x89, 0x8c, 0xf4, 0x02, 0x46, 0xbc, 0x9a, 0x63 ]};

/**
 * This represents an ASN.1 object,
 * where ASN.1 is "Abstract Syntax Notation number One".
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
interface nsIASN1Object : nsISupports {
  static const char[] IID_STR = NS_IASN1OBJECT_IID_STR;
  static const nsIID IID = NS_IASN1OBJECT_IID;

  /**
   *  Identifiers for the possible types of object.
   */
  enum { ASN1_END_CONTENTS = 0U };

  enum { ASN1_BOOLEAN = 1U };

  enum { ASN1_INTEGER = 2U };

  enum { ASN1_BIT_STRING = 3U };

  enum { ASN1_OCTET_STRING = 4U };

  enum { ASN1_NULL = 5U };

  enum { ASN1_OBJECT_ID = 6U };

  enum { ASN1_ENUMERATED = 10U };

  enum { ASN1_UTF8_STRING = 12U };

  enum { ASN1_SEQUENCE = 16U };

  enum { ASN1_SET = 17U };

  enum { ASN1_PRINTABLE_STRING = 19U };

  enum { ASN1_T61_STRING = 20U };

  enum { ASN1_IA5_STRING = 22U };

  enum { ASN1_UTC_TIME = 23U };

  enum { ASN1_GEN_TIME = 24U };

  enum { ASN1_VISIBLE_STRING = 26U };

  enum { ASN1_UNIVERSAL_STRING = 28U };

  enum { ASN1_BMP_STRING = 30U };

  enum { ASN1_HIGH_TAG_NUMBER = 31U };

  enum { ASN1_CONTEXT_SPECIFIC = 32U };

  enum { ASN1_APPLICATION = 33U };

  enum { ASN1_PRIVATE = 34U };

  /**
   *  "type" will be equal to one of the defined object identifiers.
   */
  /* attribute unsigned long type; */
  nsresult GetType(PRUint32 *aType);
  nsresult SetType(PRUint32 aType);

  /**
   *  This contains a tag as explained in ASN.1 standards documents.
   */
  /* attribute unsigned long tag; */
  nsresult GetTag(PRUint32 *aTag);
  nsresult SetTag(PRUint32 aTag);

  /**
   *  "displayName" contains a human readable explanatory label.
   */
  /* attribute AString displayName; */
  nsresult GetDisplayName(nsAString * aDisplayName);
  nsresult SetDisplayName(nsAString * aDisplayName);

  /**
   *  "displayValue" contains the human readable value.
   */
  /* attribute AString displayValue; */
  nsresult GetDisplayValue(nsAString * aDisplayValue);
  nsresult SetDisplayValue(nsAString * aDisplayValue);

}

