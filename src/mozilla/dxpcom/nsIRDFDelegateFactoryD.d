/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFDelegateFactory.idl
 */

module mozilla.dxpcom.nsIRDFDelegateFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFDelegateFactory;


public import mozilla.dxpcom.nsIRDFDelegateFactoryD;

public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;
public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;


/* starting wrapper class:    nsIRDFDelegateFactory */
/**
 * This interface should be implemented by an XPCOM factory that
 * is registered to handle "@mozilla.org/rdf/delegate-factory/[key]/[scheme];1"
 * ContractIDs.
 *
 * The factory will be invoked to create delegate objects from
 * nsIRDFResource::GetDelegate().
 */
class nsIRDFDelegateFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IRDFDELEGATEFACTORY_IID;


  alias nsIRDFDelegateFactory InnerType;

  this(nsIRDFDelegateFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFDelegateFactory opCast() {
    return inner;
  }

  void opAssign(nsIRDFDelegateFactory value) {
    inner = value;
  }

  /**
     * Create a delegate for the specified RDF resource.
     *
     * The created delegate should forward AddRef() and Release()
     * calls to the aOuter object.
     */
  /* void CreateDelegate (in nsIRDFResource aOuter, in string aKey, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult aResult); */
  void CreateDelegate(nsIRDFResourceD aOuter, char*aKey, nsIID * aIID, out void * aResult){
    nsresult __result = inner.CreateDelegate(aOuter ? cast(nsIRDFResource)aOuter : null, aKey, aIID, &aResult);
    CheckException(__result);
  }

private:
  nsIRDFDelegateFactory inner;

}

