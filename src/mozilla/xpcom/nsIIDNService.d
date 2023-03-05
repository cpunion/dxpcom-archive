/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIDNService.idl
 */

module mozilla.xpcom.nsIIDNService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIIDNService */
const char[] NS_IIDNSERVICE_IID_STR = "7b67747e-a8c4-4832-80c7-39ebb0c11f94";

const nsIID NS_IIDNSERVICE_IID= 
  {0x7b67747e, 0xa8c4, 0x4832, 
    [ 0x80, 0xc7, 0x39, 0xeb, 0xb0, 0xc1, 0x1f, 0x94 ]};

/**
 * nsIIDNService interface.
 *
 * IDN (Internationalized Domain Name) support. Provides facilities
 * for manipulating IDN hostnames according to the specification set
 * forth by the IETF.
 *
 * IDN effort:
 * http://www.ietf.org/html.characters/idn-charter.html
 * http://www.i-dns.net
 *
 * IDNA specification:
 * http://search.ietf.org/internet-drafts/draft-ietf-idn-idna-06.txt
 */
extern(Windows)
interface nsIIDNService : nsISupports {
  static const char[] IID_STR = NS_IIDNSERVICE_IID_STR;
  static const nsIID IID = NS_IIDNSERVICE_IID;

  /**
     * Prepares the input hostname according to IDNA ToASCII operation,
     * the input hostname is assumed to be UTF8-encoded.
     *
     * The current input is string, but this may change pending Bug 84186.
     */
  /* ACString convertUTF8toACE (in AUTF8String input); */
  nsresult ConvertUTF8toACE(nsACString * input, nsACString * _retval);

  /**
     * This is the ToUnicode operation as specified in the IDNA proposal,
     * with an additional step to encode the result in UTF-8.
     * It takes an ACE-encoded hostname and performs ToUnicode to it, then
     * encodes the resulting string into UTF8.
     */
  /* AUTF8String convertACEtoUTF8 (in ACString input); */
  nsresult ConvertACEtoUTF8(nsACString * input, nsACString * _retval);

  /**
     * Checks if the input string is ACE encoded or not.
     */
  /* boolean isACE (in ACString input); */
  nsresult IsACE(nsACString * input, PRBool *_retval);

  /**
     * Performs the unicode normalization needed for hostnames in IDN,
     * for callers that want early normalization.
     */
  /* AUTF8String normalize (in AUTF8String input); */
  nsresult Normalize(nsACString * input, nsACString * _retval);

}

