/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFResource.idl
 */

module mozilla.xpcom.nsIRDFResource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsIRDFNode;


/* starting interface:    nsIRDFResource */
const char[] NS_IRDFRESOURCE_IID_STR = "fb9686a7-719a-49dc-9107-10dea5739341";

const nsIID NS_IRDFRESOURCE_IID= 
  {0xfb9686a7, 0x719a, 0x49dc, 
    [ 0x91, 0x07, 0x10, 0xde, 0xa5, 0x73, 0x93, 0x41 ]};

/**
 * An nsIRDFResource is an object that has unique identity in the 
 * RDF data model. The object's identity is determined by its URI.
 */
extern(Windows)
interface nsIRDFResource : nsIRDFNode {
  static const char[] IID_STR = NS_IRDFRESOURCE_IID_STR;
  static const nsIID IID = NS_IRDFRESOURCE_IID;

  /**
     * The single-byte string value of the resource.
     * @note THIS IS OBSOLETE. C++ should use GetValueConst and script
     *       should use .valueUTF8
     */
  /* readonly attribute string Value; */
  nsresult GetValue(char * *aValue);

  /**
     * The UTF-8 URI of the resource.
     */
  /* readonly attribute AUTF8String ValueUTF8; */
  nsresult GetValueUTF8(nsACString * aValueUTF8);

  /**
     * An unscriptable version used to avoid a string copy. Meant
     * for use as a performance optimization. The string is encoded
     * in UTF-8.
     */
  /* [noscript] void GetValueConst ([shared] out string aConstValue); */
  nsresult GetValueConst(char **aConstValue);

  /**
     * This method is called by the nsIRDFService after constructing
     * a resource object to initialize it's URI. You would not normally
     * call this method directly
     */
  /* void Init (in string uri); */
  nsresult Init(char *uri);

  /**
     * Determine if the resource has the given URI.
     */
  /* boolean EqualsString (in string aURI); */
  nsresult EqualsString(char *aURI, PRBool *_retval);

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
  nsresult GetDelegate(char *aKey, nsIID * aIID, void * *aResult);

  /**
     * Force a delegate to be "unbound" from the resource.
     *
     * Normally, a delegate object's lifetime will be identical to
     * that of the resource to which it is bound; this method allows a
     * delegate to unlink itself from an RDF resource prematurely.
     */
  /* void ReleaseDelegate (in string aKey); */
  nsresult ReleaseDelegate(char *aKey);

}

