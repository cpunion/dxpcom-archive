/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentSniffer.idl
 */

module mozilla.dxpcom.nsIContentSnifferD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentSniffer;


public import mozilla.dxpcom.nsIContentSnifferD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRequest;

public import mozilla.dxpcom.nsIRequestD;


/* starting wrapper class:    nsIContentSniffer */
/**
 * Content sniffer interface. Components implementing this interface can
 * determine a MIME type from a chunk of bytes.
 */
class nsIContentSnifferD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTSNIFFER_IID;


  alias nsIContentSniffer InnerType;

  this(nsIContentSniffer intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentSniffer opCast() {
    return inner;
  }

  void opAssign(nsIContentSniffer value) {
    inner = value;
  }

  /**
   * Given a chunk of data, determines a MIME type.
   *
   * @param aData Data to check
   * @param aLength Length of the data
   *
   * @throw NS_ERROR_NOT_AVAILABLE if no MIME type could be determined.
   */
  /* ACString getMIMETypeFromContent ([array, size_is (aLength), const] in octet aData, in unsigned long aLength); */
  char[] GetMIMETypeFromContent(PRUint8 *aData, PRUint32 aLength){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetMIMETypeFromContent(aData, aLength, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIContentSniffer inner;

}


/* starting wrapper class:    nsIContentSniffer_MOZILLA_1_8_BRANCH */
/**
 * Content sniffer interface. Components implementing this interface can
 * determine a MIME type from a chunk of bytes.
 *
 * NOTE: This interface is equivalent to nsIContentSniffer, but its method has
 * an additional paramter. It exists only on the 1.8 branch of Mozilla; use
 * nsIContentSniffer on newer branches.
 *
 * @status TEMPORARY
 */
class nsIContentSniffer_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTSNIFFER_MOZILLA_1_8_BRANCH_IID;


  alias nsIContentSniffer_MOZILLA_1_8_BRANCH InnerType;

  this(nsIContentSniffer_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentSniffer_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIContentSniffer_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * Given a chunk of data, determines a MIME type. Information from the given
   * request may be used in order to make a better decision.
   *
   * @param aRequest The request where this data came from. May be null.
   * @param aData Data to check
   * @param aLength Length of the data
   *
   * @return The content type
   *
   * @throw NS_ERROR_NOT_AVAILABLE if no MIME type could be determined.
   *
   * @note Implementations should consider the request read-only. Especially,
   * they should not attempt to set the content type property that subclasses of
   * nsIRequest might offer.
   */
  /* ACString getMIMETypeFromContent (in nsIRequest aRequest, [array, size_is (aLength), const] in octet aData, in unsigned long aLength); */
  char[] GetMIMETypeFromContent(nsIRequestD aRequest, PRUint8 *aData, PRUint32 aLength){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetMIMETypeFromContent(aRequest ? cast(nsIRequest)aRequest : null, aData, aLength, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIContentSniffer_MOZILLA_1_8_BRANCH inner;

}

