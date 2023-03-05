/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFCompositeDataSource.idl
 */

module mozilla.dxpcom.nsIRDFCompositeDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFCompositeDataSource;


public import mozilla.dxpcom.nsIRDFCompositeDataSourceD;

public import mozilla.xpcom.nsIRDFDataSource;
public import mozilla.dxpcom.nsIRDFDataSourceD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIRDFCompositeDataSource */
/**
 * An nsIRDFCompositeDataSource composes individual data sources, providing
 * the illusion of a single, coherent RDF graph.
 */
class nsIRDFCompositeDataSourceD : public nsIRDFDataSourceD {

  static const nsIID IID = NS_IRDFCOMPOSITEDATASOURCE_IID;


  alias nsIRDFCompositeDataSource InnerType;

  this(nsIRDFCompositeDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFCompositeDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFCompositeDataSource value) {
    inner = value;
  }

  /**
     *
     * Set this value to <code>true</code> if the composite datasource
     * may contains at least one datasource that has <em>negative</em>
     * assertions. (This is the default.)
     *
     * Set this value to <code>false</code> if none of the datasources
     * being composed contains a negative assertion. This allows the
     * composite datasource to perform some query optimizations.
     *
     * By default, this value is <code>true</true>.
     */
  /* attribute boolean allowNegativeAssertions; */
  PRBool AllowNegativeAssertions(){
    PRBool value;
    nsresult __result = inner.GetAllowNegativeAssertions(&value);
    CheckException(__result);
    return value;
  }
  void AllowNegativeAssertions(PRBool aAllowNegativeAssertions){
    nsresult __result = inner.SetAllowNegativeAssertions(aAllowNegativeAssertions);
    CheckException(__result);
  }

  /**
     * Set to <code>true</code> if the composite datasource should
     * take care to coalesce duplicate arcs when returning values from
     * queries. (This is the default.)
     *
     * Set to <code>false</code> if the composite datasource shouldn't
     * bother to check for duplicates. This allows the composite
     * datasource to more efficiently answer queries.
     *
     * By default, this value is <code>true</code>.
     */
  /* attribute boolean coalesceDuplicateArcs; */
  PRBool CoalesceDuplicateArcs(){
    PRBool value;
    nsresult __result = inner.GetCoalesceDuplicateArcs(&value);
    CheckException(__result);
    return value;
  }
  void CoalesceDuplicateArcs(PRBool aCoalesceDuplicateArcs){
    nsresult __result = inner.SetCoalesceDuplicateArcs(aCoalesceDuplicateArcs);
    CheckException(__result);
  }

  /**
     * Add a datasource the the composite data source.
     * @param aDataSource the datasource to add to composite
     */
  /* void AddDataSource (in nsIRDFDataSource aDataSource); */
  void AddDataSource(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.AddDataSource(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

  /**
     * Remove a datasource from the composite data source.
     * @param aDataSource the datasource to remove from the composite
     */
  /* void RemoveDataSource (in nsIRDFDataSource aDataSource); */
  void RemoveDataSource(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.RemoveDataSource(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

  /**
     * Retrieve the datasources in the composite data source.
     * @return an nsISimpleEnumerator that will enumerate each
     * of the datasources in the composite
     */
  /* nsISimpleEnumerator GetDataSources (); */
  nsISimpleEnumeratorD  GetDataSources(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetDataSources(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIRDFCompositeDataSource inner;

}

