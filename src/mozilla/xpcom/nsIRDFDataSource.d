/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFDataSource.idl
 */

module mozilla.xpcom.nsIRDFDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.xpcom.nsIRDFObserver;


/* starting interface:    nsIRDFDataSource */
const char[] NS_IRDFDATASOURCE_IID_STR = "0f78da58-8321-11d2-8eac-00805f29f370";

const nsIID NS_IRDFDATASOURCE_IID= 
  {0x0f78da58, 0x8321, 0x11d2, 
    [ 0x8e, 0xac, 0x00, 0x80, 0x5f, 0x29, 0xf3, 0x70 ]};

extern(Windows)
interface nsIRDFDataSource : nsISupports {
  static const char[] IID_STR = NS_IRDFDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFDATASOURCE_IID;

  /** The "URI" of the data source. This used by the RDF service's
     * |GetDataSource()| method to cache datasources.
     */
  /* readonly attribute string URI; */
  nsresult GetURI(char * *aURI);

  /** Find an RDF resource that points to a given node over the
     * specified arc & truth value
     *
     * @return NS_RDF_NO_VALUE if there is no source that leads
     * to the target with the specified property.
     */
  /* nsIRDFResource GetSource (in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsresult GetSource(nsIRDFResource aProperty, nsIRDFNode aTarget, PRBool aTruthValue, nsIRDFResource *_retval);

  /**
     * Find all RDF resources that point to a given node over the
     * specified arc & truth value
     *
     * @return NS_OK unless a catastrophic error occurs. If the
     * method returns NS_OK, you may assume that nsISimpleEnumerator points
     * to a valid (but possibly empty) cursor.
     */
  /* nsISimpleEnumerator GetSources (in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsresult GetSources(nsIRDFResource aProperty, nsIRDFNode aTarget, PRBool aTruthValue, nsISimpleEnumerator *_retval);

  /**
     * Find a child of that is related to the source by the given arc
     * arc and truth value
     *
     * @return NS_RDF_NO_VALUE if there is no target accessable from the
     * source via the specified property.
     */
  /* nsIRDFNode GetTarget (in nsIRDFResource aSource, in nsIRDFResource aProperty, in boolean aTruthValue); */
  nsresult GetTarget(nsIRDFResource aSource, nsIRDFResource aProperty, PRBool aTruthValue, nsIRDFNode *_retval);

  /**
     * Find all children of that are related to the source by the given arc
     * arc and truth value.
     *
     * @return NS_OK unless a catastrophic error occurs. If the
     * method returns NS_OK, you may assume that nsISimpleEnumerator points
     * to a valid (but possibly empty) cursor.
     */
  /* nsISimpleEnumerator GetTargets (in nsIRDFResource aSource, in nsIRDFResource aProperty, in boolean aTruthValue); */
  nsresult GetTargets(nsIRDFResource aSource, nsIRDFResource aProperty, PRBool aTruthValue, nsISimpleEnumerator *_retval);

  /**
     * Add an assertion to the graph.
     */
  /* void Assert (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsresult Assert(nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget, PRBool aTruthValue);

  /**
     * Remove an assertion from the graph.
     */
  /* void Unassert (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  nsresult Unassert(nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget);

  /**
     * Change an assertion from
     *
     *   [aSource]--[aProperty]-->[aOldTarget]
     *
     * to
     * 
     *   [aSource]--[aProperty]-->[aNewTarget]
     */
  /* void Change (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aOldTarget, in nsIRDFNode aNewTarget); */
  nsresult Change(nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aOldTarget, nsIRDFNode aNewTarget);

