/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyReference.idl
 */

module mozilla.xpcom.nsIPolicyReference;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIPolicyReference */
const char[] NS_IPOLICYREFERENCE_IID_STR = "8c51e90d-cbe7-4a2c-b9f3-77bf3af12694";

const nsIID NS_IPOLICYREFERENCE_IID= 
  {0x8c51e90d, 0xcbe7, 0x4a2c, 
    [ 0xb9, 0xf3, 0x77, 0xbf, 0x3a, 0xf1, 0x26, 0x94 ]};

extern(Windows)
interface nsIPolicyReference : nsISupports {
  static const char[] IID_STR = NS_IPOLICYREFERENCE_IID_STR;
  static const nsIID IID = NS_IPOLICYREFERENCE_IID;

  /**
   * Main URI or a URI with the same host as the main URI.
   */
  enum { IS_MAIN_URI = 1U };

  /**
   * URI with a domain different from the main URI.
   */
  enum { IS_EMBEDDED_URI = 2U };

  /**
   * URI referenced via LINK tag
   */
  enum { IS_LINKED_URI = 4U };

  /**
   * Signals a successful policy load
   */
  enum { POLICY_LOAD_SUCCESS = 8U };

  /**
   * Signals a policy load failure
   */
  enum { POLICY_LOAD_FAILURE = 16U };

  /**
   * Signals obsolete policy
   */
  enum { POLICY_LIFE_EXPIRED = 32U };

  /**
   * Signals a syntax error ( Ex. xml error ) in the policy.
   */
  enum { POLICY_SYNTAX_ERROR = 64U };

  /**
   * Initialize the object with the document's URI.
   *
   * @param aMailURI -> Current document's URI
   *
   */
  /* void initialize (in nsIURI aMainURI); */
  nsresult Initialize(nsIURI aMainURI);

  /**
   * Call this method to locate the policy reference file for the current uri.
   *
   * @param aCurrentURI -> URI that requests a privacy policy
   * @paran aFlag       -> IS_SELECTED_URI | IS_EMBEDDED_URI | IS_LINKED_URI
   *
   */
  /* void loadPolicyReferenceFileFor (in nsIURI aCurrentURI, in unsigned long aFlag); */
  nsresult LoadPolicyReferenceFileFor(nsIURI aCurrentURI, PRUint32 aFlag);

  /**
   * This method releases all the objects used for policy reference.
   *
   */
  /* void finalize (); */
  nsresult Finalize();

}

