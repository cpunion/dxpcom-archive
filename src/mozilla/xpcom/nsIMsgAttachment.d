/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgAttachment.idl
 */

module mozilla.xpcom.nsIMsgAttachment;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIMsgAttachment */
const char[] NS_IMSGATTACHMENT_IID_STR = "3f92b7c0-8679-4dc6-9af9-9da5546db5b0";

const nsIID NS_IMSGATTACHMENT_IID= 
  {0x3f92b7c0, 0x8679, 0x4dc6, 
    [ 0x9a, 0xf9, 0x9d, 0xa5, 0x54, 0x6d, 0xb5, 0xb0 ]};

extern(Windows)
interface nsIMsgAttachment : nsISupports {
  static const char[] IID_STR = NS_IMSGATTACHMENT_IID_STR;
  static const nsIID IID = NS_IMSGATTACHMENT_IID;

  /**
   * name attribute
   *
   * @Attachment real name, will be sent with the attachment's header.
   * @If no name has been provided, a name will be generated using the url.
   */
  /* attribute AString name; */
  nsresult GetName(nsAString * aName);
  nsresult SetName(nsAString * aName);

  /**
   * url attribute
   *
   * @specify where the attachment live (localy or remotely)
   */
  /* attribute string url; */
  nsresult GetUrl(char * *aUrl);
  nsresult SetUrl(char * aUrl);

  /**
   * urlCharset attribute
   *
   * @specify the Charset of url  (used to convert url to Unicode after 
   *  unescaping)
   */
  /* attribute ACString urlCharset; */
  nsresult GetUrlCharset(nsACString * aUrlCharset);
  nsresult SetUrlCharset(nsACString * aUrlCharset);

  /**
   * temporary attribute
   *
   * @If set to true, the file pointed by the url will be destroyed when this object is destroyed.
   * @This is only for local attachment.
   */
  /* attribute boolean temporary; */
  nsresult GetTemporary(PRBool *aTemporary);
  nsresult SetTemporary(PRBool aTemporary);

  /**
   * contentLocation attribute
   *
   * @Specify the origin url of the attachment, used normaly when attaching a locally saved html document.
   */
  /* attribute string contentLocation; */
  nsresult GetContentLocation(char * *aContentLocation);
  nsresult SetContentLocation(char * aContentLocation);

  /**
   * contentType attribute
   *
   * @Specify the content-type of the attachment, this does not include extra content-type parameters. If
   * @you need to specify extra information, use contentTypeParam, charset, macType or macCreator.
   * @If ommitted, it will be determined base on either the name, the url or the content of the file.
   */
  /* attribute string contentType; */
  nsresult GetContentType(char * *aContentType);
  nsresult SetContentType(char * aContentType);

  /**
   * contentTypeParam attribute
   *
   * @Specify the any content-type parameter (other than the content-type itself, charset, macType or macCreator).
   * @It will be added to the content-type during the send/save operation.
   */
  /* attribute string contentTypeParam; */
  nsresult GetContentTypeParam(char * *aContentTypeParam);
  nsresult SetContentTypeParam(char * aContentTypeParam);

  /**
   * charset attribute
   *
   * @Specify the charset of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically (if possible).
   */
  /* attribute string charset; */
  nsresult GetCharset(char * *aCharset);
  nsresult SetCharset(char * aCharset);

  /**
   * macType attribute
   *
   * @Specify the Mac file type of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically on Macintosh OS.
   */
  /* attribute string macType; */
  nsresult GetMacType(char * *aMacType);
  nsresult SetMacType(char * aMacType);

  /**
   * macCreator attribute
   *
   * @Specify the Mac file creator of the attachment. It will be added to the content-type during the
   * @send/save operation
   * @If omitted, will be determined automatically on Macintosh OS.
   */
  /* attribute string macCreator; */
  nsresult GetMacCreator(char * *aMacCreator);
  nsresult SetMacCreator(char * aMacCreator);

  /**
    * equalsUrl
    *
    * @ determines if both attachments have the same url.
    */
  /* boolean equalsUrl (in nsIMsgAttachment attachment); */
  nsresult EqualsUrl(nsIMsgAttachment attachment, PRBool *_retval);

}

