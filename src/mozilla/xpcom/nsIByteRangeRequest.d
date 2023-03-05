/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIByteRangeRequest.idl
 */

module mozilla.xpcom.nsIByteRangeRequest;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIByteRangeRequest */
const char[] NS_IBYTERANGEREQUEST_IID_STR = "c1b1f426-7e83-4759-9f88-0e1b17f49366";

const nsIID NS_IBYTERANGEREQUEST_IID= 
  {0xc1b1f426, 0x7e83, 0x4759, 
    [ 0x9f, 0x88, 0x0e, 0x1b, 0x17, 0xf4, 0x93, 0x66 ]};

extern(Windows)
interface nsIByteRangeRequest : nsISupports {
  static const char[] IID_STR = NS_IBYTERANGEREQUEST_IID_STR;
  static const nsIID IID = NS_IBYTERANGEREQUEST_IID;

  /** 
     * Returns true IFF this request is a byte range request, otherwise it
     * returns false (This is effectively the same as checking to see if 
     * |startRequest| is zero and |endRange| is the content length.)
     */
  /* readonly attribute boolean isByteRangeRequest; */
  nsresult GetIsByteRangeRequest(PRBool *aIsByteRangeRequest);

  /** 
     * Absolute start position in remote file for this request.
     */
  /* readonly attribute long long startRange; */
  nsresult GetStartRange(PRInt64 *aStartRange);

  /**
     * Absolute end postion in remote file for this request
     */
  /* readonly attribute long long endRange; */
  nsresult GetEndRange(PRInt64 *aEndRange);

}

