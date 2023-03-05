/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMHTMLCanvasElement.idl
 */

module mozilla.dxpcom.nsIDOMHTMLCanvasElementD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMHTMLCanvasElement;


public import mozilla.dxpcom.nsIDOMHTMLCanvasElementD;

public import mozilla.xpcom.nsIDOMHTMLElement;
public import mozilla.dxpcom.nsIDOMHTMLElementD;


/* starting wrapper class:    nsIDOMHTMLCanvasElement */
/**
 * The nsIDOMHTMLCanvasElement interface is the interface to a HTML
 * <canvas> element.
 *
 * For more information on this interface, please see
 * http://www.whatwg.org/specs/web-apps/current-work/#graphics
 *
 * @status UNDER_DEVELOPMENT
 */
class nsIDOMHTMLCanvasElementD : public nsIDOMHTMLElementD {

  static const nsIID IID = NS_IDOMHTMLCANVASELEMENT_IID;


  alias nsIDOMHTMLCanvasElement InnerType;

  this(nsIDOMHTMLCanvasElement intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMHTMLCanvasElement opCast() {
    return inner;
  }

  void opAssign(nsIDOMHTMLCanvasElement value) {
    inner = value;
  }

  /* attribute long width; */
  PRInt32 Width(){
    PRInt32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }
  void Width(PRInt32 aWidth){
    nsresult __result = inner.SetWidth(aWidth);
    CheckException(__result);
  }

  /* attribute long height; */
  PRInt32 Height(){
    PRInt32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }
  void Height(PRInt32 aHeight){
    nsresult __result = inner.SetHeight(aHeight);
    CheckException(__result);
  }

  /* nsISupports getContext (in DOMString contextId); */
  nsISupportsD  GetContext(wchar[] contextId){
    scope auto _contextId = new AString(contextId);
    nsISupports _retval;
    nsresult __result = inner.GetContext(cast(nsAString*)_contextId, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* DOMString toDataURL (); */
  wchar[] ToDataURL(){
    scope auto _retval = new AString;
    nsresult __result = inner.ToDataURL(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* [noscript] DOMString toDataURLAs (in DOMString mimeType, in DOMString encoderOptions); */
  wchar[] ToDataURLAs(wchar[] mimeType, wchar[] encoderOptions){
    scope auto _mimeType = new AString(mimeType);
    scope auto _encoderOptions = new AString(encoderOptions);
    scope auto _retval = new AString;
    nsresult __result = inner.ToDataURLAs(cast(nsAString*)_mimeType, cast(nsAString*)_encoderOptions, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIDOMHTMLCanvasElement inner;

}

