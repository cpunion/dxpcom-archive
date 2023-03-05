/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileProtocolHandler.idl
 */

module mozilla.xpcom.nsIFileProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolHandler;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIFileProtocolHandler */
const char[] NS_IFILEPROTOCOLHANDLER_IID_STR = "255602ea-c31f-4d29-8f35-905ead3f76f4";

const nsIID NS_IFILEPROTOCOLHANDLER_IID= 
  {0x255602ea, 0xc31f, 0x4d29, 
    [ 0x8f, 0x35, 0x90, 0x5e, 0xad, 0x3f, 0x76, 0xf4 ]};

extern(Windows)
interface nsIFileProtocolHandler : nsIProtocolHandler {
  static const char[] IID_STR = NS_IFILEPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IFILEPROTOCOLHANDLER_IID;

  /**
     * This method constructs a new file URI 
     *
     * @param aFile nsIFile
     * @return reference to a new nsIURI object
     */
  /* nsIURI newFileURI (in nsIFile aFile); */
  nsresult NewFileURI(nsIFile aFile, nsIURI *_retval);

  /**
     * Converts the nsIFile to the corresponding URL string.  NOTE: under
     * some platforms this is a lossy conversion (e.g., Mac Carbon build).
     * If the nsIFile is a local file, then the result will be a file://
     * URL string.
     *
     * The resulting string may contain URL-escaped characters.
     */
  /* AUTF8String getURLSpecFromFile (in nsIFile file); */
  nsresult GetURLSpecFromFile(nsIFile file, nsACString * _retval);

  /**
     * Converts the URL string into the corresponding nsIFile if possible.
     * A local file will be created if the URL string begins with file://.
     */
  /* nsIFile getFileFromURLSpec (in AUTF8String url); */
  nsresult GetFileFromURLSpec(nsACString * url, nsIFile *_retval);

  /**
     * Takes a local file and tries to interpret it as an internet shortcut
     * (e.g. .url files on windows).
     * @param file The local file to read
     * @return The URI the file refers to
     *
     * @throw NS_ERROR_NOT_AVAILABLE if the OS does not support such files.
     * @throw NS_ERROR_NOT_AVAILABLE if this file is not an internet shortcut.
     */
  /* nsIURI readURLFile (in nsIFile file); */
  nsresult ReadURLFile(nsIFile file, nsIURI *_retval);

}

