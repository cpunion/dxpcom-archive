/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginTagInfo2.idl
 */

module mozilla.xpcom.nsIPluginTagInfo2;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIPluginTagInfo;

enum nsPluginTagType {
  nsPluginTagType_Unknown,
  nsPluginTagType_Embed,
  nsPluginTagType_Object,
  nsPluginTagType_Applet
}

/* starting interface:    nsIPluginTagInfo2 */
const char[] NS_IPLUGINTAGINFO2_IID_STR = "6a49c9a0-019b-11d2-815b-006008119d7a";

const nsIID NS_IPLUGINTAGINFO2_IID= 
  {0x6a49c9a0, 0x019b, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

extern(Windows)
interface nsIPluginTagInfo2 : nsIPluginTagInfo {
  static const char[] IID_STR = NS_IPLUGINTAGINFO2_IID_STR;
  static const nsIID IID = NS_IPLUGINTAGINFO2_IID;

  /**
     * Get the type of the HTML tag that was used ot instantiate this
     * plugin.  Currently supported tags are EMBED, OBJECT and APPLET.
     */
  /* readonly attribute nsPluginTagType tagType; */
  nsresult GetTagType(nsPluginTagType *aTagType);

  /**
   * Get the complete text of the HTML tag that was used to instantiate this plugin.
     */
  /* void getTagText (out constCharPtr aTagText); */
  nsresult GetTagText(char * *aTagText);

  /**
     * Get a ptr to the paired list of parameter names and values,
     * returns the length of the array.
     *
     * Each name or value is a null-terminated string.
     */
  /* void getParameters (in PRUint16Ref aCount, in constCharStarConstStar aNames, in constCharStarConstStar aValues); */
  nsresult GetParameters(PRUint16 * aCount, char** * aNames, char** * aValues);

  /**
     * Get the value for the named parameter.  Returns null
     * if the parameter was not set.
   *
   * @param aName   - name of the parameter
   * @param aResult - parameter value
   * @result        - NS_OK if this operation was successful
     */
  /* void getParameter (in string aName, out constCharPtr aResult); */
  nsresult GetParameter(char *aName, char * *aResult);

  /**
   * Get the document base
   */
  /* void getDocumentBase (out constCharPtr aDocumentBase); */
  nsresult GetDocumentBase(char * *aDocumentBase);

  /**
     * Return an encoding whose name is specified in:
     * http://java.sun.com/products/jdk/1.1/docs/guide/intl/intl.doc.html#25303
     */
  /* void getDocumentEncoding (out constCharPtr aDocumentEncoding); */
  nsresult GetDocumentEncoding(char * *aDocumentEncoding);

  /**
   * Get object alignment
   */
  /* void getAlignment (out constCharPtr aElignment); */
  nsresult GetAlignment(char * *aElignment);

  /**
   * Get object width
   */
  /* readonly attribute unsigned long width; */
  nsresult GetWidth(PRUint32 *aWidth);

  /**
   * Get object height
   */
  /* readonly attribute unsigned long height; */
  nsresult GetHeight(PRUint32 *aHeight);

  /**
   * Get border vertical space
   */
  /* readonly attribute unsigned long borderVertSpace; */
  nsresult GetBorderVertSpace(PRUint32 *aBorderVertSpace);

  /**
   * Get border horizontal space
   */
  /* readonly attribute unsigned long borderHorizSpace; */
  nsresult GetBorderHorizSpace(PRUint32 *aBorderHorizSpace);

  /**
   * Returns a unique id for the current document containing plugin
     */
  /* readonly attribute unsigned long uniqueID; */
  nsresult GetUniqueID(PRUint32 *aUniqueID);

  /**
     * Returns the DOM element corresponding to the tag which references
     * this plugin in the document.
     *
   * @param aDOMElement - resulting DOM element
     * @result - NS_OK if this operation was successful
     */
  /* readonly attribute nsIDOMElement DOMElement; */
  nsresult GetDOMElement(nsIDOMElement  *aDOMElement);

}

