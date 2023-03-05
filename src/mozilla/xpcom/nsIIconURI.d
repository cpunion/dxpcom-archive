/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIconURI.idl
 */

module mozilla.xpcom.nsIIconURI;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURI;


/* starting interface:    nsIMozIconURI */
const char[] NS_IMOZICONURI_IID_STR = "1fb33f44-f522-4880-a225-4b75d09b04c6";

const nsIID NS_IMOZICONURI_IID= 
  {0x1fb33f44, 0xf522, 0x4880, 
    [ 0xa2, 0x25, 0x4b, 0x75, 0xd0, 0x9b, 0x04, 0xc6 ]};

/**
   * nsIIconURI
   *
   * This interface derives from nsIURI, to provide additional information
   * about moz-icon URIs.
   *
   * What *is* a moz-icon URI you ask?  Well, it has the following syntax:
   *
   * moz-icon://[<file-uri> | <file-with-extension> | <stock-image>]? ['?'[<parameter-value-pairs>]]
   *
   * <file-uri> is a legal file: URI spec.  You only need to specify a file: URI inside the icon
   * if the file you want the icon for actually exists.
   *
   * <file-with-extension> is any filename with an extension, e.g. "dummy.html".
   * If the file you want an icon for isn't known to exist, you can omit the file URI, and just
   * place a dummy file name with the extension or content type you want: moz-icon://dummy.html.
   *
   * <stock-image> is of the format:   stock/<icon-name>
   *
   * <icon-name> is a valid icon name, such as 'ok', 'cancel', 'yes', 'no'.
   * XXXcaa Should these considered platform dependent or can we share and document them?
   *
   * Legal parameter value pairs are listed below:
   *
   *   Parameter:   size
   *   Values:      [<integer> | button | toolbar | toolbarsmall | menu | dialog]
   *   Description: If integer, this is the desired size in square pixels of the icon
   *                Else, use the OS default for the specified keyword context.
   *
   *   Parameter:   state
   *   Values:      [normal | disabled]
   *   Description: The state of the icon.
   *
   *   Parameter:   contentType
   *   Values:      <mime-type>
   *   Description: The mime type we want an icon for. This is ignored by stock images.
   */
extern(Windows)
interface nsIMozIconURI : nsIURI {
  static const char[] IID_STR = NS_IMOZICONURI_IID_STR;
  static const nsIID IID = NS_IMOZICONURI_IID;

  /**
   * iconFile
   *
   * the file URL contained within this moz-icon url, or null.
   */
  /* attribute nsIURI iconFile; */
  nsresult GetIconFile(nsIURI  *aIconFile);
  nsresult SetIconFile(nsIURI  aIconFile);

  /**
   * imageSize
   *
   * The image area in square pixels, defaulting to 16 if unspecified.
   */
  /* attribute unsigned long imageSize; */
  nsresult GetImageSize(PRUint32 *aImageSize);
  nsresult SetImageSize(PRUint32 aImageSize);

  /**
   * stockIcon
   *
   * The stock icon name requested from the OS.
   */
  /* readonly attribute ACString stockIcon; */
  nsresult GetStockIcon(nsACString * aStockIcon);

  /**
   * iconSize
   *
   * The stock icon size requested from the OS.
   */
  /* readonly attribute ACString iconSize; */
  nsresult GetIconSize(nsACString * aIconSize);

  /**
   * iconState
   *
   * The stock icon state requested from the OS.
   */
  /* readonly attribute ACString iconState; */
  nsresult GetIconState(nsACString * aIconState);

  /**
   * contentType
   *
   * A valid mime type, or the empty string.
   */
  /* attribute ACString contentType; */
  nsresult GetContentType(nsACString * aContentType);
  nsresult SetContentType(nsACString * aContentType);

  /**
   * fileExtension
   *
   * The file extension of the file which we are looking up.
   */
  /* readonly attribute ACString fileExtension; */
  nsresult GetFileExtension(nsACString * aFileExtension);

}

