/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFResource.idl
 */

module mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFResource;


public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;


/* starting wrapper class:    nsIRDFResource */
/**
 * An nsIRDFResource is an object that has unique identity in the 
 * RDF data model. The object's identity is determined by its URI.
 */
class nsIRDFResourceD : public nsIRDFNodeD {

  static const nsIID IID = NS_IRDFRESOURCE_IID;


  alias nsIRDFResource InnerType;

  this(nsIRDFResource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFResource opCast() {
    return inner;
  }

  void opAssign(nsIRDFResource value) {
    inner = value;
  }

  /**
     * The single-byte string value of the resource.
     * @note THIS IS OBSOLETE. C++ should use GetValueConst and script
     *       should use .valueUTF8
     */
  /* readonly attribute string Value; */
  char* Value(){
    char* value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The UTF-8 URI of the resource.
     */
  /* readonly attribute AUTF8String ValueUTF8; */
  char[] ValueUTF8(){
    scope auto value = new ACString();
    nsresult __result = inner.GetValueUTF8(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * An unscriptable version used to avoid a string copy. Meant
     * for use as a performance optimization. The string is encoded
     * in UTF-8.
     */
  /* [noscript] void GetValueConst ([shared] out string aConstValue); */
  void GetValueConst(out char*aConstValue){
    nsresult __result = inner.GetValueConst(&aConstValue);
    CheckException(__result);
  }

  /**
     * This method is called by the nsIRDFService after constructing
     * a resource object to initialize it's URI. You would not normally
     * call this method directly
     */
  /* void Init (in string uri); */
  void Init(char*uri){
    nsresult __result = inner.Init(uri);
    CheckException(__result);
  }

  /**
     * Determine if the resource has the given URI.
     */
  /* boolean EqualsString (in string aURI); */
  PRBool EqualsString(char*aURI){
    PRBool _retval;
    nsresult __result = inner.EqualsString(aURI, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Retrieve the "delegate" object for this resource. A resource
     * may have several delegate objects, each of whose lifetimes is
     * bound to the life of the resource object.
     *
     * This method will return the delegate for the given key after
     * QueryInterface()-ing it to the requested IID.
     *
     * If no delegate exists for the specified key, this method will
     * attempt to create one using the component manager. Specifically,
     * it will combine aKey with the resource's URI scheme to produce
     * a ContractID as follows:
     *
     *   component:/rdf/delegate-factory/[key]/[scheme]
     *
     * This ContractID will be used to locate a factory using the
     * FindFactory() method of nsIComponentManager. If the nsIFactory
     * exists, it will be used to create a "delegate factory"; that
     * is, an object that supports nsIRDFDelegateFactory. The delegate
     * factory will be used to construct the delegate object.
     */
  /* void GetDelegate (in string aKey, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult aResult); */
  void GetDelegate(char*aKey, nsIID * aIID, out void * aResult){
    nsresult __result = inner.GetDelegate(aKey, aIID, &aResult);
    CheckException(__result);
  }

  /**
     * Force a delegate to be "unbound" from the resource.
     *
     * Normally, a delegate object's lifetime will be identical to
     * that of the resource to which it is bound; this method allows a
     * delegate to unlink itself from an RDF resource prematurely.
     */
  /* void ReleaseDelegate (in string aKey); */
  void ReleaseDelegate(char*aKey){
    nsresult __result = inner.ReleaseDelegate(aKey);
    CheckException(__result);
  }

private:
  nsIRDFResource inner;

}

