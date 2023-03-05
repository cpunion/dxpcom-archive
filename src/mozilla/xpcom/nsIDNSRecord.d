/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDNSRecord.idl
 */

module mozilla.xpcom.nsIDNSRecord;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIDNSRecord */
const char[] NS_IDNSRECORD_IID_STR = "31c9c52e-1100-457d-abac-d2729e43f506";

const nsIID NS_IDNSRECORD_IID= 
  {0x31c9c52e, 0x1100, 0x457d, 
    [ 0xab, 0xac, 0xd2, 0x72, 0x9e, 0x43, 0xf5, 0x06 ]};

/**
 * nsIDNSRecord
 *
 * this interface represents the result of a DNS lookup.  since a DNS
 * query may return more than one resolved IP address, the record acts
 * like an enumerator, allowing the caller to easily step through the
 * list of IP addresses.
 */
extern(Windows)
interface nsIDNSRecord : nsISupports {
  static const char[] IID_STR = NS_IDNSRECORD_IID_STR;
  static const nsIID IID = NS_IDNSRECORD_IID;

  /**
     * @return the canonical hostname for this record.  this value is empty if
     * the record was not fetched with the RESOLVE_CANONICAL_NAME flag.
     *
     * e.g., www.mozilla.org --> rheet.mozilla.org
     */
  /* readonly attribute ACString canonicalName; */
  nsresult GetCanonicalName(nsACString * aCanonicalName);

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
  nsresult GetNextAddr(PRUint16 aPort, PRNetAddr *_retval);

  /**
     * this function returns the value of the next IP address as a
     * string and increments the internal address iterator.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if there is not another IP address in
     * the record.
     */
  /* ACString getNextAddrAsString (); */
  nsresult GetNextAddrAsString(nsACString * _retval);

  /**
     * this function returns true if there is another address in the record.
     */
  /* boolean hasMore (); */
  nsresult HasMore(PRBool *_retval);

  /**
     * this function resets the internal address iterator to the first
     * address in the record.
     */
  /* void rewind (); */
  nsresult Rewind();

}

