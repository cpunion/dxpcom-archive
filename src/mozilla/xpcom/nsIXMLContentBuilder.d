/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXMLContentBuilder.idl
 */

module mozilla.xpcom.nsIXMLContentBuilder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */


/* starting interface:    nsIXMLContentBuilder */
const char[] NS_IXMLCONTENTBUILDER_IID_STR = "e9c4cd4f-cd41-43d0-bf3b-48abb9cde90f";

const nsIID NS_IXMLCONTENTBUILDER_IID= 
  {0xe9c4cd4f, 0xcd41, 0x43d0, 
    [ 0xbf, 0x3b, 0x48, 0xab, 0xb9, 0xcd, 0xe9, 0x0f ]};

extern(Windows)
interface nsIXMLContentBuilder : nsISupports {
  static const char[] IID_STR = NS_IXMLCONTENTBUILDER_IID_STR;
  static const nsIID IID = NS_IXMLCONTENTBUILDER_IID;

  /* void clear (in nsIDOMElement root); */
  nsresult Clear(nsIDOMElement root);

  /* void setDocument (in nsIDOMDocument doc); */
  nsresult SetDocument(nsIDOMDocument doc);

  /* void setElementNamespace (in AString ns); */
  nsresult SetElementNamespace(nsAString * ns);

  /* void beginElement (in AString tagname); */
  nsresult BeginElement(nsAString * tagname);

  /* void endElement (); */
  nsresult EndElement();

  /* void attrib (in AString name, in AString value); */
  nsresult Attrib(nsAString * name, nsAString * value);

  /* void textNode (in AString text); */
  nsresult TextNode(nsAString * text);

  /* readonly attribute nsIDOMElement root; */
  nsresult GetRoot(nsIDOMElement  *aRoot);

  /* readonly attribute nsIDOMElement current; */
  nsresult GetCurrent(nsIDOMElement  *aCurrent);

}

