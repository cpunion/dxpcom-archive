/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFContainer.idl
 */

module mozilla.dxpcom.nsIRDFContainerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFContainer;


public import mozilla.dxpcom.nsIRDFContainerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIRDFContainer */
class nsIRDFContainerD : public nsISupportsD {

  static const nsIID IID = NS_IRDFCONTAINER_IID;


  alias nsIRDFContainer InnerType;

  this(nsIRDFContainer intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFContainer opCast() {
    return inner;
  }

  void opAssign(nsIRDFContainer value) {
    inner = value;
  }

  /* readonly attribute nsIRDFDataSource DataSource; */
  nsIRDFDataSourceD  DataSource(){
    nsIRDFDataSource value;
    nsresult __result = inner.GetDataSource(&value);
    CheckException(__result);
    return new nsIRDFDataSourceD(value);
  }

  /* readonly attribute nsIRDFResource Resource; */
  nsIRDFResourceD  Resource(){
    nsIRDFResource value;
    nsresult __result = inner.GetResource(&value);
    CheckException(__result);
    return new nsIRDFResourceD(value);
  }

  /**
     * Initialize the container wrapper to the specified resource
     * using the specified datasource for context.
     */
  /* void Init (in nsIRDFDataSource aDataSource, in nsIRDFResource aContainer); */
  void Init(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aContainer){
    nsresult __result = inner.Init(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aContainer ? cast(nsIRDFResource)aContainer : null);
    CheckException(__result);
  }

  /**
     * Return the number of elements in the container. Note that this
     * may not always be accurate due to aggregation.
     */
  /* long GetCount (); */
  PRInt32 GetCount(){
    PRInt32 _retval;
    nsresult __result = inner.GetCount(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return an enumerator that can be used to enumerate the contents
     * of the container in ascending order.
     */
  /* nsISimpleEnumerator GetElements (); */
  nsISimpleEnumeratorD  GetElements(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetElements(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Append an element to the container, assigning it the next
     * available ordinal.
     */
  /* void AppendElement (in nsIRDFNode aElement); */
  void AppendElement(nsIRDFNodeD aElement){
    nsresult __result = inner.AppendElement(aElement ? cast(nsIRDFNode)aElement : null);
    CheckException(__result);
  }

  /**
     * Remove the first occurence of the specified element from the
     * container. If aRenumber is 'true', then the underlying RDF graph
     * will be 're-numbered' to account for the removal.
     */
  /* void RemoveElement (in nsIRDFNode aElement, in boolean aRenumber); */
  void RemoveElement(nsIRDFNodeD aElement, PRBool aRenumber){
    nsresult __result = inner.RemoveElement(aElement ? cast(nsIRDFNode)aElement : null, aRenumber);
    CheckException(__result);
  }

  /**
     * Insert aElement at the specified index. If aRenumber is 'true', then
     * the underlying RDF graph will be 're-numbered' to accomodate the new
     * element.
     */
  /* void InsertElementAt (in nsIRDFNode aElement, in long aIndex, in boolean aRenumber); */
  void InsertElementAt(nsIRDFNodeD aElement, PRInt32 aIndex, PRBool aRenumber){
    nsresult __result = inner.InsertElementAt(aElement ? cast(nsIRDFNode)aElement : null, aIndex, aRenumber);
    CheckException(__result);
  }

  /**
     * Remove the element at the specified index. If aRenumber is 'true', then
     * the underlying RDF graph will be 're-numbered' to account for the
     * removal.
     *
     * @return the element that was removed.
     */
  /* nsIRDFNode RemoveElementAt (in long aIndex, in boolean aRenumber); */
  nsIRDFNodeD  RemoveElementAt(PRInt32 aIndex, PRBool aRenumber){
    nsIRDFNode _retval;
    nsresult __result = inner.RemoveElementAt(aIndex, aRenumber, &_retval);
    CheckException(__result);
    return new nsIRDFNodeD(_retval);
  }

  /**
     * Determine the index of an element in the container.
     *
     * @return The index of the specified element in the container. If
     * the element is not contained in the container, this function
     * returns '-1'.
     */
  /* long IndexOf (in nsIRDFNode aElement); */
  PRInt32 IndexOf(nsIRDFNodeD aElement){
    PRInt32 _retval;
    nsresult __result = inner.IndexOf(aElement ? cast(nsIRDFNode)aElement : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIRDFContainer inner;

}

