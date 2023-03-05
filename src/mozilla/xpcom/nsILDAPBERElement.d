/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPBERElement.idl
 */

module mozilla.xpcom.nsILDAPBERElement;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPBERValue; /* forward declaration */


/* starting interface:    nsILDAPBERElement */
const char[] NS_ILDAPBERELEMENT_IID_STR = "409f5b31-c062-4d11-a35b-0a09e7967bf2";

const nsIID NS_ILDAPBERELEMENT_IID= 
  {0x409f5b31, 0xc062, 0x4d11, 
    [ 0xa3, 0x5b, 0x0a, 0x09, 0xe7, 0x96, 0x7b, 0xf2 ]};

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
extern(Windows)
interface nsILDAPBERElement : nsISupports {
  static const char[] IID_STR = NS_ILDAPBERELEMENT_IID_STR;
  static const nsIID IID = NS_ILDAPBERELEMENT_IID;

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
  nsresult Init(nsILDAPBERValue aValue);

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
  enum { TAG_LBER_ERROR = 4294967295U };

  enum { TAG_LBER_DEFAULT = 4294967295U };

  enum { TAG_LBER_END_OF_SEQORSET = 4294967294U };

  /** 
   * BER encoding types and masks
   */
  enum { TAG_LBER_PRIMITIVE = 0U };

  /**
   * The following two tags are carried over from the LDAP C SDK; their
   * exact purpose there is not well documented.  They both have
   * the same value there as well.
   */
  enum { TAG_LBER_CONSTRUCTED = 32U };

  enum { TAG_LBER_ENCODING_MASK = 32U };

  enum { TAG_LBER_BIG_TAG_MASK = 31U };

  enum { TAG_LBER_MORE_TAG_MASK = 128U };

  /**
   * general BER types we know about
   */
  enum { TAG_LBER_BOOLEAN = 1U };

  enum { TAG_LBER_INTEGER = 2U };

  enum { TAG_LBER_BITSTRING = 3U };

  enum { TAG_LBER_OCTETSTRING = 4U };

  enum { TAG_LBER_NULL = 5U };

  enum { TAG_LBER_ENUMERATED = 10U };

  enum { TAG_LBER_SEQUENCE = 48U };

  enum { TAG_LBER_SET = 49U };

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
  nsresult PutString(nsACString * aString, PRUint32 aTag, PRUint32 *_retval);

  /**
   * Start a set.  Sets may be nested.
   *
   * @param  aTag  tag for this set (if TAG_LBER_DEFAULT is used, 
   *               TAG_LBER_SET will be written).
   *
   * @exception  NS_ERROR_FAILUE   C-SDK returned an error
   */
  /* void startSet (in unsigned long aTag); */
  nsresult StartSet(PRUint32 aTag);

  /**
   * Cause the entire set started by the last startSet() call to be written.
   *
   * @exception  NS_ERROR_FAILUE   C-SDK returned an error
   *
   * @return     number of bytes written
   */
  /* unsigned long putSet (); */
  nsresult PutSet(PRUint32 *_retval);

  /**
   * an nsILDAPBERValue version of this element.  Calls ber_flatten() under
   * the hood.
   *
   * @exception NS_ERROR_OUT_OF_MEMORY
   */
  /* readonly attribute nsILDAPBERValue asValue; */
  nsresult GetAsValue(nsILDAPBERValue  *aAsValue);

}

