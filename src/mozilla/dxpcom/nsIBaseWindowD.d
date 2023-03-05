/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBaseWindow.idl
 */

module mozilla.dxpcom.nsIBaseWindowD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIBaseWindow;


public import mozilla.dxpcom.nsIBaseWindowD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;


/* starting wrapper class:    nsIBaseWindow */
/**
 * The nsIBaseWindow describes a generic window and basic operations that 
 * can be performed on it.  This is not to be a complete windowing interface
 * but rather a common set that nearly all windowed objects support.    
 */
class nsIBaseWindowD : public nsISupportsD {

  static const nsIID IID = NS_IBASEWINDOW_IID;


  alias nsIBaseWindow InnerType;

  this(nsIBaseWindow intr){
    super(intr);
    this.inner = intr;
  }

  nsIBaseWindow opCast() {
    return inner;
  }

  void opAssign(nsIBaseWindow value) {
    inner = value;
  }

  /* [noscript] void initWindow (in nativeWindow parentNativeWindow, in nsIWidget parentWidget, in long x, in long y, in long cx, in long cy); */
  void InitWindow(nativeWindow parentNativeWindow, nsIWidget * parentWidget, PRInt32 x, PRInt32 y, PRInt32 cx, PRInt32 cy){
    nsresult __result = inner.InitWindow(parentNativeWindow, parentWidget, x, y, cx, cy);
    CheckException(__result);
  }

  /* void create (); */
  void Create(){
    nsresult __result = inner.Create();
    CheckException(__result);
  }

  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /* void setPosition (in long x, in long y); */
  void SetPosition(PRInt32 x, PRInt32 y){
    nsresult __result = inner.SetPosition(x, y);
    CheckException(__result);
  }

  /* void getPosition (out long x, out long y); */
  void GetPosition(out PRInt32 x, out PRInt32 y){
    nsresult __result = inner.GetPosition(&x, &y);
    CheckException(__result);
  }

  /* void setSize (in long cx, in long cy, in boolean fRepaint); */
  void SetSize(PRInt32 cx, PRInt32 cy, PRBool fRepaint){
    nsresult __result = inner.SetSize(cx, cy, fRepaint);
    CheckException(__result);
  }

  /* void getSize (out long cx, out long cy); */
  void GetSize(out PRInt32 cx, out PRInt32 cy){
    nsresult __result = inner.GetSize(&cx, &cy);
    CheckException(__result);
  }

  /* void setPositionAndSize (in long x, in long y, in long cx, in long cy, in boolean fRepaint); */
  void SetPositionAndSize(PRInt32 x, PRInt32 y, PRInt32 cx, PRInt32 cy, PRBool fRepaint){
    nsresult __result = inner.SetPositionAndSize(x, y, cx, cy, fRepaint);
    CheckException(__result);
  }

  /* void getPositionAndSize (out long x, out long y, out long cx, out long cy); */
  void GetPositionAndSize(out PRInt32 x, out PRInt32 y, out PRInt32 cx, out PRInt32 cy){
    nsresult __result = inner.GetPositionAndSize(&x, &y, &cx, &cy);
    CheckException(__result);
  }

  /** 
	 * Tell the window to repaint itself
	 * @param aForce - if true, repaint immediately
	 *                 if false, the window may defer repainting as it sees fit.
	 */
  /* void repaint (in boolean force); */
  void Repaint(PRBool force){
    nsresult __result = inner.Repaint(force);
    CheckException(__result);
  }

  /* [noscript] attribute nsIWidget parentWidget; */
  nsIWidget * ParentWidget(){
    nsIWidget * value;
    nsresult __result = inner.GetParentWidget(&value);
    CheckException(__result);
    return value;
  }
  void ParentWidget(nsIWidget * aParentWidget){
    nsresult __result = inner.SetParentWidget(aParentWidget);
    CheckException(__result);
  }

  /* attribute nativeWindow parentNativeWindow; */
  nativeWindow ParentNativeWindow(){
    nativeWindow value;
    nsresult __result = inner.GetParentNativeWindow(&value);
    CheckException(__result);
    return value;
  }
  void ParentNativeWindow(nativeWindow aParentNativeWindow){
    nativeWindow value;
    nsresult __result = inner.SetParentNativeWindow(value);
    CheckException(__result);
  }

  /* attribute boolean visibility; */
  PRBool Visibility(){
    PRBool value;
    nsresult __result = inner.GetVisibility(&value);
    CheckException(__result);
    return value;
  }
  void Visibility(PRBool aVisibility){
    nsresult __result = inner.SetVisibility(aVisibility);
    CheckException(__result);
  }

  /* attribute boolean enabled; */
  PRBool Enabled(){
    PRBool value;
    nsresult __result = inner.GetEnabled(&value);
    CheckException(__result);
    return value;
  }
  void Enabled(PRBool aEnabled){
    nsresult __result = inner.SetEnabled(aEnabled);
    CheckException(__result);
  }

  /** set blurSuppression to true to suppress handling of blur events.
     *  set it false to re-enable them. query it to determine whether
     *  blur events are suppressed. The implementation should allow
     *  for blur events to be suppressed multiple times.
     */
  /* attribute boolean blurSuppression; */
  PRBool BlurSuppression(){
    PRBool value;
    nsresult __result = inner.GetBlurSuppression(&value);
    CheckException(__result);
    return value;
  }
  void BlurSuppression(PRBool aBlurSuppression){
    nsresult __result = inner.SetBlurSuppression(aBlurSuppression);
    CheckException(__result);
  }

  /* [noscript] readonly attribute nsIWidget mainWidget; */
  nsIWidget * MainWidget(){
    nsIWidget * value;
    nsresult __result = inner.GetMainWidget(&value);
    CheckException(__result);
    return value;
  }

  /**
	* Give the window focus.
	*/
  /* void setFocus (); */
  void SetFocus(){
    nsresult __result = inner.SetFocus();
    CheckException(__result);
  }

  /* attribute wstring title; */
  PRUnichar* Title(){
    PRUnichar* value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return value;
  }
  void Title(PRUnichar* aTitle){
    nsresult __result = inner.SetTitle(aTitle);
    CheckException(__result);
  }

private:
  nsIBaseWindow inner;

}

