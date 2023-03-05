/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPermissionManager.idl
 */

module mozilla.dxpcom.nsIPermissionManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPermissionManager;


public import mozilla.dxpcom.nsIPermissionManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;


/* starting wrapper class:    nsIPermissionManager */
class nsIPermissionManagerD : public nsISupportsD {

  static const nsIID IID = NS_IPERMISSIONMANAGER_IID;


  alias nsIPermissionManager InnerType;

  this(nsIPermissionManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIPermissionManager opCast() {
    return inner;
  }

  void opAssign(nsIPermissionManager value) {
    inner = value;
  }

  /**
   * Predefined return values for the testPermission method and for
   * the permission param of the add method
   */
  enum { UNKNOWN_ACTION = 0U }

  enum { ALLOW_ACTION = 1U }

  enum { DENY_ACTION = 2U }

  /**
   * Add permission information for a given URI and permission type. This
   * operation will cause the type string to be registered if it does not
   * currently exist.
   *
   * @param uri         the uri to add the permission for
   * @param type        a case-sensitive ASCII string, identifying the consumer.
   *                    Consumers should choose this string to be unique, with
   *                    respect to other consumers. The number of unique type
   *                    indentifiers may be limited.
   * @param permission  an integer from 1 to 15, representing the desired
   *                    action (e.g. allow or deny). The interpretation of
   *                    this number is up to the consumer, and may represent
   *                    different actions for different types. Consumers may
   *                    use one of the enumerated permission actions defined
   *                    above. 0 is reserved for UNKNOWN_ACTION, and shouldn't
   *                    be used.
   * @throws            NS_ERROR_FAILURE if there is no more room for adding
   *                    a new type
   */
  /* void add (in nsIURI uri, in string type, in PRUint32 permission); */
  void Add(nsIURID uri, char*type, PRUint32 permission){
    nsresult __result = inner.Add(uri ? cast(nsIURI)uri : null, type, permission);
    CheckException(__result);
  }

  /**
   * Remove permission information for a given URI and permission type.
   * Note that this method takes a host string, not an nsIURI.
   *
   * @param host   the host to remove the permission for
   * @param type   a case-sensitive ASCII string, identifying the consumer. 
   *               The type must have been previously registered using the
   *               add() method.
   */
  /* void remove (in AUTF8String host, in string type); */
  void Remove(char[] host, char*type){
    scope auto _host = new ACString(host);
    nsresult __result = inner.Remove(cast(nsACString*)_host, type);
    CheckException(__result);
  }

  /**
   * Clear permission information for all websites.
   */
  /* void removeAll (); */
  void RemoveAll(){
    nsresult __result = inner.RemoveAll();
    CheckException(__result);
  }

  /**
   * Test whether a website has permission to perform the given action.
   * @param uri     the uri to be tested
   * @param type    a case-sensitive ASCII string, identifying the consumer
   * @param return  see add(), param permission. returns UNKNOWN_ACTION when
   *                there is no stored permission for this uri and / or type.
   */
  /* PRUint32 testPermission (in nsIURI uri, in string type); */
  PRUint32 TestPermission(nsIURID uri, char*type){
    PRUint32 _retval;
    nsresult __result = inner.TestPermission(uri ? cast(nsIURI)uri : null, type, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Allows enumeration of all stored permissions
   * @return an nsISimpleEnumerator interface that allows access to
   *         nsIPermission objects
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsISimpleEnumeratorD  Enumerator(){
    nsISimpleEnumerator value;
    nsresult __result = inner.GetEnumerator(&value);
    CheckException(__result);
    return new nsISimpleEnumeratorD(value);
  }

private:
  nsIPermissionManager inner;

}

