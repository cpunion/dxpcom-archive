/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptSecurityManager.idl
 */

module mozilla.xpcom.nsIScriptSecurityManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIPrincipal;
public import mozilla.xpcom.nsIXPCSecurityManager;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIScriptSecurityManager */
const char[] NS_ISCRIPTSECURITYMANAGER_IID_STR = "f4d74511-2b2d-4a14-a3e4-a392ac5ac3ff";

const nsIID NS_ISCRIPTSECURITYMANAGER_IID= 
  {0xf4d74511, 0x2b2d, 0x4a14, 
    [ 0xa3, 0xe4, 0xa3, 0x92, 0xac, 0x5a, 0xc3, 0xff ]};

extern(Windows)
interface nsIScriptSecurityManager : nsIXPCSecurityManager {
  static const char[] IID_STR = NS_ISCRIPTSECURITYMANAGER_IID_STR;
  static const nsIID IID = NS_ISCRIPTSECURITYMANAGER_IID;

  /**
     * Checks whether the running script is allowed to access aProperty.
     */
  /* [noscript] void checkPropertyAccess (in JSContextPtr aJSContext, in JSObjectPtr aJSObject, in string aClassName, in JSVal aProperty, in PRUint32 aAction); */
  nsresult CheckPropertyAccess(JSContext * aJSContext, JSObject * aJSObject, char *aClassName, jsval aProperty, PRUint32 aAction);

  /**
     * Checks whether the running script is allowed to connect to aTargetURI
     */
  /* [noscript] void checkConnect (in JSContextPtr aJSContext, in nsIURI aTargetURI, in string aClassName, in string aProperty); */
  nsresult CheckConnect(JSContext * aJSContext, nsIURI aTargetURI, char *aClassName, char *aProperty);

  /**
     * Check that the script currently running in context "cx" can load "uri".
     *
     * Will return error code NS_ERROR_DOM_BAD_URI if the load request 
     * should be denied.
     *
     * @param cx the JSContext of the script causing the load
     * @param uri the URI that is being loaded
     */
  /* [noscript] void checkLoadURIFromScript (in JSContextPtr cx, in nsIURI uri); */
  nsresult CheckLoadURIFromScript(JSContext * cx, nsIURI uri);

  /**
     * Default CheckLoadURI permissions
     */
  enum { STANDARD = 0U };

  enum { DISALLOW_FROM_MAIL = 1U };

  enum { ALLOW_CHROME = 2U };

  enum { DISALLOW_SCRIPT_OR_DATA = 4U };

  enum { DISALLOW_SCRIPT = 8U };

  /**
     * Check that content with principal aPrincipal can load "uri".
     *
     * Will return error code NS_ERROR_DOM_BAD_URI if the load request 
     * should be denied.
     *
     * @param aPrincipal the URI causing the load
     * @param uri the URI that is being loaded
     * @param flags the permission set, see above
     */
  /* [noscript] void checkLoadURIWithPrincipal (in nsIPrincipal aPrincipal, in nsIURI uri, in unsigned long flags); */
  nsresult CheckLoadURIWithPrincipal(nsIPrincipal aPrincipal, nsIURI uri, PRUint32 flags);

  /**
     * Check that content from "from" can load "uri".
     *
     * Will return error code NS_ERROR_DOM_BAD_URI if the load request 
     * should be denied.
     *
     * @param from the URI causing the load
     * @param uri the URI that is being loaded
     * @param flags the permission set, see above
     */
  /* void checkLoadURI (in nsIURI from, in nsIURI uri, in unsigned long flags); */
  nsresult CheckLoadURI(nsIURI from, nsIURI uri, PRUint32 flags);

  /**
     * Same as CheckLoadURI but takes string arguments for ease of use
     * by scripts
     */
  /* void checkLoadURIStr (in AUTF8String from, in AUTF8String uri, in unsigned long flags); */
  nsresult CheckLoadURIStr(nsACString * from, nsACString * uri, PRUint32 flags);

  /**
     * Check that the function 'funObj' is allowed to run on 'targetObj'
     *
     * Will return error code NS_ERROR_DOM_SECURITY_ERR if the function
     * should not run
     *
     * @param cx The current active JavaScript context.
     * @param funObj The function trying to run..
     * @param targetObj The object the function will run on.
     */
  /* [noscript] void checkFunctionAccess (in JSContextPtr cx, in voidPtr funObj, in voidPtr targetObj); */
  nsresult CheckFunctionAccess(JSContext * cx, void * funObj, void * targetObj);

  /**
     * Return true if content from the given principal is allowed to
     * execute scripts.
     */
  /* [noscript] boolean canExecuteScripts (in JSContextPtr cx, in nsIPrincipal principal); */
  nsresult CanExecuteScripts(JSContext * cx, nsIPrincipal principal, PRBool *_retval);

  /**
     * Return the principal of the innermost frame of the currently 
     * executing script. Will return null if there is no script 
     * currently executing.
     */
  /* [noscript] nsIPrincipal getSubjectPrincipal (); */
  nsresult GetSubjectPrincipal(nsIPrincipal *_retval);

