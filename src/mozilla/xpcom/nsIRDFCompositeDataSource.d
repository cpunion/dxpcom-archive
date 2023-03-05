/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFCompositeDataSource.idl
 */

module mozilla.xpcom.nsIRDFCompositeDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIRDFDataSource;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIRDFCompositeDataSource */
const char[] NS_IRDFCOMPOSITEDATASOURCE_IID_STR = "96343820-307c-11d2-bc15-00805f912fe7";

const nsIID NS_IRDFCOMPOSITEDATASOURCE_IID= 
  {0x96343820, 0x307c, 0x11d2, 
    [ 0xbc, 0x15, 0x00, 0x80, 0x5f, 0x91, 0x2f, 0xe7 ]};

/**
 * An nsIRDFCompositeDataSource composes individual data sources, providing
 * the illusion of a single, coherent RDF graph.
 */
extern(Windows)
interface nsIRDFCompositeDataSource : nsIRDFDataSource {
  static const char[] IID_STR = NS_IRDFCOMPOSITEDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFCOMPOSITEDATASOURCE_IID;

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
  nsresult GetAllowNegativeAssertions(PRBool *aAllowNegativeAssertions);
  nsresult SetAllowNegativeAssertions(PRBool aAllowNegativeAssertions);

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
  nsresult GetCoalesceDuplicateArcs(PRBool *aCoalesceDuplicateArcs);
  nsresult SetCoalesceDuplicateArcs(PRBool aCoalesceDuplicateArcs);

  /**
     * Add a datasource the the composite data source.
     * @param aDataSource the datasource to add to composite
     */
  /* void AddDataSource (in nsIRDFDataSource aDataSource); */
  nsresult AddDataSource(nsIRDFDataSource aDataSource);

  /**
     * Remove a datasource from the composite data source.
     * @param aDataSource the datasource to remove from the composite
     */
  /* void RemoveDataSource (in nsIRDFDataSource aDataSource); */
  nsresult RemoveDataSource(nsIRDFDataSource aDataSource);

  /**
     * Retrieve the datasources in the composite data source.
     * @return an nsISimpleEnumerator that will enumerate each
     * of the datasources in the composite
     */
  /* nsISimpleEnumerator GetDataSources (); */
  nsresult GetDataSources(nsISimpleEnumerator *_retval);

}

