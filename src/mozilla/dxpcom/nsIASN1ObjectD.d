/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIASN1Object.idl
 */

module mozilla.dxpcom.nsIASN1ObjectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIASN1Object;


public import mozilla.dxpcom.nsIASN1ObjectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIASN1Object */
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
class nsIASN1ObjectD : public nsISupportsD {

  static const nsIID IID = NS_IASN1OBJECT_IID;


  alias nsIASN1Object InnerType;

  this(nsIASN1Object intr){
    super(intr);
    this.inner = intr;
  }

  nsIASN1Object opCast() {
    return inner;
  }

  void opAssign(nsIASN1Object value) {
    inner = value;
  }

  /**
   *  Identifiers for the possible types of object.
   */
  enum { ASN1_END_CONTENTS = 0U }

  enum { ASN1_BOOLEAN = 1U }

  enum { ASN1_INTEGER = 2U }

  enum { ASN1_BIT_STRING = 3U }

  enum { ASN1_OCTET_STRING = 4U }

  enum { ASN1_NULL = 5U }

  enum { ASN1_OBJECT_ID = 6U }

  enum { ASN1_ENUMERATED = 10U }

  enum { ASN1_UTF8_STRING = 12U }

  enum { ASN1_SEQUENCE = 16U }

  enum { ASN1_SET = 17U }

  enum { ASN1_PRINTABLE_STRING = 19U }

  enum { ASN1_T61_STRING = 20U }

  enum { ASN1_IA5_STRING = 22U }

  enum { ASN1_UTC_TIME = 23U }

  enum { ASN1_GEN_TIME = 24U }

  enum { ASN1_VISIBLE_STRING = 26U }

  enum { ASN1_UNIVERSAL_STRING = 28U }

  enum { ASN1_BMP_STRING = 30U }

  enum { ASN1_HIGH_TAG_NUMBER = 31U }

  enum { ASN1_CONTEXT_SPECIFIC = 32U }

  enum { ASN1_APPLICATION = 33U }

  enum { ASN1_PRIVATE = 34U }

  /**
   *  "type" will be equal to one of the defined object identifiers.
   */
  /* attribute unsigned long type; */
  PRUint32 Type(){
    PRUint32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(PRUint32 aType){
    nsresult __result = inner.SetType(aType);
    CheckException(__result);
  }

  /**
   *  This contains a tag as explained in ASN.1 standards documents.
   */
  /* attribute unsigned long tag; */
  PRUint32 Tag(){
    PRUint32 value;
    nsresult __result = inner.GetTag(&value);
    CheckException(__result);
    return value;
  }
  void Tag(PRUint32 aTag){
    nsresult __result = inner.SetTag(aTag);
    CheckException(__result);
  }

  /**
   *  "displayName" contains a human readable explanatory label.
   */
  /* attribute AString displayName; */
  wchar[] DisplayName(){
    scope auto value = new AString();
    nsresult __result = inner.GetDisplayName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DisplayName(wchar[] aDisplayName){
    scope auto value = new AString(aDisplayName);
    nsresult __result = inner.SetDisplayName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   *  "displayValue" contains the human readable value.
   */
  /* attribute AString displayValue; */
  wchar[] DisplayValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetDisplayValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void DisplayValue(wchar[] aDisplayValue){
    scope auto value = new AString(aDisplayValue);
    nsresult __result = inner.SetDisplayValue(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIASN1Object inner;

}

