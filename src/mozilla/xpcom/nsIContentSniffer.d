/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentSniffer.idl
 */

module mozilla.xpcom.nsIContentSniffer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRequest; /* forward declaration */


/* starting interface:    nsIContentSniffer */
const char[] NS_ICONTENTSNIFFER_IID_STR = "a5710331-74ec-45fb-aa85-ed3bc7c36924";

const nsIID NS_ICONTENTSNIFFER_IID= 
  {0xa5710331, 0x74ec, 0x45fb, 
    [ 0xaa, 0x85, 0xed, 0x3b, 0xc7, 0xc3, 0x69, 0x24 ]};

/**
 * Content sniffer interface. Components implementing this interface can
 * determine a MIME type from a chunk of bytes.
 */
extern(Windows)
interface nsIContentSniffer : nsISupports {
  static const char[] IID_STR = NS_ICONTENTSNIFFER_IID_STR;
  static const nsIID IID = NS_ICONTENTSNIFFER_IID;

  /**
   * Given a chunk of data, determines a MIME type.
   *
   * @param aData Data to check
   * @param aLength Length of the data
   *
   * @throw NS_ERROR_NOT_AVAILABLE if no MIME type could be determined.
   */
  /* ACString getMIMETypeFromContent ([array, size_is (aLength), const] in octet aData, in unsigned long aLength); */
  nsresult GetMIMETypeFromContent(PRUint8 *aData, PRUint32 aLength, nsACString * _retval);

}


/* starting interface:    nsIContentSniffer_MOZILLA_1_8_BRANCH */
const char[] NS_ICONTENTSNIFFER_MOZILLA_1_8_BRANCH_IID_STR = "a5772d1b-fc63-495e-a169-96e8d3311af0";

const nsIID NS_ICONTENTSNIFFER_MOZILLA_1_8_BRANCH_IID= 
  {0xa5772d1b, 0xfc63, 0x495e, 
    [ 0xa1, 0x69, 0x96, 0xe8, 0xd3, 0x31, 0x1a, 0xf0 ]};

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
extern(Windows)
interface nsIContentSniffer_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_ICONTENTSNIFFER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ICONTENTSNIFFER_MOZILLA_1_8_BRANCH_IID;

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
  nsresult GetMIMETypeFromContent(nsIRequest aRequest, PRUint8 *aData, PRUint32 aLength, nsACString * _retval);

}

