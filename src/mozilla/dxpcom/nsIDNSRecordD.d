/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSRecord.idl
 */

module mozilla.dxpcom.nsIDNSRecordD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDNSRecord;


public import mozilla.dxpcom.nsIDNSRecordD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDNSRecord */
/**
 * nsIDNSRecord
 *
 * this interface represents the result of a DNS lookup.  since a DNS
 * query may return more than one resolved IP address, the record acts
 * like an enumerator, allowing the caller to easily step through the
 * list of IP addresses.
 */
class nsIDNSRecordD : public nsISupportsD {

  static const nsIID IID = NS_IDNSRECORD_IID;


  alias nsIDNSRecord InnerType;

  this(nsIDNSRecord intr){
    super(intr);
    this.inner = intr;
  }

  nsIDNSRecord opCast() {
    return inner;
  }

  void opAssign(nsIDNSRecord value) {
    inner = value;
  }

  /**
     * @return the canonical hostname for this record.  this value is empty if
     * the record was not fetched with the RESOLVE_CANONICAL_NAME flag.
     *
     * e.g., www.mozilla.org --> rheet.mozilla.org
     */
  /* readonly attribute ACString canonicalName; */
  char[] CanonicalName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetCanonicalName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * this function copies the value of the next IP address into the
     * given PRNetAddr struct and increments the internal address iterator.
     *
     * @param aPort
     *        A port number to initialize the PRNetAddr with.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if there is not another IP address in
     * the record.
     */
  /* [noscript] PRNetAddr getNextAddr (in PRUint16 aPort); */
  PRNetAddr GetNextAddr(PRUint16 aPort){
PRNetAddr _retval;
    nsresult __result = inner.GetNextAddr(aPort, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * this function returns the value of the next IP address as a
     * string and increments the internal address iterator.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if there is not another IP address in
     * the record.
     */
  /* ACString getNextAddrAsString (); */
  char[] GetNextAddrAsString(){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetNextAddrAsString(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * this function returns true if there is another address in the record.
     */
  /* boolean hasMore (); */
  PRBool HasMore(){
    PRBool _retval;
    nsresult __result = inner.HasMore(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * this function resets the internal address iterator to the first
     * address in the record.
     */
  /* void rewind (); */
  void Rewind(){
    nsresult __result = inner.Rewind();
    CheckException(__result);
  }

private:
  nsIDNSRecord inner;

}

