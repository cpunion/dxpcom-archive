/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFObserver.idl
 */

module mozilla.dxpcom.nsIRDFObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRDFObserver;


public import mozilla.dxpcom.nsIRDFObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.dxpcom.nsIRDFResourceD;
public import mozilla.xpcom.nsIRDFNode;
public import mozilla.dxpcom.nsIRDFNodeD;

public import mozilla.xpcom.nsIRDFDataSource;

public import mozilla.dxpcom.nsIRDFDataSourceD;


/* starting wrapper class:    nsIRDFObserver */
class nsIRDFObserverD : public nsISupportsD {

  static const nsIID IID = NS_IRDFOBSERVER_IID;


  alias nsIRDFObserver InnerType;

  this(nsIRDFObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIRDFObserver opCast() {
    return inner;
  }

  void opAssign(nsIRDFObserver value) {
    inner = value;
  }

  /**
     * This method is called whenever a new assertion is made
     * in the data source
     * @param aDataSource the datasource that is issuing
     *   the notification.
     * @param aSource the subject of the assertion
     * @param aProperty the predicate of the assertion
     * @param aTarget the object of the assertion
     */
  /* void onAssert (in nsIRDFDataSource aDataSource, in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  void OnAssert(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget){
    nsresult __result = inner.OnAssert(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null);
    CheckException(__result);
  }

  /**
     * This method is called whenever an assertion is removed
     * from the data source
     * @param aDataSource the datasource that is issuing
     *   the notification.
     * @param aSource the subject of the assertion
     * @param aProperty the predicate of the assertion
     * @param aTarget the object of the assertion
     */
  /* void onUnassert (in nsIRDFDataSource aDataSource, in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  void OnUnassert(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget){
    nsresult __result = inner.OnUnassert(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null);
    CheckException(__result);
  }

  /**
     * This method is called when the object of an assertion
     * changes from one value to another.
     * @param aDataSource the datasource that is issuing
     *   the notification.
     * @param aSource the subject of the assertion
     * @param aProperty the predicate of the assertion
     * @param aOldTarget the old object of the assertion
     * @param aNewTarget the new object of the assertion
     */
  /* void onChange (in nsIRDFDataSource aDataSource, in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aOldTarget, in nsIRDFNode aNewTarget); */
  void OnChange(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aSource, nsIRDFResourceD aProperty, nsIRDFNodeD aOldTarget, nsIRDFNodeD aNewTarget){
    nsresult __result = inner.OnChange(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aSource ? cast(nsIRDFResource)aSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aOldTarget ? cast(nsIRDFNode)aOldTarget : null, aNewTarget ? cast(nsIRDFNode)aNewTarget : null);
    CheckException(__result);
  }

  /**
     * This method is called when the subject of an assertion
     * changes from one value to another.
     * @param aDataSource the datasource that is issuing
     *   the notification.
     * @param aOldSource the old subject of the assertion
     * @param aNewSource the new subject of the assertion
     * @param aProperty the predicate of the assertion
     * @param aTarget the object of the assertion
     */
  /* void onMove (in nsIRDFDataSource aDataSource, in nsIRDFResource aOldSource, in nsIRDFResource aNewSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget); */
  void OnMove(nsIRDFDataSourceD aDataSource, nsIRDFResourceD aOldSource, nsIRDFResourceD aNewSource, nsIRDFResourceD aProperty, nsIRDFNodeD aTarget){
    nsresult __result = inner.OnMove(aDataSource ? cast(nsIRDFDataSource)aDataSource : null, aOldSource ? cast(nsIRDFResource)aOldSource : null, aNewSource ? cast(nsIRDFResource)aNewSource : null, aProperty ? cast(nsIRDFResource)aProperty : null, aTarget ? cast(nsIRDFNode)aTarget : null);
    CheckException(__result);
  }

  /**
     * This method is called when a datasource is about to
     * send several notifications at once. The observer can
     * use this as a cue to optimize its behavior. The observer
     * can expect the datasource to call endUpdateBatch() when
     * the group of notifications has completed.
     * @param aDataSource the datasource that is going to
     *   be issuing the notifications.
     */
  /* void onBeginUpdateBatch (in nsIRDFDataSource aDataSource); */
  void OnBeginUpdateBatch(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.OnBeginUpdateBatch(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

  /**
     * This method is called when a datasource has completed
     * issuing a notification group.
     * @param aDataSource the datasource that has finished
     *   issuing a group of notifications
     */
  /* void onEndUpdateBatch (in nsIRDFDataSource aDataSource); */
  void OnEndUpdateBatch(nsIRDFDataSourceD aDataSource){
    nsresult __result = inner.OnEndUpdateBatch(aDataSource ? cast(nsIRDFDataSource)aDataSource : null);
    CheckException(__result);
  }

private:
  nsIRDFObserver inner;

}

