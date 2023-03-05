/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFObserver.idl
 */

module mozilla.xpcom.nsIRDFObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFNode;

public import mozilla.xpcom.nsIRDFDataSource; /* forward declaration */


/* starting interface:    nsIRDFObserver */
const char[] NS_IRDFOBSERVER_IID_STR = "3cc75360-484a-11d2-bc16-00805f912fe7";

const nsIID NS_IRDFOBSERVER_IID= 
  {0x3cc75360, 0x484a, 0x11d2, 
    [ 0xbc, 0x16, 0x00, 0x80, 0x5f, 0x91, 0x2f, 0xe7 ]};

extern(Windows)
interface nsIRDFObserver : nsISupports {
  static const char[] IID_STR = NS_IRDFOBSERVER_IID_STR;
  static const nsIID IID = NS_IRDFOBSERVER_IID;

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
  nsresult OnAssert(nsIRDFDataSource aDataSource, nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget);

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
  nsresult OnUnassert(nsIRDFDataSource aDataSource, nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget);

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
  nsresult OnChange(nsIRDFDataSource aDataSource, nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aOldTarget, nsIRDFNode aNewTarget);

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
  nsresult OnMove(nsIRDFDataSource aDataSource, nsIRDFResource aOldSource, nsIRDFResource aNewSource, nsIRDFResource aProperty, nsIRDFNode aTarget);

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
  nsresult OnBeginUpdateBatch(nsIRDFDataSource aDataSource);

  /**
     * This method is called when a datasource has completed
     * issuing a notification group.
     * @param aDataSource the datasource that has finished
     *   issuing a group of notifications
     */
  /* void onEndUpdateBatch (in nsIRDFDataSource aDataSource); */
  nsresult OnEndUpdateBatch(nsIRDFDataSource aDataSource);

}

