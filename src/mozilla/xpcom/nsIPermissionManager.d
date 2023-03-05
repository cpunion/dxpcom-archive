/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPermissionManager.idl
 */

module mozilla.xpcom.nsIPermissionManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIObserver; /* forward declaration */


/* starting interface:    nsIPermissionManager */
const char[] NS_IPERMISSIONMANAGER_IID_STR = "4f6b5e00-0c36-11d5-a535-0010a401eb10";

const nsIID NS_IPERMISSIONMANAGER_IID= 
  {0x4f6b5e00, 0x0c36, 0x11d5, 
    [ 0xa5, 0x35, 0x00, 0x10, 0xa4, 0x01, 0xeb, 0x10 ]};

extern(Windows)
interface nsIPermissionManager : nsISupports {
  static const char[] IID_STR = NS_IPERMISSIONMANAGER_IID_STR;
  static const nsIID IID = NS_IPERMISSIONMANAGER_IID;

  /**
   * Predefined return values for the testPermission method and for
   * the permission param of the add method
   */
  enum { UNKNOWN_ACTION = 0U };

  enum { ALLOW_ACTION = 1U };

  enum { DENY_ACTION = 2U };

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
  nsresult Add(nsIURI uri, char *type, PRUint32 permission);

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
  nsresult Remove(nsACString * host, char *type);

  /**
   * Clear permission information for all websites.
   */
  /* void removeAll (); */
  nsresult RemoveAll();

  /**
   * Test whether a website has permission to perform the given action.
   * @param uri     the uri to be tested
   * @param type    a case-sensitive ASCII string, identifying the consumer
   * @param return  see add(), param permission. returns UNKNOWN_ACTION when
   *                there is no stored permission for this uri and / or type.
   */
  /* PRUint32 testPermission (in nsIURI uri, in string type); */
  nsresult TestPermission(nsIURI uri, char *type, PRUint32 *_retval);

  /**
   * Allows enumeration of all stored permissions
   * @return an nsISimpleEnumerator interface that allows access to
   *         nsIPermission objects
   */
  /* readonly attribute nsISimpleEnumerator enumerator; */
  nsresult GetEnumerator(nsISimpleEnumerator  *aEnumerator);

}

