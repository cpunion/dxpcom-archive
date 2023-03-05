/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITXTToHTMLConv.idl
 */

module mozilla.xpcom.nsITXTToHTMLConv;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIStreamConverter;
public import mozilla.xpcom.nsrootidl;


/* starting interface:    nsITXTToHTMLConv */
const char[] NS_ITXTTOHTMLCONV_IID_STR = "933355f6-1dd2-11b2-a9b0-d335b9e35983";

const nsIID NS_ITXTTOHTMLCONV_IID= 
  {0x933355f6, 0x1dd2, 0x11b2, 
    [ 0xa9, 0xb0, 0xd3, 0x35, 0xb9, 0xe3, 0x59, 0x83 ]};

extern(Windows)
interface nsITXTToHTMLConv : nsIStreamConverter {
  static const char[] IID_STR = NS_ITXTTOHTMLCONV_IID_STR;
  static const nsIID IID = NS_ITXTTOHTMLCONV_IID;

  /**
   * @param text: Title to set for the HTML document.  Only applicable if
   *              preFormatHTML(true) is called.
   * @result      The given title will be used to form an HTML document
   *              from the plain text document.
   */
  /* void setTitle (in wstring text); */
  nsresult SetTitle(PRUnichar *text);

  /**
   * @param value: true to use an HTML header and footer on the document,
   *               false to omit it.
   * @result       The document will use a header and footer if value is
   *               true.
   */
  /* void preFormatHTML (in boolean value); */
  nsresult PreFormatHTML(PRBool value);

}

