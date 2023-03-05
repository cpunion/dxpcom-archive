/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAttachment.idl
 */

module mozilla.dxpcom.nsIMsgAttachmentD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgAttachment;


public import mozilla.dxpcom.nsIMsgAttachmentD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMsgAttachment */
class nsIMsgAttachmentD : public nsISupportsD {

  static const nsIID IID = NS_IMSGATTACHMENT_IID;


  alias nsIMsgAttachment InnerType;

  this(nsIMsgAttachment intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgAttachment opCast() {
    return inner;
  }

  void opAssign(nsIMsgAttachment value) {
    inner = value;
  }

  /**
   * name attribute
   *
   * @Attachment real name, will be sent with the attachment's header.
   * @If no name has been provided, a name will be generated using the url.
   */
  /* attribute AString name; */
  wchar[] Name(){
    scope auto value = new AString();
    nsresult __result = inner.GetName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Name(wchar[] aName){
    scope auto value = new AString(aName);
    nsresult __result = inner.SetName(cast(nsAString*)value);
    CheckException(__result);
  }

  /**
   * url attribute
   *
   * @specify where the attachment live (localy or remotely)
   */
  /* attribute string url; */
  char* Url(){
    char* value;
    nsresult __result = inner.GetUrl(&value);
    CheckException(__result);
    return value;
  }
  void Url(char* aUrl){
    nsresult __result = inner.SetUrl(aUrl);
    CheckException(__result);
  }

  /**
   * urlCharset attribute
   *
   * @specify the Charset of url  (used to convert url to Unicode after 
   *  unescaping)
   */
  /* attribute ACString urlCharset; */
  char[] UrlCharset(){
    scope auto value = new ACString();
    nsresult __result = inner.GetUrlCharset(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UrlCharset(char[] aUrlCharset){
    scope auto value = new ACString(aUrlCharset);
    nsresult __result = inner.SetUrlCharset(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
   * temporary attribute
   *
   * @If set to true, the file pointed by the url will be destroyed when this object is destroyed.
   * @This is only for local attachment.
   */
  /* attribute boolean temporary; */
  PRBool Temporary(){
    PRBool value;
    nsresult __result = inner.GetTemporary(&value);
    CheckException(__result);
    return value;
  }
  void Temporary(PRBool aTemporary){
    nsresult __result = inner.SetTemporary(aTemporary);
    CheckException(__result);
  }

  /**
   * contentLocation attribute
   *
   * @Specify the origin url of the attachment, used normaly when attaching a locally saved html document.
   */
  /* attribute string contentLocation; */
  char* ContentLocation(){
    char* value;
    nsresult __result = inner.GetContentLocation(&value);
    CheckException(__result);
    return value;
  }
  void ContentLocation(char* aContentLocation){
    nsresult __result = inner.SetContentLocation(aContentLocation);
    CheckException(__result);
  }

  /**
   * contentType attribute
   *
   * @Specify the content-type of the attachment, this does not include extra content-type parameters. If
   * @you need to specify extra information, use contentTypeParam, charset, macType or macCreator.
   * @If ommitted, it will be determined base on either the name, the url or the content of the file.
   */
  /* attribute string contentType; */
  char* ContentType(){
    char* value;
    nsresult __result = inner.GetContentType(&value);
    CheckException(__result);
    return value;
  }
  void ContentType(char* aContentType){
    nsresult __result = inner.SetContentType(aContentType);
    CheckException(__result);
  }

  /**
   * contentTypeParam attribute
   *
   * @Specify the any content-type parameter (other than the content-type itself, charset, macType or macCreator).
   * @It will be added to the content-type during the send/save operation.
   */
  /* attribute string contentTypeParam; */
  char* ContentTypeParam(){
    char* value;
    nsresult __result = inner.GetContentTypeParam(&value);
    CheckException(__result);
    return value;
  }
  void ContentTypeParam(char* aContentTypeParam){
    nsresult __result = inner.SetContentTypeParam(aContentTypeParam);
    CheckException(__result);
  }

  /**
   * charset attribute
   *
   * @Specify the charset of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically (if possible).
   */
  /* attribute string charset; */
  char* Charset(){
    char* value;
    nsresult __result = inner.GetCharset(&value);
    CheckException(__result);
    return value;
  }
  void Charset(char* aCharset){
    nsresult __result = inner.SetCharset(aCharset);
    CheckException(__result);
  }

  /**
   * macType attribute
   *
   * @Specify the Mac file type of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically on Macintosh OS.
   */
  /* attribute string macType; */
  char* MacType(){
    char* value;
    nsresult __result = inner.GetMacType(&value);
    CheckException(__result);
    return value;
  }
  void MacType(char* aMacType){
    nsresult __result = inner.SetMacType(aMacType);
    CheckException(__result);
  }

  /**
   * macCreator attribute
   *
   * @Specify the Mac file creator of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically on Macintosh OS.
   */
  /* attribute string macCreator; */
  char* MacCreator(){
    char* value;
    nsresult __result = inner.GetMacCreator(&value);
    CheckException(__result);
    return value;
  }
  void MacCreator(char* aMacCreator){
    nsresult __result = inner.SetMacCreator(aMacCreator);
    CheckException(__result);
  }

  /**
    * equalsUrl
    *
    * @ determines if both attachments have the same url.
    */
  /* boolean equalsUrl (in nsIMsgAttachment attachment); */
  PRBool EqualsUrl(nsIMsgAttachmentD attachment){
    PRBool _retval;
    nsresult __result = inner.EqualsUrl(attachment ? cast(nsIMsgAttachment)attachment : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMsgAttachment inner;

}

