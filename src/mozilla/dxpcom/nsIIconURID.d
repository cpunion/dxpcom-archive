/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIIconURI.idl
 */

module mozilla.dxpcom.nsIIconURID;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIIconURI;


public import mozilla.dxpcom.nsIIconURID;

public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIMozIconURI */
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
class nsIMozIconURID : public nsIURID {

  static const nsIID IID = NS_IMOZICONURI_IID;


  alias nsIMozIconURI InnerType;

  this(nsIMozIconURI intr){
    super(intr);
    this.inner = intr;
  }

  nsIMozIconURI opCast() {
    return inner;
  }

  void opAssign(nsIMozIconURI value) {
    inner = value;
  }

  /**
   * iconFile
   *
   * the file URL contained within this moz-icon url, or null.
   */
  /* attribute nsIURI iconFile; */
  nsIURID  IconFile(){
    nsIURI value;
    nsresult __result = inner.GetIconFile(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void IconFile(nsIURID  aIconFile){
    nsIURI value;
    nsresult __result = inner.SetIconFile(value);
    CheckException(__result);
  }

  /**
   * imageSize
   *
   * The image area in square pixels, defaulting to 16 if unspecified.
   */
  /* attribute unsigned long imageSize; */
  PRUint32 ImageSize(){
    PRUint32 value;
    nsresult __result = inner.GetImageSize(&value);
    CheckException(__result);
    return value;
  }
  void ImageSize(PRUint32 aImageSize){
    nsresult __result = inner.SetImageSize(aImageSize);
    CheckException(__result);
  }

  /**
   * stockIcon
   *
   * The stock icon name requested from the OS.
   */
  /* readonly attribute ACString stockIcon; */
  char[] StockIcon(){
    scope auto value = new ACString();
    nsresult __result = inner.GetStockIcon(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * iconSize
   *
   * The stock icon size requested from the OS.
   */
  /* readonly attribute ACString iconSize; */
  char[] IconSize(){
    scope auto value = new ACString();
    nsresult __result = inner.GetIconSize(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * iconState
   *
   * The stock icon state requested from the OS.
   */
  /* readonly attribute ACString iconState; */
  char[] IconState(){
    scope auto value = new ACString();
    nsresult __result = inner.GetIconState(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
   * contentType
   *
   * A valid mime type, or the empty string.
   */
  /* attribute ACString contentType; */
  char[] ContentType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetContentType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentType(char[] aContentType){
    scope auto value = new ACString(aContentType);
    nsresult __result = inner.SetContentType(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
   * fileExtension
   *
   * The file extension of the file which we are looking up.
   */
  /* readonly attribute ACString fileExtension; */
  char[] FileExtension(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFileExtension(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIMozIconURI inner;

}