  /**
     * 'Move' an assertion from
     *
     *   [aOldSource]--[aProperty]-->[aTarget]
     *
     * to
     * 
     *   [aNewSource]--[aProperty]-->[aTarget]
     */
  /* void Move (in nsIRDFResource aOldSource, in nsIRDFResource aNewSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  nsresult Move(nsIRDFResource aOldSource, nsIRDFResource aNewSource, nsIRDFResource aProperty, nsIRDFNode aTarget);

  /**
     * Query whether an assertion exists in this graph.
     */
  /* boolean HasAssertion (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsresult HasAssertion(nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget, PRBool aTruthValue, PRBool *_retval);

  /**
     * Add an observer to this data source. If the datasource
     * supports observers, the datasource source should hold a strong
     * reference to the observer.
     */
  /* void AddObserver (in nsIRDFObserver aObserver); */
  nsresult AddObserver(nsIRDFObserver aObserver);

  /**
     * Remove an observer from this data source.
     */
  /* void RemoveObserver (in nsIRDFObserver aObserver); */
  nsresult RemoveObserver(nsIRDFObserver aObserver);

  /**
     * Get a cursor to iterate over all the arcs that point into a node.
     *
     * @return NS_OK unless a catastrophic error occurs. If the method
     * returns NS_OK, you may assume that labels points to a valid (but
     * possible empty) nsISimpleEnumerator object.
     */
  /* nsISimpleEnumerator ArcLabelsIn (in nsIRDFNode aNode); */
  nsresult ArcLabelsIn(nsIRDFNode aNode, nsISimpleEnumerator *_retval);

  /**
     * Get a cursor to iterate over all the arcs that originate in
     * a resource.
     *
     * @return NS_OK unless a catastrophic error occurs. If the method
     * returns NS_OK, you may assume that labels points to a valid (but
     * possible empty) nsISimpleEnumerator object.
     */
  /* nsISimpleEnumerator ArcLabelsOut (in nsIRDFResource aSource); */
  nsresult ArcLabelsOut(nsIRDFResource aSource, nsISimpleEnumerator *_retval);

  /**
     * Retrieve all of the resources that the data source currently
     * refers to.
     */
  /* nsISimpleEnumerator GetAllResources (); */
  nsresult GetAllResources(nsISimpleEnumerator *_retval);

  /**
     * Returns whether a given command is enabled for a set of sources. 
     */
  /* boolean IsCommandEnabled (in nsISupportsArray aSources, in nsIRDFResource aCommand, in nsISupportsArray aArguments); */
  nsresult IsCommandEnabled(nsISupportsArray aSources, nsIRDFResource aCommand, nsISupportsArray aArguments, PRBool *_retval);

  /**
     * Perform the specified command on set of sources.
     */
  /* void DoCommand (in nsISupportsArray aSources, in nsIRDFResource aCommand, in nsISupportsArray aArguments); */
  nsresult DoCommand(nsISupportsArray aSources, nsIRDFResource aCommand, nsISupportsArray aArguments);

  /**
     * Returns the set of all commands defined for a given source.
     */
  /* nsISimpleEnumerator GetAllCmds (in nsIRDFResource aSource); */
  nsresult GetAllCmds(nsIRDFResource aSource, nsISimpleEnumerator *_retval);

  /**
     * Returns true if the specified node is pointed to by the specified arc.
     * Equivalent to enumerating ArcLabelsIn and comparing for the specified arc.
     */
  /* boolean hasArcIn (in nsIRDFNode aNode, in nsIRDFResource aArc); */
  nsresult HasArcIn(nsIRDFNode aNode, nsIRDFResource aArc, PRBool *_retval);

  /**
     * Returns true if the specified node has the specified outward arc.
     * Equivalent to enumerating ArcLabelsOut and comparing for the specified arc.
     */
  /* boolean hasArcOut (in nsIRDFResource aSource, in nsIRDFResource aArc); */
  nsresult HasArcOut(nsIRDFResource aSource, nsIRDFResource aArc, PRBool *_retval);

  /**
     * Notify observers that the datasource is about to send several
     * notifications at once.
     * This must be followed by calling endUpdateBatch(), otherwise
     * viewers will get out of sync.
     */
  /* void beginUpdateBatch (); */
  nsresult BeginUpdateBatch();

  /**
     * Notify observers that the datasource has completed issuing
     * a notification group.
     */
  /* void endUpdateBatch (); */
  nsresult EndUpdateBatch();

}

