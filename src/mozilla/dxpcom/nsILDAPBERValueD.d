/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPBERValue.idl
 */

module mozilla.dxpcom.nsILDAPBERValueD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPBERValue;


public import mozilla.dxpcom.nsILDAPBERValueD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsILDAPBERValue */
/**
 * Representation of a BER value as an interface containing an array of
 * bytes.  Someday this should perhaps be obsoleted by a better, more
 * generalized version of nsIByteBuffer, but that's currently not even
 * scriptable (see bug 125596).  
 */
class nsILDAPBERValueD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPBERVALUE_IID;


  alias nsILDAPBERValue InnerType;

  this(nsILDAPBERValue intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPBERValue opCast() {
    return inner;
  }

  void opAssign(nsILDAPBERValue value) {
    inner = value;
  }

  /**
     * Set the BER value from an array of bytes (copies).
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void set (in unsigned long aCount, [array, size_is (aCount)] in octet aValue); */
  void Set(PRUint32 aCount, PRUint8 *aValue){
    nsresult __result = inner.Set(aCount, aValue);
    CheckException(__result);
  }

  /** 
     * Set the BER value from a UTF8 string (copies).
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void setFromUTF8 (in AUTF8String aValue); */
  void SetFromUTF8(char[] aValue){
    scope auto _aValue = new ACString(aValue);
    nsresult __result = inner.SetFromUTF8(cast(nsACString*)_aValue);
    CheckException(__result);
  }

  /** 
     * Get the BER value as an array of bytes.  Note that if this value is
     * zero-length, aCount and aRetVal will both be 0.  This means that 
     * (in C++ anyway) the caller MUST test either aCount or aRetval before
     * dereferencing aRetVal.
     *
     * @exception NS_ERROR_OUT_OF_MEMORY    couldn't allocate buffer to copy to
     */
  /* void get (out unsigned long aCount, [array, size_is (aCount), retval] out octet aRetVal); */
  void Get(out PRUint32 aCount, out PRUint8 *aRetVal){
    nsresult __result = inner.Get(&aCount, &aRetVal);
    CheckException(__result);
  }

private:
  nsILDAPBERValue inner;

}

