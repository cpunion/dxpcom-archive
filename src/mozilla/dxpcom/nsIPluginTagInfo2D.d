/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginTagInfo2.idl
 */

module mozilla.dxpcom.nsIPluginTagInfo2D;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginTagInfo2;


public import mozilla.dxpcom.nsIPluginTagInfo2D;

public import mozilla.xpcom.nsIPluginTagInfo;
public import mozilla.dxpcom.nsIPluginTagInfoD;


/* starting wrapper class:    nsIPluginTagInfo2 */
class nsIPluginTagInfo2D : public nsIPluginTagInfoD {

  static const nsIID IID = NS_IPLUGINTAGINFO2_IID;


  alias nsIPluginTagInfo2 InnerType;

  this(nsIPluginTagInfo2 intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginTagInfo2 opCast() {
    return inner;
  }

  void opAssign(nsIPluginTagInfo2 value) {
    inner = value;
  }

  /**
     * Get the type of the HTML tag that was used ot instantiate this
     * plugin.  Currently supported tags are EMBED, OBJECT and APPLET.
     */
  /* readonly attribute nsPluginTagType tagType; */
  nsPluginTagType TagType(){
    nsPluginTagType value;
    nsresult __result = inner.GetTagType(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get the complete text of the HTML tag that was used to instantiate this plugin.
     */
  /* void getTagText (out constCharPtr aTagText); */
  void GetTagText(out char * aTagText){
    nsresult __result = inner.GetTagText(&aTagText);
    CheckException(__result);
  }

  /**
     * Get a ptr to the paired list of parameter names and values,
     * returns the length of the array.
     *
     * Each name or value is a null-terminated string.
     */
  /* void getParameters (in PRUint16Ref aCount, in constCharStarConstStar aNames, in constCharStarConstStar aValues); */
  void GetParameters(PRUint16 * aCount, char** * aNames, char** * aValues){
    nsresult __result = inner.GetParameters(aCount, aNames, aValues);
    CheckException(__result);
  }

  /**
     * Get the value for the named parameter.  Returns null
     * if the parameter was not set.
   *
   * @param aName   - name of the parameter
   * @param aResult - parameter value
   * @result        - NS_OK if this operation was successful
     */
  /* void getParameter (in string aName, out constCharPtr aResult); */
  void GetParameter(char*aName, out char * aResult){
    nsresult __result = inner.GetParameter(aName, &aResult);
    CheckException(__result);
  }

  /**
   * Get the document base
   */
  /* void getDocumentBase (out constCharPtr aDocumentBase); */
  void GetDocumentBase(out char * aDocumentBase){
    nsresult __result = inner.GetDocumentBase(&aDocumentBase);
    CheckException(__result);
  }

  /**
     * Return an encoding whose name is specified in:
     * http://java.sun.com/products/jdk/1.1/docs/guide/intl/intl.doc.html#25303
     */
  /* void getDocumentEncoding (out constCharPtr aDocumentEncoding); */
  void GetDocumentEncoding(out char * aDocumentEncoding){
    nsresult __result = inner.GetDocumentEncoding(&aDocumentEncoding);
    CheckException(__result);
  }

  /**
   * Get object alignment
   */
  /* void getAlignment (out constCharPtr aElignment); */
  void GetAlignment(out char * aElignment){
    nsresult __result = inner.GetAlignment(&aElignment);
    CheckException(__result);
  }

  /**
   * Get object width
   */
  /* readonly attribute unsigned long width; */
  PRUint32 Width(){
    PRUint32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get object height
   */
  /* readonly attribute unsigned long height; */
  PRUint32 Height(){
    PRUint32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get border vertical space
   */
  /* readonly attribute unsigned long borderVertSpace; */
  PRUint32 BorderVertSpace(){
    PRUint32 value;
    nsresult __result = inner.GetBorderVertSpace(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get border horizontal space
   */
  /* readonly attribute unsigned long borderHorizSpace; */
  PRUint32 BorderHorizSpace(){
    PRUint32 value;
    nsresult __result = inner.GetBorderHorizSpace(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Returns a unique id for the current document containing plugin
     */
  /* readonly attribute unsigned long uniqueID; */
  PRUint32 UniqueID(){
    PRUint32 value;
    nsresult __result = inner.GetUniqueID(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the DOM element corresponding to the tag which references
     * this plugin in the document.
     *
   * @param aDOMElement - resulting DOM element
     * @result - NS_OK if this operation was successful
     */
  /* readonly attribute nsIDOMElement DOMElement; */
  nsIDOMElementD  DOMElement(){
    nsIDOMElement value;
    nsresult __result = inner.GetDOMElement(&value);
    CheckException(__result);
    return new nsIDOMElementD(value);
  }

private:
  nsIPluginTagInfo2 inner;

}

