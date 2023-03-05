/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptSecurityManager.idl
 */

module mozilla.dxpcom.nsIScriptSecurityManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIScriptSecurityManager;


public import mozilla.dxpcom.nsIScriptSecurityManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIPrincipal;
public import mozilla.dxpcom.nsIPrincipalD;
public import mozilla.xpcom.nsIXPCSecurityManager;
public import mozilla.dxpcom.nsIXPCSecurityManagerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIScriptSecurityManager */
class nsIScriptSecurityManagerD : public nsIXPCSecurityManagerD {

  static const nsIID IID = NS_ISCRIPTSECURITYMANAGER_IID;


  alias nsIScriptSecurityManager InnerType;

  this(nsIScriptSecurityManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIScriptSecurityManager opCast() {
    return inner;
  }

  void opAssign(nsIScriptSecurityManager value) {
    inner = value;
  }

  /**
     * Checks whether the running script is allowed to access aProperty.
     */
  /* [noscript] void checkPropertyAccess (in JSContextPtr aJSContext, in JSObjectPtr aJSObject, in string aClassName, in JSVal aProperty, in PRUint32 aAction); */
  void CheckPropertyAccess(JSContext * aJSContext, JSObject * aJSObject, char*aClassName, jsval aProperty, PRUint32 aAction){
    nsresult __result = inner.CheckPropertyAccess(aJSContext, aJSObject, aClassName, aProperty, aAction);
    CheckException(__result);
  }

  /**
     * Checks whether the running script is allowed to connect to aTargetURI
     */
  /* [noscript] void checkConnect (in JSContextPtr aJSContext, in nsIURI aTargetURI, in string aClassName, in string aProperty); */
  void CheckConnect(JSContext * aJSContext, nsIURID aTargetURI, char*aClassName, char*aProperty){
    nsresult __result = inner.CheckConnect(aJSContext, aTargetURI ? cast(nsIURI)aTargetURI : null, aClassName, aProperty);
    CheckException(__result);
  }

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
  void CheckLoadURIFromScript(JSContext * cx, nsIURID uri){
    nsresult __result = inner.CheckLoadURIFromScript(cx, uri ? cast(nsIURI)uri : null);
    CheckException(__result);
  }

  /**
     * Default CheckLoadURI permissions
     */
  enum { STANDARD = 0U }

  enum { DISALLOW_FROM_MAIL = 1U }

  enum { ALLOW_CHROME = 2U }

  enum { DISALLOW_SCRIPT_OR_DATA = 4U }

  enum { DISALLOW_SCRIPT = 8U }

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
  void CheckLoadURIWithPrincipal(nsIPrincipalD aPrincipal, nsIURID uri, PRUint32 flags){
    nsresult __result = inner.CheckLoadURIWithPrincipal(aPrincipal ? cast(nsIPrincipal)aPrincipal : null, uri ? cast(nsIURI)uri : null, flags);
    CheckException(__result);
  }

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
  void CheckLoadURI(nsIURID from, nsIURID uri, PRUint32 flags){
    nsresult __result = inner.CheckLoadURI(from ? cast(nsIURI)from : null, uri ? cast(nsIURI)uri : null, flags);
    CheckException(__result);
  }

  /**
     * Same as CheckLoadURI but takes string arguments for ease of use
     * by scripts
     */
  /* void checkLoadURIStr (in AUTF8String from, in AUTF8String uri, in unsigned long flags); */
  void CheckLoadURIStr(char[] from, char[] uri, PRUint32 flags){
    scope auto _from = new ACString(from);
    scope auto _uri = new ACString(uri);
    nsresult __result = inner.CheckLoadURIStr(cast(nsACString*)_from, cast(nsACString*)_uri, flags);
    CheckException(__result);
  }

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
  void CheckFunctionAccess(JSContext * cx, void * funObj, void * targetObj){
    nsresult __result = inner.CheckFunctionAccess(cx, funObj, targetObj);
    CheckException(__result);
  }

  /**
     * Return true if content from the given principal is allowed to
     * execute scripts.
     */
  /* [noscript] boolean canExecuteScripts (in JSContextPtr cx, in nsIPrincipal principal); */
  PRBool CanExecuteScripts(JSContext * cx, nsIPrincipalD principal){
    PRBool _retval;
    nsresult __result = inner.CanExecuteScripts(cx, principal ? cast(nsIPrincipal)principal : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return the principal of the innermost frame of the currently 
     * executing script. Will return null if there is no script 
     * currently executing.
     */
  /* [noscript] nsIPrincipal getSubjectPrincipal (); */
  nsIPrincipalD  GetSubjectPrincipal(){
    nsIPrincipal _retval;
    nsresult __result = inner.GetSubjectPrincipal(&_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Return the all-powerful system principal.
     */
  /* [noscript] nsIPrincipal getSystemPrincipal (); */
  nsIPrincipalD  GetSystemPrincipal(){
    nsIPrincipal _retval;
    nsresult __result = inner.GetSystemPrincipal(&_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Return a principal with the specified certificate fingerprint, subject
     * name (the full name or concatenated set of names of the entity
     * represented by the certificate), pretty name, certificate, and
     * codebase URI.  The certificate fingerprint and subject name MUST be
     * nonempty; otherwise an error will be thrown.  Similarly, aCert must
     * not be null.
     */
  /* [noscript] nsIPrincipal getCertificatePrincipal (in AUTF8String aCertFingerprint, in AUTF8String aSubjectName, in AUTF8String aPrettyName, in nsISupports aCert, in nsIURI aURI); */
  nsIPrincipalD  GetCertificatePrincipal(char[] aCertFingerprint, char[] aSubjectName, char[] aPrettyName, nsISupportsD aCert, nsIURID aURI){
    scope auto _aCertFingerprint = new ACString(aCertFingerprint);
    scope auto _aSubjectName = new ACString(aSubjectName);
    scope auto _aPrettyName = new ACString(aPrettyName);
    nsIPrincipal _retval;
    nsresult __result = inner.GetCertificatePrincipal(cast(nsACString*)_aCertFingerprint, cast(nsACString*)_aSubjectName, cast(nsACString*)_aPrettyName, aCert ? cast(nsISupports)aCert : null, aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Return a principal that has the same origin as aURI.
     */
  /* [noscript] nsIPrincipal getCodebasePrincipal (in nsIURI aURI); */
  nsIPrincipalD  GetCodebasePrincipal(nsIURID aURI){
    nsIPrincipal _retval;
    nsresult __result = inner.GetCodebasePrincipal(aURI ? cast(nsIURI)aURI : null, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Request that 'capability' can be enabled by scripts or applets
     * running with 'principal'. Will prompt user if
     * necessary. Returns nsIPrincipal::ENABLE_GRANTED or
     * nsIPrincipal::ENABLE_DENIED based on user's choice.
     */
  /* [noscript] short requestCapability (in nsIPrincipal principal, in string capability); */
  PRInt16 RequestCapability(nsIPrincipalD principal, char*capability){
    PRInt16 _retval;
    nsresult __result = inner.RequestCapability(principal ? cast(nsIPrincipal)principal : null, capability, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Return true if the currently executing script has 'capability' enabled.
     */
  /* boolean isCapabilityEnabled (in string capability); */
  PRBool IsCapabilityEnabled(char*capability){
    PRBool _retval;
    nsresult __result = inner.IsCapabilityEnabled(capability, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Enable 'capability' in the innermost frame of the currently executing
     * script.
     */
  /* void enableCapability (in string capability); */
  void EnableCapability(char*capability){
    nsresult __result = inner.EnableCapability(capability);
    CheckException(__result);
  }

  /**
     * Remove 'capability' from the innermost frame of the currently
     * executing script. Any setting of 'capability' from enclosing
     * frames thus comes into effect.
     */
  /* void revertCapability (in string capability); */
  void RevertCapability(char*capability){
    nsresult __result = inner.RevertCapability(capability);
    CheckException(__result);
  }

  /**
     * Disable 'capability' in the innermost frame of the currently executing
     * script.
     */
  /* void disableCapability (in string capability); */
  void DisableCapability(char*capability){
    nsresult __result = inner.DisableCapability(capability);
    CheckException(__result);
  }

  /**
     * Allow 'certificateID' to enable 'capability.' Can only be performed
     * by code signed by the system certificate.
     */
  /* void setCanEnableCapability (in AUTF8String certificateFingerprint, in string capability, in short canEnable); */
  void SetCanEnableCapability(char[] certificateFingerprint, char*capability, PRInt16 canEnable){
    scope auto _certificateFingerprint = new ACString(certificateFingerprint);
    nsresult __result = inner.SetCanEnableCapability(cast(nsACString*)_certificateFingerprint, capability, canEnable);
    CheckException(__result);
  }

  /**
     * Return the principal of the specified object in the specified context.
     */
  /* [noscript] nsIPrincipal getObjectPrincipal (in JSContextPtr cx, in JSObjectPtr obj); */
  nsIPrincipalD  GetObjectPrincipal(JSContext * cx, JSObject * obj){
    nsIPrincipal _retval;
    nsresult __result = inner.GetObjectPrincipal(cx, obj, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Returns true if the principal of the currently running script is the
     * system principal, false otherwise.
     */
  /* [noscript] boolean subjectPrincipalIsSystem (); */
  PRBool SubjectPrincipalIsSystem(){
    PRBool _retval;
    nsresult __result = inner.SubjectPrincipalIsSystem(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns OK if aJSContext and target have the same "origin"
     * (scheme, host, and port).
     */
  /* [noscript] void checkSameOrigin (in JSContextPtr aJSContext, in nsIURI aTargetURI); */
  void CheckSameOrigin(JSContext * aJSContext, nsIURID aTargetURI){
    nsresult __result = inner.CheckSameOrigin(aJSContext, aTargetURI ? cast(nsIURI)aTargetURI : null);
    CheckException(__result);
  }

  /**
     * Returns OK if aSourceURI and target have the same "origin"
     * (scheme, host, and port).
     */
  /* void checkSameOriginURI (in nsIURI aSourceURI, in nsIURI aTargetURI); */
  void CheckSameOriginURI(nsIURID aSourceURI, nsIURID aTargetURI){
    nsresult __result = inner.CheckSameOriginURI(aSourceURI ? cast(nsIURI)aSourceURI : null, aTargetURI ? cast(nsIURI)aTargetURI : null);
    CheckException(__result);
  }

  /**
     * Returns OK if aSourcePrincipal and aTargetPrincipal
     * have the same "origin" (scheme, host, and port).
     */
  /* [noscript] void checkSameOriginPrincipal (in nsIPrincipal aSourcePrincipal, in nsIPrincipal aTargetPrincipal); */
  void CheckSameOriginPrincipal(nsIPrincipalD aSourcePrincipal, nsIPrincipalD aTargetPrincipal){
    nsresult __result = inner.CheckSameOriginPrincipal(aSourcePrincipal ? cast(nsIPrincipal)aSourcePrincipal : null, aTargetPrincipal ? cast(nsIPrincipal)aTargetPrincipal : null);
    CheckException(__result);
  }

  /**
     * Returns the principal of the global object of the given context, or null
     * if no global or no principal.
     */
  /* [noscript] nsIPrincipal getPrincipalFromContext (in JSContextPtr cx); */
  nsIPrincipalD  GetPrincipalFromContext(JSContext * cx){
    nsIPrincipal _retval;
    nsresult __result = inner.GetPrincipalFromContext(cx, &_retval);
    CheckException(__result);
    return new nsIPrincipalD(_retval);
  }

  /**
     * Utility method for comparing two URIs.  For security purposes, two URIs
     * are equivalent if their schemes, hosts, and ports (if any) match.  This
     * method returns true if aSubjectURI and aObjectURI have the same origin,
     * false otherwise.
     */
  /* [noscript] boolean securityCompareURIs (in nsIURI aSubjectURI, in nsIURI aObjectURI); */
  PRBool SecurityCompareURIs(nsIURID aSubjectURI, nsIURID aObjectURI){
    PRBool _retval;
    nsresult __result = inner.SecurityCompareURIs(aSubjectURI ? cast(nsIURI)aSubjectURI : null, aObjectURI ? cast(nsIURI)aObjectURI : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIScriptSecurityManager inner;

}

