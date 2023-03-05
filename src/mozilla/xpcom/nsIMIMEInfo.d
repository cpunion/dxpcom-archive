/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEInfo.idl
 */

module mozilla.xpcom.nsIMIMEInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIStringEnumerator;

alias PRInt32 nsMIMEInfoHandleAction;


/* starting interface:    nsIMIMEInfo */
const char[] NS_IMIMEINFO_IID_STR = "1448b42f-cf0d-466e-9a15-64e876ebe857";

const nsIID NS_IMIMEINFO_IID= 
  {0x1448b42f, 0xcf0d, 0x466e, 
    [ 0x9a, 0x15, 0x64, 0xe8, 0x76, 0xeb, 0xe8, 0x57 ]};

extern(Windows)
interface nsIMIMEInfo : nsISupports {
  static const char[] IID_STR = NS_IMIMEINFO_IID_STR;
  static const nsIID IID = NS_IMIMEINFO_IID;

  /**
     * Gives you an array of file types associated with this type.
     *
     * @return Number of elements in the array.
     * @return Array of extensions.
     */
  /* nsIUTF8StringEnumerator getFileExtensions (); */
  nsresult GetFileExtensions(nsIUTF8StringEnumerator *_retval);

  /**
     * Set File Extensions. Input is a comma delimited list of extensions.
     */
  /* void setFileExtensions (in AUTF8String aExtensions); */
  nsresult SetFileExtensions(nsACString * aExtensions);

  /**
     * Returns whether or not the given extension is
     * associated with this MIME info.
     *
     * @return TRUE if the association exists. 
     */
  /* boolean extensionExists (in AUTF8String aExtension); */
  nsresult ExtensionExists(nsACString * aExtension, PRBool *_retval);

  /**
     * Append a given extension to the set of extensions
     */
  /* void appendExtension (in AUTF8String aExtension); */
  nsresult AppendExtension(nsACString * aExtension);

  /**
     * Returns the first extension association in
     * the internal set of extensions.
     *
     * @return The first extension.
     */
  /* attribute AUTF8String primaryExtension; */
  nsresult GetPrimaryExtension(nsACString * aPrimaryExtension);
  nsresult SetPrimaryExtension(nsACString * aPrimaryExtension);

  /**
     * The MIME type of this MIMEInfo.
     * 
     * @return String representing the MIME type.
     */
  /* readonly attribute ACString MIMEType; */
  nsresult GetMIMEType(nsACString * aMIMEType);

  /**
     * A human readable description of the MIME info.
     *
     * @return The description
     */
  /* attribute AString description; */
  nsresult GetDescription(nsAString * aDescription);
  nsresult SetDescription(nsAString * aDescription);

  /**
     * Mac Type and creator types
     */
  /* attribute PRUint32 macType; */
  nsresult GetMacType(PRUint32 *aMacType);
  nsresult SetMacType(PRUint32 aMacType);

  /* attribute PRUint32 macCreator; */
  nsresult GetMacCreator(PRUint32 *aMacCreator);
  nsresult SetMacCreator(PRUint32 aMacCreator);

  /**
     * Returns whether or not these two MIME infos are logically
     * equivalent maintaining the one-to-many relationship between
     * MIME types and file extensions.
     *
     * @returns TRUE if the two are considered equal
     */
  /* boolean equals (in nsIMIMEInfo aMIMEInfo); */
  nsresult Equals(nsIMIMEInfo aMIMEInfo, PRBool *_retval);

  /**
     * Returns a nsIFile that points to the application the user has said
     * they want associated with this content type. This is not always
     * guaranteed to be set!!
     */
  /* attribute nsIFile preferredApplicationHandler; */
  nsresult GetPreferredApplicationHandler(nsIFile  *aPreferredApplicationHandler);
  nsresult SetPreferredApplicationHandler(nsIFile  aPreferredApplicationHandler);

  /**
     * A pretty name description of the preferred application.
     */
  /* attribute AString applicationDescription; */
  nsresult GetApplicationDescription(nsAString * aApplicationDescription);
  nsresult SetApplicationDescription(nsAString * aApplicationDescription);

  /**
     * Indicates whether a default application handler exists,
     * i.e. whether launchWithFile with action = useSystemDefault is possible
     * and applicationDescription will contain usable information.
     */
  /* readonly attribute boolean hasDefaultHandler; */
  nsresult GetHasDefaultHandler(PRBool *aHasDefaultHandler);

  /**
     * A pretty name description of the associated default application. Only
     * usable if hasDefaultHandler is true.
     */
  /* readonly attribute AString defaultDescription; */
  nsresult GetDefaultDescription(nsAString * aDefaultDescription);

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
  nsresult LaunchWithFile(nsIFile aFile);

  enum { saveToDisk = 0 };

  enum { alwaysAsk = 1 };

  enum { useHelperApp = 2 };

  enum { handleInternally = 3 };

  enum { useSystemDefault = 4 };

  /**
     * preferredAction is how the user specified they would like to handle
     * this content type: save to disk, use specified helper app, use OS
     * default handler or handle using navigator.
     */
  /* attribute nsMIMEInfoHandleAction preferredAction; */
  nsresult GetPreferredAction(nsMIMEInfoHandleAction *aPreferredAction);
  nsresult SetPreferredAction(nsMIMEInfoHandleAction aPreferredAction);

  /**
     * alwaysAskBeforeHandling: if true, we should always give the user a
     * dialog asking how to dispose of this content.
     */
  /* attribute boolean alwaysAskBeforeHandling; */
  nsresult GetAlwaysAskBeforeHandling(PRBool *aAlwaysAskBeforeHandling);
  nsresult SetAlwaysAskBeforeHandling(PRBool aAlwaysAskBeforeHandling);

}

