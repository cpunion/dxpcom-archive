/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFDelegateFactory.idl
 */

module mozilla.xpcom.nsIRDFDelegateFactory;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsrootidl;
public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */


/* starting interface:    nsIRDFDelegateFactory */
const char[] NS_IRDFDELEGATEFACTORY_IID_STR = "a1b89470-a124-11d3-be59-0020a6361667";

const nsIID NS_IRDFDELEGATEFACTORY_IID= 
  {0xa1b89470, 0xa124, 0x11d3, 
    [ 0xbe, 0x59, 0x00, 0x20, 0xa6, 0x36, 0x16, 0x67 ]};

/**
 * This interface should be implemented by an XPCOM factory that
 * is registered to handle "@mozilla.org/rdf/delegate-factory/[key]/[scheme];1"
 * ContractIDs.
 *
 * The factory will be invoked to create delegate objects from
 * nsIRDFResource::GetDelegate().
 */
extern(Windows)
interface nsIRDFDelegateFactory : nsISupports {
  static const char[] IID_STR = NS_IRDFDELEGATEFACTORY_IID_STR;
  static const nsIID IID = NS_IRDFDELEGATEFACTORY_IID;

  /**
     * Create a delegate for the specified RDF resource.
     *
     * The created delegate should forward AddRef() and Release()
     * calls to the aOuter object.
     */
  /* void CreateDelegate (in nsIRDFResource aOuter, in string aKey, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult aResult); */
  nsresult CreateDelegate(nsIRDFResource aOuter, char *aKey, nsIID * aIID, void * *aResult);

}

