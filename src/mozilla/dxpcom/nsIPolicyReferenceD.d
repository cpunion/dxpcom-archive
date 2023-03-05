/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPolicyReference.idl
 */

module mozilla.dxpcom.nsIPolicyReferenceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPolicyReference;


public import mozilla.dxpcom.nsIPolicyReferenceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIPolicyReference */
class nsIPolicyReferenceD : public nsISupportsD {

  static const nsIID IID = NS_IPOLICYREFERENCE_IID;


  alias nsIPolicyReference InnerType;

  this(nsIPolicyReference intr){
    super(intr);
    this.inner = intr;
  }

  nsIPolicyReference opCast() {
    return inner;
  }

  void opAssign(nsIPolicyReference value) {
    inner = value;
  }

  /**
   * Main URI or a URI with the same host as the main URI.
   */
  enum { IS_MAIN_URI = 1U }

  /**
   * URI with a domain different from the main URI.
   */
  enum { IS_EMBEDDED_URI = 2U }

  /**
   * URI referenced via LINK tag
   */
  enum { IS_LINKED_URI = 4U }

  /**
   * Signals a successful policy load
   */
  enum { POLICY_LOAD_SUCCESS = 8U }

  /**
   * Signals a policy load failure
   */
  enum { POLICY_LOAD_FAILURE = 16U }

  /**
   * Signals obsolete policy
   */
  enum { POLICY_LIFE_EXPIRED = 32U }

  /**
   * Signals a syntax error ( Ex. xml error ) in the policy.
   */
  enum { POLICY_SYNTAX_ERROR = 64U }

  /**
   * Initialize the object with the document's URI.
   *
   * @param aMailURI -> Current document's URI
   *
   */
  /* void initialize (in nsIURI aMainURI); */
  void Initialize(nsIURID aMainURI){
    nsresult __result = inner.Initialize(aMainURI ? cast(nsIURI)aMainURI : null);
    CheckException(__result);
  }

  /**
   * Call this method to locate the policy reference file for the current uri.
   *
   * @param aCurrentURI -> URI that requests a privacy policy
   * @paran aFlag       -> IS_SELECTED_URI | IS_EMBEDDED_URI | IS_LINKED_URI
   *
   */
  /* void loadPolicyReferenceFileFor (in nsIURI aCurrentURI, in unsigned long aFlag); */
  void LoadPolicyReferenceFileFor(nsIURID aCurrentURI, PRUint32 aFlag){
    nsresult __result = inner.LoadPolicyReferenceFileFor(aCurrentURI ? cast(nsIURI)aCurrentURI : null, aFlag);
    CheckException(__result);
  }

  /**
   * This method releases all the objects used for policy reference.
   *
   */
  /* void finalize (); */
  void Finalize(){
    nsresult __result = inner.Finalize();
    CheckException(__result);
  }

private:
  nsIPolicyReference inner;

}

