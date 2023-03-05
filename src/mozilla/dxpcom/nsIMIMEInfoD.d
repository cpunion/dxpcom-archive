/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEInfo.idl
 */

module mozilla.dxpcom.nsIMIMEInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMIMEInfo;


public import mozilla.dxpcom.nsIMIMEInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIStringEnumerator;

import mozilla.dxpcom.nsIStringEnumeratorD;


/* starting wrapper class:    nsIMIMEInfo */
class nsIMIMEInfoD : public nsISupportsD {

  static const nsIID IID = NS_IMIMEINFO_IID;


  alias nsIMIMEInfo InnerType;

  this(nsIMIMEInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIMIMEInfo opCast() {
    return inner;
  }

  void opAssign(nsIMIMEInfo value) {
    inner = value;
  }

  /**
     * Gives you an array of file types associated with this type.
     *
     * @return Number of elements in the array.
     * @return Array of extensions.
     */
  /* nsIUTF8StringEnumerator getFileExtensions (); */
  nsIUTF8StringEnumeratorD  GetFileExtensions(){
    nsIUTF8StringEnumerator _retval;
    nsresult __result = inner.GetFileExtensions(&_retval);
    CheckException(__result);
    return new nsIUTF8StringEnumeratorD(_retval);
  }

  /**
     * Set File Extensions. Input is a comma delimited list of extensions.
     */
  /* void setFileExtensions (in AUTF8String aExtensions); */
  void SetFileExtensions(char[] aExtensions){
    scope auto _aExtensions = new ACString(aExtensions);
    nsresult __result = inner.SetFileExtensions(cast(nsACString*)_aExtensions);
    CheckException(__result);
  }

  /**
     * Returns whether or not the given extension is
     * associated with this MIME info.
     *
     * @return TRUE if the association exists. 
     */
  /* boolean extensionExists (in AUTF8String aExtension); */
  PRBool ExtensionExists(char[] aExtension){
    scope auto _aExtension = new ACString(aExtension);
    PRBool _retval;
    nsresult __result = inner.ExtensionExists(cast(nsACString*)_aExtension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Append a given extension to the set of extensions
     */
  /* void appendExtension (in AUTF8String aExtension); */
  void AppendExtension(char[] aExtension){
    scope auto _aExtension = new ACString(aExtension);
    nsresult __result = inner.AppendExtension(cast(nsACString*)_aExtension);
    CheckException(__result);
  }

  /**
     * Returns the first extension association in
     * the internal set of extensions.
     *
     * @return The first extension.
     */
  /* attribute AUTF8String primaryExtension; */
  char[] PrimaryExtension(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPrimaryExtension(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void PrimaryExtension(char[] aPrimaryExtension){
    scope auto value = new ACString(aPrimaryExtension);
    nsresult __result = inner.SetPrimaryExtension(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * The MIME type of this MIMEInfo.
     * 
     * @return String representing the MIME type.
     */
  /* readonly attribute ACString MIMEType; */
  char[] MIMEType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetMIMEType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * A human readable description of the MIME info.
     *
     * @return The description
     */
  /* attribute AString description; */
  wchar[] Description(){
    scope auto value = new AString();
    nsresult __result = inner.GetDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Description(wchar[] aDescription){
    scope auto value = new AString(aDescription);
    nsresult __result = inner.SetDescription(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
     * Mac Type and creator types
     */
  /* attribute PRUint32 macType; */
  PRUint32 MacType(){
    PRUint32 value;
    nsresult __result = inner.GetMacType(&value);
    CheckException(__result);
    return value;
  }
  void MacType(PRUint32 aMacType){
    PRUint32 value;
    nsresult __result = inner.SetMacType(value);
    CheckException(__result);
  }

  /* attribute PRUint32 macCreator; */
  PRUint32 MacCreator(){
    PRUint32 value;
    nsresult __result = inner.GetMacCreator(&value);
    CheckException(__result);
    return value;
  }
  void MacCreator(PRUint32 aMacCreator){
    PRUint32 value;
    nsresult __result = inner.SetMacCreator(value);
    CheckException(__result);
  }

  /**
     * Returns whether or not these two MIME infos are logically
     * equivalent maintaining the one-to-many relationship between
     * MIME types and file extensions.
     *
     * @returns TRUE if the two are considered equal
     */
  /* boolean equals (in nsIMIMEInfo aMIMEInfo); */
  PRBool Equals(nsIMIMEInfoD aMIMEInfo){
    PRBool _retval;
    nsresult __result = inner.Equals(aMIMEInfo ? cast(nsIMIMEInfo)aMIMEInfo : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns a nsIFile that points to the application the user has said
     * they want associated with this content type. This is not always
     * guaranteed to be set!!
     */
  /* attribute nsIFile preferredApplicationHandler; */
  nsIFileD  PreferredApplicationHandler(){
    nsIFile value;
    nsresult __result = inner.GetPreferredApplicationHandler(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }
  void PreferredApplicationHandler(nsIFileD  aPreferredApplicationHandler){
    nsIFile value;
    nsresult __result = inner.SetPreferredApplicationHandler(value);
    CheckException(__result);
  }

  /**
     * A pretty name description of the preferred application.
     */
  /* attribute AString applicationDescription; */
  wchar[] ApplicationDescription(){
    scope auto value = new AString();
    nsresult __result = inner.GetApplicationDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ApplicationDescription(wchar[] aApplicationDescription){
    scope auto value = new AString(aApplicationDescription);
    nsresult __result = inner.SetApplicationDescription(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
     * Indicates whether a default application handler exists,
     * i.e. whether launchWithFile with action = useSystemDefault is possible
     * and applicationDescription will contain usable information.
     */
  /* readonly attribute boolean hasDefaultHandler; */
  PRBool HasDefaultHandler(){
    PRBool value;
    nsresult __result = inner.GetHasDefaultHandler(&value);
    CheckException(__result);
    return value;
  }

  /**
     * A pretty name description of the associated default application. Only
     * usable if hasDefaultHandler is true.
     */
  /* readonly attribute AString defaultDescription; */
  wchar[] DefaultDescription(){
    scope auto value = new AString();
    nsresult __result = inner.GetDefaultDescription(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * Launches the application with the specified file, in a way that
     * depends on the value of preferredAction. preferredAction must be
     * useHelperApp or useSystemDefault.
     *
     * @param aFile The file to launch this application with.
     *
     * @throw NS_ERROR_INVALID_ARG if action is not valid for this function.
     * Other exceptions may be thrown.
     */
  /* void launchWithFile (in nsIFile aFile); */
  void LaunchWithFile(nsIFileD aFile){
    nsresult __result = inner.LaunchWithFile(aFile ? cast(nsIFile)aFile : null);
    CheckException(__result);
  }

  enum { saveToDisk = 0 }

  enum { alwaysAsk = 1 }

  enum { useHelperApp = 2 }

  enum { handleInternally = 3 }

  enum { useSystemDefault = 4 }

  /**
     * preferredAction is how the user specified they would like to handle
     * this content type: save to disk, use specified helper app, use OS
     * default handler or handle using navigator.
     */
  /* attribute nsMIMEInfoHandleAction preferredAction; */
  nsMIMEInfoHandleAction PreferredAction(){
    nsMIMEInfoHandleAction value;
    nsresult __result = inner.GetPreferredAction(&value);
    CheckException(__result);
    return value;
  }
  void PreferredAction(nsMIMEInfoHandleAction aPreferredAction){
    nsMIMEInfoHandleAction value;
    nsresult __result = inner.SetPreferredAction(value);
    CheckException(__result);
  }

  /**
     * alwaysAskBeforeHandling: if true, we should always give the user a
     * dialog asking how to dispose of this content.
     */
  /* attribute boolean alwaysAskBeforeHandling; */
  PRBool AlwaysAskBeforeHandling(){
    PRBool value;
    nsresult __result = inner.GetAlwaysAskBeforeHandling(&value);
    CheckException(__result);
    return value;
  }
  void AlwaysAskBeforeHandling(PRBool aAlwaysAskBeforeHandling){
    nsresult __result = inner.SetAlwaysAskBeforeHandling(aAlwaysAskBeforeHandling);
    CheckException(__result);
  }

private:
  nsIMIMEInfo inner;

}

