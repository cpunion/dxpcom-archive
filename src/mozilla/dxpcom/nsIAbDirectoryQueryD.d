/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectoryQuery.idl
 */

module mozilla.dxpcom.nsIAbDirectoryQueryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirectoryQuery;


public import mozilla.dxpcom.nsIAbDirectoryQueryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIAbBooleanExpression;
public import mozilla.dxpcom.nsIAbBooleanExpressionD;


/* starting wrapper class:    nsIAbDirectoryQueryArguments */
/**
 * The arguments for a query.
 *
 * Contains an expression for perform matches
 * and an array of properties which should be
 * returned if a match is found from the expression
 *
 */
class nsIAbDirectoryQueryArgumentsD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYQUERYARGUMENTS_IID;


  alias nsIAbDirectoryQueryArguments InnerType;

  this(nsIAbDirectoryQueryArguments intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQueryArguments opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQueryArguments value) {
    inner = value;
  }

  /**
     * Defines the boolean expression for
     * the matching of cards
     *
     */
  /* attribute nsISupports expression; */
  nsISupportsD  Expression(){
    nsISupports value;
    nsresult __result = inner.GetExpression(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Expression(nsISupportsD  aExpression){
    nsISupports value;
    nsresult __result = inner.SetExpression(value);
    CheckException(__result);
  }

  /**
     * Defines if sub directories should be
     * queried 
     *
     */
  /* attribute boolean querySubDirectories; */
  PRBool QuerySubDirectories(){
    PRBool value;
    nsresult __result = inner.GetQuerySubDirectories(&value);
    CheckException(__result);
    return value;
  }
  void QuerySubDirectories(PRBool aQuerySubDirectories){
    nsresult __result = inner.SetQuerySubDirectories(aQuerySubDirectories);
    CheckException(__result);
  }

  /**
     * The list of properties which should
     * be returned if a match occurs on a card
     *
     */
  /* void setReturnProperties (in unsigned long returnPropertiesSize, [array, size_is (returnPropertiesSize)] in string returnPropertiesArray); */
  void SetReturnProperties(PRUint32 returnPropertiesSize, char**returnPropertiesArray){
    nsresult __result = inner.SetReturnProperties(returnPropertiesSize, returnPropertiesArray);
    CheckException(__result);
  }

  /* void getReturnProperties (out unsigned long returnPropertiesSize, [array, size_is (returnPropertiesSize), retval] out string returnPropertiesArray); */
  void GetReturnProperties(out PRUint32 returnPropertiesSize, out char**returnPropertiesArray){
    nsresult __result = inner.GetReturnProperties(&returnPropertiesSize, &returnPropertiesArray);
    CheckException(__result);
  }

  /** 
     * A parameter which can be used to pass in data specific to a particular
     * type of addressbook.  
     */
  /* attribute nsISupports typeSpecificArg; */
  nsISupportsD  TypeSpecificArg(){
    nsISupports value;
    nsresult __result = inner.GetTypeSpecificArg(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void TypeSpecificArg(nsISupportsD  aTypeSpecificArg){
    nsISupports value;
    nsresult __result = inner.SetTypeSpecificArg(value);
    CheckException(__result);
  }

private:
  nsIAbDirectoryQueryArguments inner;

}


/* starting wrapper class:    nsIAbDirectoryQueryPropertyValue */
class nsIAbDirectoryQueryPropertyValueD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYQUERYPROPERTYVALUE_IID;


  alias nsIAbDirectoryQueryPropertyValue InnerType;

  this(nsIAbDirectoryQueryPropertyValue intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQueryPropertyValue opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQueryPropertyValue value) {
    inner = value;
  }

  /**
     * The property which should be matched
     *
     * For example 'primaryEmail' or 'homePhone'
     * for card properties.
     *
     * Two further properties are defined that 
     * do not exist as properties on a card.
     *
     * 'card:nsIAbCard' which represents the interface
     * of a card component
     *
     */
  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The value of the property
     *
     */
  /* readonly attribute wstring value; */
  PRUnichar* Value(){
    PRUnichar* value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The value of the property
     * as an interface
     *
     * Only valid if the corresponding
     * property name is related to an
     * interface instead of a wstring
     *
     */
  /* readonly attribute nsISupports valueISupports; */
  nsISupportsD  ValueISupports(){
    nsISupports value;
    nsresult __result = inner.GetValueISupports(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsIAbDirectoryQueryPropertyValue inner;

}


/* starting wrapper class:    nsIAbDirectoryQueryResult */
class nsIAbDirectoryQueryResultD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYQUERYRESULT_IID;


  alias nsIAbDirectoryQueryResult InnerType;

  this(nsIAbDirectoryQueryResult intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQueryResult opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQueryResult value) {
    inner = value;
  }

  /**
     * The context ID of the query
     *
     */
  /* readonly attribute long contextID; */
  PRInt32 ContextID(){
    PRInt32 value;
    nsresult __result = inner.GetContextID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The context of the query which
     * corresponds to the arguments that
     * define the query
     *
     */
  /* readonly attribute nsIAbDirectoryQueryArguments contextArgs; */
  nsIAbDirectoryQueryArgumentsD  ContextArgs(){
    nsIAbDirectoryQueryArguments value;
    nsresult __result = inner.GetContextArgs(&value);
    CheckException(__result);
    return new nsIAbDirectoryQueryArgumentsD(value);
  }

  /**
     * List of defined query results
     *
     */
  enum { queryResultMatch = 0 }

  enum { queryResultComplete = 1 }

  enum { queryResultStopped = 2 }

  enum { queryResultError = 3 }

  /**
     * The type of result
     *
     * Identifies a query entry, the query has finished
     * or that an error has occured
     */
  /* readonly attribute long type; */
  PRInt32 Type(){
    PRInt32 value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The result of a singular match for a card
     *
     * Only valid when the attribute type is
     * of 'query match'
     *
     * nsISupportsArray<nsIAbDirectoryQueryPropertyValue>
     *        Multiple entries corresponding to card
     *        properties
     * nsISupportsArray<nsIAbCard>
     *        Only one entry makese sense
     * 
     */
  /* readonly attribute nsISupportsArray result; */
  nsISupportsArrayD  Result(){
    nsISupportsArray value;
    nsresult __result = inner.GetResult(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /**
     * result attribute defined explicitly as an
     * array of nsISupport interfaces
     *
     */
  /* void agetResult (out unsigned long aResultSize, [array, size_is (aResultSize), retval] out nsISupports aResultArray); */
  void AgetResult(out PRUint32 aResultSize, out nsISupportsD *aResultArray){
    nsISupports _aResultArray;
    nsresult __result = inner.AgetResult(&aResultSize, &_aResultArray);
    CheckException(__result);
    aResultArray = _aResultArray ? new nsISupportsD(_aResultArray) : null;
  }

private:
  nsIAbDirectoryQueryResult inner;

}


/* starting wrapper class:    nsIAbDirectoryQueryResultListener */
class nsIAbDirectoryQueryResultListenerD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYQUERYRESULTLISTENER_IID;


  alias nsIAbDirectoryQueryResultListener InnerType;

  this(nsIAbDirectoryQueryResultListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQueryResultListener opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQueryResultListener value) {
    inner = value;
  }

  /**
     * Called when a match is found. May be
     * called from a different thread to the
     * one that initiates the query
     *
     * @param result
     *        A individual result associated returned
     *        from a query
     */
  /* void onQueryItem (in nsIAbDirectoryQueryResult result); */
  void OnQueryItem(nsIAbDirectoryQueryResultD result){
    nsresult __result = inner.OnQueryItem(result ? cast(nsIAbDirectoryQueryResult)result : null);
    CheckException(__result);
  }

private:
  nsIAbDirectoryQueryResultListener inner;

}


/* starting wrapper class:    nsIAbDirectoryQuery */
class nsIAbDirectoryQueryD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRECTORYQUERY_IID;


  alias nsIAbDirectoryQuery InnerType;

  this(nsIAbDirectoryQuery intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirectoryQuery opCast() {
    return inner;
  }

  void opAssign(nsIAbDirectoryQuery value) {
    inner = value;
  }

  /**
     * Initiates a query on a directory and 
     * sub-directories for properties on cards
     *
     * @param arguments
     *        The properties and values to match
     *        Value could of type nsIAbDirectoryQueryMatchItem
     *        for matches other than ?contains?
     * @param listener
     *        The listener which will obtain individual
     *        query results
     * @param resultLimit
     *        Limits the results returned to a specifed
     *        maximum value
     * @return
     *        Unique number representing the context ID of
     *        the query
     *
     */
  /* long doQuery (in nsIAbDirectoryQueryArguments arguments, in nsIAbDirectoryQueryResultListener listener, in long resultLimit, in long timeOut); */
  PRInt32 DoQuery(nsIAbDirectoryQueryArgumentsD arguments, nsIAbDirectoryQueryResultListenerD listener, PRInt32 resultLimit, PRInt32 timeOut){
    PRInt32 _retval;
    nsresult __result = inner.DoQuery(arguments ? cast(nsIAbDirectoryQueryArguments)arguments : null, listener ? cast(nsIAbDirectoryQueryResultListener)listener : null, resultLimit, timeOut, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Stops an existing query operation if
     * query operation is asynchronous
     *
     * The nsIAbDirectoryQueryResultListener will
     * be notified when query has stopped
     *
     * It is implementation specific if notification
     * synchronous or asynchronous
     *
     * @param contextID
     *        The unique number returned from
     *        the doQuery methods
     *
     */
  /* void stopQuery (in long contextID); */
  void StopQuery(PRInt32 contextID){
    nsresult __result = inner.StopQuery(contextID);
    CheckException(__result);
  }

private:
  nsIAbDirectoryQuery inner;

}

