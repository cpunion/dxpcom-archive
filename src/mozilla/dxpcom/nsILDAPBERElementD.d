/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPBERElement.idl
 */

module mozilla.dxpcom.nsILDAPBERElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPBERElement;


public import mozilla.dxpcom.nsILDAPBERElementD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPBERValue;

public import mozilla.dxpcom.nsILDAPBERValueD;


/* starting wrapper class:    nsILDAPBERElement */
/**
 * nsILDAPBERElement is a wrapper interface for a C-SDK BerElement object.
 * Typically, this is used as an intermediate object to aid in the manual 
 * construction of a BER value.  Once the construction is completed by calling
 * methods on this object, an nsILDAPBERValue can be retrieved from the 
 * asValue attribute on this interface.
 *
 * <http://www.mozilla.org/directory/ietf-docs/draft-ietf-ldapext-ldap-c-api-05.txt>
 * contains some documentation that mostly (but not exactly) matches
 * the code that this wraps in section 17.
 */
class nsILDAPBERElementD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPBERELEMENT_IID;


  alias nsILDAPBERElement InnerType;

  this(nsILDAPBERElement intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPBERElement opCast() {
    return inner;
  }

  void opAssign(nsILDAPBERElement value) {
    inner = value;
  }

  /**
   * Initialize this object.  Must be called before calling any other method
   * on this interface.
   *
   * @param  aValue  value to preinitialize with; 0 for a new empty object
   *
   * @exception  NS_ERROR_NOT_IMPLEMENTED  preinitialization is currently
   *                                       not implemented
   * @exception  NS_ERROR_OUT_OF_MEMORY    unable to allocate the internal
   *                                       BerElement
   */
  /* void init (in nsILDAPBERValue aValue); */
  void Init(nsILDAPBERValueD aValue){
    nsresult __result = inner.Init(aValue ? cast(nsILDAPBERValue)aValue : null);
    CheckException(__result);
  }

  /**
   * Most TAG_* constants can be used in the construction or passing in of 
   * values to the aTag arguments to most of the methods in this interface.
   */
/** 
   * When returned from a parsing method, 0xffffffff is referred to 
   * has the parse-error semantic (ie TAG_LBER_ERROR); when passing it to
   * a construction method, it is used to mean "pick the default tag for 
   * this type" (ie TAG_LBER_DEFAULT).
   */
  enum { TAG_LBER_ERROR = 4294967295U }

  enum { TAG_LBER_DEFAULT = 4294967295U }

  enum { TAG_LBER_END_OF_SEQORSET = 4294967294U }

  /** 
   * BER encoding types and masks
   */
  enum { TAG_LBER_PRIMITIVE = 0U }

  /**
   * The following two tags are carried over from the LDAP C SDK; their
   * exact purpose there is not well documented.  They both have
   * the same value there as well.
   */
  enum { TAG_LBER_CONSTRUCTED = 32U }

  enum { TAG_LBER_ENCODING_MASK = 32U }

  enum { TAG_LBER_BIG_TAG_MASK = 31U }

  enum { TAG_LBER_MORE_TAG_MASK = 128U }

  /**
   * general BER types we know about
   */
  enum { TAG_LBER_BOOLEAN = 1U }

  enum { TAG_LBER_INTEGER = 2U }

  enum { TAG_LBER_BITSTRING = 3U }

  enum { TAG_LBER_OCTETSTRING = 4U }

  enum { TAG_LBER_NULL = 5U }

  enum { TAG_LBER_ENUMERATED = 10U }

  enum { TAG_LBER_SEQUENCE = 48U }

  enum { TAG_LBER_SET = 49U }

  /**
   * Write a string to this element.  
   *
   * @param  aString  string to write
   * @param  aTag     tag for this string (if TAG_LBER_DEFAULT is used,
   *                  TAG_LBER_OCTETSTRING will be written).
   *
   * @return     number of bytes written
   *
   * @exception  NS_ERROR_FAILUE   C-SDK returned error
   */
  /* unsigned long putString (in AUTF8String aString, in unsigned long aTag); */
  PRUint32 PutString(char[] aString, PRUint32 aTag){
    scope auto _aString = new ACString(aString);
    PRUint32 _retval;
    nsresult __result = inner.PutString(cast(nsACString*)_aString, aTag, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Start a set.  Sets may be nested.
   *
   * @param  aTag  tag for this set (if TAG_LBER_DEFAULT is used, 
   *               TAG_LBER_SET will be written).
   *
   * @exception  NS_ERROR_FAILUE   C-SDK returned an error
   */
  /* void startSet (in unsigned long aTag); */
  void StartSet(PRUint32 aTag){
    nsresult __result = inner.StartSet(aTag);
    CheckException(__result);
  }

  /**
   * Cause the entire set started by the last startSet() call to be written.
   *
   * @exception  NS_ERROR_FAILUE   C-SDK returned an error
   *
   * @return     number of bytes written
   */
  /* unsigned long putSet (); */
  PRUint32 PutSet(){
    PRUint32 _retval;
    nsresult __result = inner.PutSet(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * an nsILDAPBERValue version of this element.  Calls ber_flatten() under
   * the hood.
   *
   * @exception NS_ERROR_OUT_OF_MEMORY
   */
  /* readonly attribute nsILDAPBERValue asValue; */
  nsILDAPBERValueD  AsValue(){
    nsILDAPBERValue value;
    nsresult __result = inner.GetAsValue(&value);
    CheckException(__result);
    return new nsILDAPBERValueD(value);
  }

private:
  nsILDAPBERElement inner;

}

