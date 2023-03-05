/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIByteRangeRequest.idl
 */

module mozilla.dxpcom.nsIByteRangeRequestD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIByteRangeRequest;


public import mozilla.dxpcom.nsIByteRangeRequestD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIByteRangeRequest */
class nsIByteRangeRequestD : public nsISupportsD {

  static const nsIID IID = NS_IBYTERANGEREQUEST_IID;


  alias nsIByteRangeRequest InnerType;

  this(nsIByteRangeRequest intr){
    super(intr);
    this.inner = intr;
  }

  nsIByteRangeRequest opCast() {
    return inner;
  }

  void opAssign(nsIByteRangeRequest value) {
    inner = value;
  }

  /** 
     * Returns true IFF this request is a byte range request, otherwise it
     * returns false (This is effectively the same as checking to see if 
     * |startRequest| is zero and |endRange| is the content length.)
     */
  /* readonly attribute boolean isByteRangeRequest; */
  PRBool IsByteRangeRequest(){
    PRBool value;
    nsresult __result = inner.GetIsByteRangeRequest(&value);
    CheckException(__result);
    return value;
  }

  /** 
     * Absolute start position in remote file for this request.
     */
  /* readonly attribute long long startRange; */
  PRInt64 StartRange(){
    PRInt64 value;
    nsresult __result = inner.GetStartRange(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Absolute end postion in remote file for this request
     */
  /* readonly attribute long long endRange; */
  PRInt64 EndRange(){
    PRInt64 value;
    nsresult __result = inner.GetEndRange(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIByteRangeRequest inner;

}

