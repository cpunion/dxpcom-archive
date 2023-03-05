/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFDataSource.idl
 */

module mozilla.dxpcom.nsIRDFDataSourceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFDataSource;


public import mozilla.dxpcom.nsIRDFDataSourceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;
public import mozilla.xpcom.nsIRDFObserver;
public import mozilla.dxpcom.nsIRDFObserverD;


/* starting wrapper class:    nsIRDFDataSource */
class nsIRDFDataSourceD : public nsISupportsD {

  static const nsIID IID = NS_IRDFDATASOURCE_IID;


  alias nsIRDFDataSource InnerType;

  this(nsIRDFDataSource intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFDataSource opCast() {
    return inner;
  }

  void opAssign(nsIRDFDataSource value) {
    inner = value;
  }

  /** The "URI" of the data source. This used by the RDF service's
     * |GetDataSource()| method to cache datasources.
     */
  /* readonly attribute string URI; */
  char* URI(){
    char* value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return value;
  }

  /** Find an RDF resource that points to a given node over the
     * specified arc & truth value
     *
     * @return NS_RDF_NO_VALUE if there is no source that leads
     * to the target with the specified property.
     */
  /* nsIRDFResource GetSource (in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsIRDFResourceD  GetSource(nsIRDFResourceD aProperty, nsIRDFNodeD aTarget, PRBool aTruthValue){
    nsIRDFResource _retval;
    nsresult __result = inner.GetSource(aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null, aTruthValue, &_retval);
    CheckException(__result);
    return new nsIRDFResourceD(_retval);
  }

  /**
     * Find all RDF resources that point to a given node over the
     * specified arc & truth value
     *
     * @return NS_OK unless a catastrophic error occurs. If the
     * method returns NS_OK, you may assume that nsISimpleEnumerator points
     * to a valid (but possibly empty) cursor.
     */
  /* nsISimpleEnumerator GetSources (in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsISimpleEnumeratorD  GetSources(nsIRDFResourceD aProperty, nsIRDFNodeD aTarget, PRBool aTruthValue){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetSources(aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null, aTruthValue, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Find a child of that is related to the source by the given arc
     * arc and truth value
     *
     * @return NS_RDF_NO_VALUE if there is no target accessable from the
     * source via the specified property.
     */
  /* nsIRDFNode GetTarget (in nsIRDFResource aSource, in nsIRDFResource aProperty, in boolean aTruthValue); */
  nsIRDFNodeD  GetTarget(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, PRBool aTruthValue){
    nsIRDFNode _retval;
    nsresult __result = inner.GetTarget(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTruthValue, &_retval);
    CheckException(__result);
    return new nsIRDFNodeD(_retval);
  }

  /**
     * Find all children of that are related to the source by the given arc
     * arc and truth value.
     *
     * @return NS_OK unless a catastrophic error occurs. If the
     * method returns NS_OK, you may assume that nsISimpleEnumerator points
     * to a valid (but possibly empty) cursor.
     */
  /* nsISimpleEnumerator GetTargets (in nsIRDFResource aSource, in nsIRDFResource aProperty, in boolean aTruthValue); */
  nsISimpleEnumeratorD  GetTargets(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, PRBool aTruthValue){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetTargets(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTruthValue, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Add an assertion to the graph.
     */
  /* void Assert (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  void Assert(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget, PRBool aTruthValue){
    nsresult __result = inner.Assert(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null, aTruthValue);
    CheckException(__result);
  }

  /**
     * Remove an assertion from the graph.
     */
  /* void Unassert (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  void Unassert(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget){
    nsresult __result = inner.Unassert(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null);
    CheckException(__result);
  }

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
  void Change(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aOldTarget, nsIRDFNodeD aNewTarget){
    nsresult __result = inner.Change(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aOldTarget ? cast(nsIRDFNode)aOldTarget : null, aNewTarget ? cast(nsIRDFNode)aNewTarget : null);
    CheckException(__result);
  }

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
  void Move(nsIRDFResourceD aOldSource, nsIRDFResourceD aNewSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget){
    nsresult __result = inner.Move(aOldSource ? cast(nsIRDFResource)aOldSource : null, aNewSource ? cast(nsIRDFResource)aNewSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null);
    CheckException(__result);
  }

  /**
     * Query whether an assertion exists in this graph.
     */
  /* boolean HasAssertion (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  PRBool HasAssertion(nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget, PRBool aTruthValue){
    PRBool _retval;
    nsresult __result = inner.HasAssertion(aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null, aTruthValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Add an observer to this data source. If the datasource
     * supports observers, the datasource source should hold a strong
     * reference to the observer.
     */
  /* void AddObserver (in nsIRDFObserver aObserver); */
  void AddObserver(nsIRDFObserverD aObserver){
    nsresult __result = inner.AddObserver(aObserver ? cast(nsIRDFObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * Remove an observer from this data source.
     */
  /* void RemoveObserver (in nsIRDFObserver aObserver); */
  void RemoveObserver(nsIRDFObserverD aObserver){
    nsresult __result = inner.RemoveObserver(aObserver ? cast(nsIRDFObserver)aObserver : null);
    CheckException(__result);
  }

  /**
     * Get a cursor to iterate over all the arcs that point into a node.
     *
     * @return NS_OK unless a catastrophic error occurs. If the method
     * returns NS_OK, you may assume that labels points to a valid (but
     * possible empty) nsISimpleEnumerator object.
     */
  /* nsISimpleEnumerator ArcLabelsIn (in nsIRDFNode aNode); */
  nsISimpleEnumeratorD  ArcLabelsIn(nsIRDFNodeD aNode){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.ArcLabelsIn(aNode ? cast(nsIRDFNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Get a cursor to iterate over all the arcs that originate in
     * a resource.
     *
     * @return NS_OK unless a catastrophic error occurs. If the method
     * returns NS_OK, you may assume that labels points to a valid (but
     * possible empty) nsISimpleEnumerator object.
     */
  /* nsISimpleEnumerator ArcLabelsOut (in nsIRDFResource aSource); */
  nsISimpleEnumeratorD  ArcLabelsOut(nsIRDFResourceD aSource){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.ArcLabelsOut(aSource ? cast(nsIRDFResource)aSource : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Retrieve all of the resources that the data source currently
     * refers to.
     */
  /* nsISimpleEnumerator GetAllResources (); */
  nsISimpleEnumeratorD  GetAllResources(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetAllResources(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Returns whether a given command is enabled for a set of sources. 
     */
  /* boolean IsCommandEnabled (in nsISupportsArray aSources, in nsIRDFResource aCommand, in nsISupportsArray aArguments); */
  PRBool IsCommandEnabled(nsISupportsArrayD aSources, nsIRDFResourceD aCommand, nsISupportsArrayD aArguments){
    PRBool _retval;
    nsresult __result = inner.IsCommandEnabled(aSources ? cast(nsISupportsArray)aSources : null, aCommand ? cast(nsIRDFResource)aCommand : null, aArguments ? cast(nsISupportsArray)aArguments : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Perform the specified command on set of sources.
     */
  /* void DoCommand (in nsISupportsArray aSources, in nsIRDFResource aCommand, in nsISupportsArray aArguments); */
  void DoCommand(nsISupportsArrayD aSources, nsIRDFResourceD aCommand, nsISupportsArrayD aArguments){
    nsresult __result = inner.DoCommand(aSources ? cast(nsISupportsArray)aSources : null, aCommand ? cast(nsIRDFResource)aCommand : null, aArguments ? cast(nsISupportsArray)aArguments : null);
    CheckException(__result);
  }

  /**
     * Returns the set of all commands defined for a given source.
     */
  /* nsISimpleEnumerator GetAllCmds (in nsIRDFResource aSource); */
  nsISimpleEnumeratorD  GetAllCmds(nsIRDFResourceD aSource){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetAllCmds(aSource ? cast(nsIRDFResource)aSource : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Returns true if the specified node is pointed to by the specified arc.
     * Equivalent to enumerating ArcLabelsIn and comparing for the specified arc.
     */
  /* boolean hasArcIn (in nsIRDFNode aNode, in nsIRDFResource aArc); */
  PRBool HasArcIn(nsIRDFNodeD aNode, nsIRDFResourceD aArc){
    PRBool _retval;
    nsresult __result = inner.HasArcIn(aNode ? cast(nsIRDFNode)aNode : null, aArc ? cast(nsIRDFResource)aArc : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns true if the specified node has the specified outward arc.
     * Equivalent to enumerating ArcLabelsOut and comparing for the specified arc.
     */
  /* boolean hasArcOut (in nsIRDFResource aSource, in nsIRDFResource aArc); */
  PRBool HasArcOut(nsIRDFResourceD aSource, nsIRDFResourceD aArc){
    PRBool _retval;
    nsresult __result = inner.HasArcOut(aSource ? cast(nsIRDFResource)aSource : null, aArc ? cast(nsIRDFResource)aArc : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Notify observers that the datasource is about to send several
     * notifications at once.
     * This must be followed by calling endUpdateBatch(), otherwise
     * viewers will get out of sync.
     */
  /* void beginUpdateBatch (); */
  void BeginUpdateBatch(){
    nsresult __result = inner.BeginUpdateBatch();
    CheckException(__result);
  }

  /**
     * Notify observers that the datasource has completed issuing
     * a notification group.
     */
  /* void endUpdateBatch (); */
  void EndUpdateBatch(){
    nsresult __result = inner.EndUpdateBatch();
    CheckException(__result);
  }

private:
  nsIRDFDataSource inner;

}

