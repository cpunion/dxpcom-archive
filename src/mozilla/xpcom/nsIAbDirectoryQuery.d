/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirectoryQuery.idl
 */

module mozilla.xpcom.nsIAbDirectoryQuery;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIAbBooleanExpression;


/* starting interface:    nsIAbDirectoryQueryArguments */
const char[] NS_IABDIRECTORYQUERYARGUMENTS_IID_STR = "c2d83a31-eba6-4053-9273-c7a006a94311";

const nsIID NS_IABDIRECTORYQUERYARGUMENTS_IID= 
  {0xc2d83a31, 0xeba6, 0x4053, 
    [ 0x92, 0x73, 0xc7, 0xa0, 0x06, 0xa9, 0x43, 0x11 ]};

/**
 * The arguments for a query.
 *
 * Contains an expression for perform matches
 * and an array of properties which should be
 * returned if a match is found from the expression
 *
 */
extern(Windows)
interface nsIAbDirectoryQueryArguments : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYQUERYARGUMENTS_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERYARGUMENTS_IID;

  /**
     * Defines the boolean expression for
     * the matching of cards
     *
     */
  /* attribute nsISupports expression; */
  nsresult GetExpression(nsISupports  *aExpression);
  nsresult SetExpression(nsISupports  aExpression);

  /**
     * Defines if sub directories should be
     * queried 
     *
     */
  /* attribute boolean querySubDirectories; */
  nsresult GetQuerySubDirectories(PRBool *aQuerySubDirectories);
  nsresult SetQuerySubDirectories(PRBool aQuerySubDirectories);

  /**
     * The list of properties which should
     * be returned if a match occurs on a card
     *
     */
  /* void setReturnProperties (in unsigned long returnPropertiesSize, [array, size_is (returnPropertiesSize)] in string returnPropertiesArray); */
  nsresult SetReturnProperties(PRUint32 returnPropertiesSize, char **returnPropertiesArray);

  /* void getReturnProperties (out unsigned long returnPropertiesSize, [array, size_is (returnPropertiesSize), retval] out string returnPropertiesArray); */
  nsresult GetReturnProperties(PRUint32 *returnPropertiesSize, char ***returnPropertiesArray);

  /** 
     * A parameter which can be used to pass in data specific to a particular
     * type of addressbook.  
     */
  /* attribute nsISupports typeSpecificArg; */
  nsresult GetTypeSpecificArg(nsISupports  *aTypeSpecificArg);
  nsresult SetTypeSpecificArg(nsISupports  aTypeSpecificArg);

}


/* starting interface:    nsIAbDirectoryQueryPropertyValue */
const char[] NS_IABDIRECTORYQUERYPROPERTYVALUE_IID_STR = "3a6e0c0c-1dd2-11b2-b23d-ea3a8ccb333c";

const nsIID NS_IABDIRECTORYQUERYPROPERTYVALUE_IID= 
  {0x3a6e0c0c, 0x1dd2, 0x11b2, 
    [ 0xb2, 0x3d, 0xea, 0x3a, 0x8c, 0xcb, 0x33, 0x3c ]};

extern(Windows)
interface nsIAbDirectoryQueryPropertyValue : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYQUERYPROPERTYVALUE_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERYPROPERTYVALUE_IID;

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
  nsresult GetName(char * *aName);

  /**
     * The value of the property
     *
     */
  /* readonly attribute wstring value; */
  nsresult GetValue(PRUnichar * *aValue);

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
  nsresult GetValueISupports(nsISupports  *aValueISupports);

}


/* starting interface:    nsIAbDirectoryQueryResult */
const char[] NS_IABDIRECTORYQUERYRESULT_IID_STR = "42e600ba-1dd2-11b2-bc39-c363ac0c93e3";

const nsIID NS_IABDIRECTORYQUERYRESULT_IID= 
  {0x42e600ba, 0x1dd2, 0x11b2, 
    [ 0xbc, 0x39, 0xc3, 0x63, 0xac, 0x0c, 0x93, 0xe3 ]};

extern(Windows)
interface nsIAbDirectoryQueryResult : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYQUERYRESULT_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERYRESULT_IID;

  /**
     * The context ID of the query
     *
     */
  /* readonly attribute long contextID; */
  nsresult GetContextID(PRInt32 *aContextID);

  /**
     * The context of the query which
     * corresponds to the arguments that
     * define the query
     *
     */
  /* readonly attribute nsIAbDirectoryQueryArguments contextArgs; */
  nsresult GetContextArgs(nsIAbDirectoryQueryArguments  *aContextArgs);

  /**
     * List of defined query results
     *
     */
  enum { queryResultMatch = 0 };

  enum { queryResultComplete = 1 };

  enum { queryResultStopped = 2 };

  enum { queryResultError = 3 };

  /**
     * The type of result
     *
     * Identifies a query entry, the query has finished
     * or that an error has occured
     */
  /* readonly attribute long type; */
  nsresult GetType(PRInt32 *aType);

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
  nsresult GetResult(nsISupportsArray  *aResult);

  /**
     * result attribute defined explicitly as an
     * array of nsISupport interfaces
     *
     */
  /* void agetResult (out unsigned long aResultSize, [array, size_is (aResultSize), retval] out nsISupports aResultArray); */
  nsresult AgetResult(PRUint32 *aResultSize, nsISupports **aResultArray);

}


/* starting interface:    nsIAbDirectoryQueryResultListener */
const char[] NS_IABDIRECTORYQUERYRESULTLISTENER_IID_STR = "4290e508-1dd2-11b2-ac3e-9597bbcb25d7";

const nsIID NS_IABDIRECTORYQUERYRESULTLISTENER_IID= 
  {0x4290e508, 0x1dd2, 0x11b2, 
    [ 0xac, 0x3e, 0x95, 0x97, 0xbb, 0xcb, 0x25, 0xd7 ]};

extern(Windows)
interface nsIAbDirectoryQueryResultListener : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYQUERYRESULTLISTENER_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERYRESULTLISTENER_IID;

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
  nsresult OnQueryItem(nsIAbDirectoryQueryResult result);

}


/* starting interface:    nsIAbDirectoryQuery */
const char[] NS_IABDIRECTORYQUERY_IID_STR = "4241c46e-1dd2-11b2-978d-a2fbd0a72ac2";

const nsIID NS_IABDIRECTORYQUERY_IID= 
  {0x4241c46e, 0x1dd2, 0x11b2, 
    [ 0x97, 0x8d, 0xa2, 0xfb, 0xd0, 0xa7, 0x2a, 0xc2 ]};

extern(Windows)
interface nsIAbDirectoryQuery : nsISupports {
  static const char[] IID_STR = NS_IABDIRECTORYQUERY_IID_STR;
  static const nsIID IID = NS_IABDIRECTORYQUERY_IID;

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
  nsresult DoQuery(nsIAbDirectoryQueryArguments arguments, nsIAbDirectoryQueryResultListener listener, PRInt32 resultLimit, PRInt32 timeOut, PRInt32 *_retval);

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
  nsresult StopQuery(PRInt32 contextID);

}

