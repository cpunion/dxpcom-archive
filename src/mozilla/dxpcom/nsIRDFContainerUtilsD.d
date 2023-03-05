/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFContainerUtils.idl
 */

module mozilla.dxpcom.nsIRDFContainerUtilsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFContainerUtils;


public import mozilla.dxpcom.nsIRDFContainerUtilsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFContainer;
public import mozilla.dxpcom.nsIRDFContainerD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;


/* starting wrapper class:    nsIRDFContainerUtils */
class nsIRDFContainerUtilsD : public nsISupportsD {

  static const nsIID IID = NS_IRDFCONTAINERUTILS_IID;


  alias nsIRDFContainerUtils InnerType;

  this(nsIRDFContainerUtils intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFContainerUtils opCast() {
    return inner;
  }

  void opAssign(nsIRDFContainerUtils value) {
    inner = value;
  }

  /**
     * Returns 'true' if the property is an RDF ordinal property.
     */
  /* boolean IsOrdinalProperty (in nsIRDFResource aProperty); */
  PRBool IsOrdinalProperty(nsIRDFResourceD aProperty){
    PRBool _retval;
    nsresult __result = inner.IsOrdinalProperty(aProperty ? cast(nsIRDFResource)aProperty : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Convert the specified index to an ordinal property.
     */
  /* nsIRDFResource IndexToOrdinalResource (in long aIndex); */
  nsIRDFResourceD  IndexToOrdinalResource(PRInt32 aIndex){
    nsIRDFResource _retval;
    nsresult __result = inner.IndexToOrdinalResource(aIndex, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
     * Convert the specified ordinal property into an index
     */
  /* long OrdinalResourceToIndex (in nsIRDFResource aOrdinal); */
  PRInt32 OrdinalResourceToIndex(nsIRDFResourceD aOrdinal){
    PRInt32 _retval;
    nsresult __result = inner.OrdinalResourceToIndex(aOrdinal ? cast(nsIRDFResource)aOrdinal : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return 'true' if the specified resource is a container
     */
  /* boolean IsContainer (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  PRBool IsContainer(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsContainer(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return 'true' if the specified resource is a container and it is empty
     */
  /* boolean IsEmpty (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  PRBool IsEmpty(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsEmpty(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return 'true' if the specified resource is a bag
     */
  /* boolean IsBag (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  PRBool IsBag(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsBag(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return 'true' if the specified resource is a sequence
     */
  /* boolean IsSeq (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  PRBool IsSeq(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsSeq(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return 'true' if the specified resource is an alternation
     */
  /* boolean IsAlt (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  PRBool IsAlt(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    PRBool _retval;
    nsresult __result = inner.IsAlt(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty bag in the specified data source.
     */
  /* nsIRDFContainer MakeBag (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsIRDFContainerD  MakeBag(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    nsIRDFContainer _retval;
    nsresult __result = inner.MakeBag(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return new nsIRDFContainerD(_retval);
  }

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty sequence in the specified data source.
     */
  /* nsIRDFContainer MakeSeq (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsIRDFContainerD  MakeSeq(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    nsIRDFContainer _retval;
    nsresult __result = inner.MakeSeq(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return new nsIRDFContainerD(_retval);
  }

  /**
     * Decorates the specified resource appropriately to make it
     * usable as an empty alternation in the specified data source.
     */
  /* nsIRDFContainer MakeAlt (in nsIRDFDataSource aDataSource, in nsIRDFResource aResource); */
  nsIRDFContainerD  MakeAlt(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aResource){
    nsIRDFContainer _retval;
    nsresult __result = inner.MakeAlt(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aResource ? cast(nsIRDFResource)aResource : null, &_retval);
    CheckException(__result);
    return new nsIRDFContainerD(_retval);
  }

  /**
     * Retrieve the index of element in the container. Returns -1 if
     * the element is not in the container.
     */
  /* long indexOf (in nsIRDFDataSource aDataSource, in nsIRDFResource aContainer, in nsIRDFNode aElement); */
  PRInt32 IndexOf(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aContainer, nsIRDFNodeD aElement){
    PRInt32 _retval;
    nsresult __result = inner.IndexOf(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aContainer ? cast(nsIRDFResource)aContainer : null, aElement ? cast(nsIRDFNode)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIRDFContainerUtils inner;

}