  /**
     * Return the all-powerful system principal.
     */
  /* [noscript] nsIPrincipal getSystemPrincipal (); */
  nsresult GetSystemPrincipal(nsIPrincipal *_retval);

  /**
     * Return a principal with the specified certificate fingerprint, subject
     * name (the full name or concatenated set of names of the entity
     * represented by the certificate), pretty name, certificate, and
     * codebase URI.  The certificate fingerprint and subject name MUST be
     * nonempty; otherwise an error will be thrown.  Similarly, aCert must
     * not be null.
     */
  /* [noscript] nsIPrincipal getCertificatePrincipal (in AUTF8String aCertFingerprint, in AUTF8String aSubjectName, in AUTF8String aPrettyName, in nsISupports aCert, in nsIURI aURI); */
  nsresult GetCertificatePrincipal(nsACString * aCertFingerprint, nsACString * aSubjectName, nsACString * aPrettyName, nsISupports aCert, nsIURI aURI, nsIPrincipal *_retval);

  /**
     * Return a principal that has the same origin as aURI.
     */
  /* [noscript] nsIPrincipal getCodebasePrincipal (in nsIURI aURI); */
  nsresult GetCodebasePrincipal(nsIURI aURI, nsIPrincipal *_retval);

  /**
     * Request that 'capability' can be enabled by scripts or applets
     * running with 'principal'. Will prompt user if
     * necessary. Returns nsIPrincipal::ENABLE_GRANTED or
     * nsIPrincipal::ENABLE_DENIED based on user's choice.
     */
  /* [noscript] short requestCapability (in nsIPrincipal principal, in string capability); */
  nsresult RequestCapability(nsIPrincipal principal, char *capability, PRInt16 *_retval);

  /**
     * Return true if the currently executing script has 'capability' enabled.
     */
  /* boolean isCapabilityEnabled (in string capability); */
  nsresult IsCapabilityEnabled(char *capability, PRBool *_retval);

  /**
     * Enable 'capability' in the innermost frame of the currently executing
     * script.
     */
  /* void enableCapability (in string capability); */
  nsresult EnableCapability(char *capability);

  /**
     * Remove 'capability' from the innermost frame of the currently
     * executing script. Any setting of 'capability' from enclosing
     * frames thus comes into effect.
     */
  /* void revertCapability (in string capability); */
  nsresult RevertCapability(char *capability);

  /**
     * Disable 'capability' in the innermost frame of the currently executing
     * script.
     */
  /* void disableCapability (in string capability); */
  nsresult DisableCapability(char *capability);

  /**
     * Allow 'certificateID' to enable 'capability.' Can only be performed
     * by code signed by the system certificate.
     */
  /* void setCanEnableCapability (in AUTF8String certificateFingerprint, in string capability, in short canEnable); */
  nsresult SetCanEnableCapability(nsACString * certificateFingerprint, char *capability, PRInt16 canEnable);

  /**
     * Return the principal of the specified object in the specified context.
     */
  /* [noscript] nsIPrincipal getObjectPrincipal (in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult GetObjectPrincipal(JSContext * cx, JSObject * obj, nsIPrincipal *_retval);

  /**
     * Returns true if the principal of the currently running script is the
     * system principal, false otherwise.
     */
  /* [noscript] boolean subjectPrincipalIsSystem (); */
  nsresult SubjectPrincipalIsSystem(PRBool *_retval);

  /**
     * Returns OK if aJSContext and target have the same "origin"
     * (scheme, host, and port).
     */
  /* [noscript] void checkSameOrigin (in JSContextPtr aJSContext, in nsIURI aTargetURI); */
  nsresult CheckSameOrigin(JSContext * aJSContext, nsIURI aTargetURI);

  /**
     * Returns OK if aSourceURI and target have the same "origin"
     * (scheme, host, and port).
     */
  /* void checkSameOriginURI (in nsIURI aSourceURI, in nsIURI aTargetURI); */
  nsresult CheckSameOriginURI(nsIURI aSourceURI, nsIURI aTargetURI);

  /**
     * Returns OK if aSourcePrincipal and aTargetPrincipal
     * have the same "origin" (scheme, host, and port).
     */
  /* [noscript] void checkSameOriginPrincipal (in nsIPrincipal aSourcePrincipal, in nsIPrincipal aTargetPrincipal); */
  nsresult CheckSameOriginPrincipal(nsIPrincipal aSourcePrincipal, nsIPrincipal aTargetPrincipal);

  /**
     * Returns the principal of the global object of the given context, or null
     * if no global or no principal.
     */
  /* [noscript] nsIPrincipal getPrincipalFromContext (in JSContextPtr cx); */
  nsresult GetPrincipalFromContext(JSContext * cx, nsIPrincipal *_retval);

  /**
     * Utility method for comparing two URIs.  For security purposes, two URIs
     * are equivalent if their schemes, hosts, and ports (if any) match.  This
     * method returns true if aSubjectURI and aObjectURI have the same origin,
     * false otherwise.
     */
  /* [noscript] boolean securityCompareURIs (in nsIURI aSubjectURI, in nsIURI aObjectURI); */
  nsresult SecurityCompareURIs(nsIURI aSubjectURI, nsIURI aObjectURI, PRBool *_retval);

}

