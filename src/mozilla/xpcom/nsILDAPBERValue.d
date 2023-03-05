/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPBERValue.idl
 */

module mozilla.xpcom.nsILDAPBERValue;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsILDAPBERValue */
const char[] NS_ILDAPBERVALUE_IID_STR = "c817c5fe-1dd1-11b2-a10b-ae9885762ea9";

const nsIID NS_ILDAPBERVALUE_IID= 
  {0xc817c5fe, 0x1dd1, 0x11b2, 
    [ 0xa1, 0x0b, 0xae, 0x98, 0x85, 0x76, 0x2e, 0xa9 ]};

/**
 * Representation of a BER value as an interface containing an array of
 * bytes.  Someday this should perhaps be obsoleted by a better, more
 * generalized version of nsIByteBuffer, but that's currently not even
 * scriptable (see bug 125596).  
 */
extern(Windows)
interface nsILDAPBERValue : nsISupports {
  static const char[] IID_STR = NS_ILDAPBERVALUE_IID_STR;
  static const nsIID IID = NS_ILDAPBERVALUE_IID;

  /**
     * Set the BER value from an array of bytes (copies).
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void set (in unsigned long aCount, [array, size_is (aCount)] in octet aValue); */
  nsresult Set(PRUint32 aCount, PRUint8 *aValue);

  /** 
     * Set the BER value from a UTF8 string (copies).
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void setFromUTF8 (in AUTF8String aValue); */
  nsresult SetFromUTF8(nsACString * aValue);

  /** 
     * Get the BER value as an array of bytes.  Note that if this value is
     * zero-length, aCount and aRetVal will both be 0.  This means that 
     * (in C++ anyway) the caller MUST test either aCount or aRetval before
     * dereferencing aRetVal.
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void get (out unsigned long aCount, [array, size_is (aCount), retval] out octet aRetVal); */
  nsresult Get(PRUint32 *aCount, PRUint8 **aRetVal);

}

