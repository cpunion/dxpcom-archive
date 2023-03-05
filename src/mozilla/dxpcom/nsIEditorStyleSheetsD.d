/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorStyleSheets.idl
 */

module mozilla.dxpcom.nsIEditorStyleSheetsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorStyleSheets;


public import mozilla.dxpcom.nsIEditorStyleSheetsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEditorStyleSheets */
class nsIEditorStyleSheetsD : public nsISupportsD {

  static const nsIID IID = NS_IEDITORSTYLESHEETS_IID;


  alias nsIEditorStyleSheets InnerType;

  this(nsIEditorStyleSheets intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorStyleSheets opCast() {
    return inner;
  }

  void opAssign(nsIEditorStyleSheets value) {
    inner = value;
  }

  /** load and apply the style sheet, specified by aURL, to the
    * editor's document, replacing the last style sheet added (if any).
    * This can involve asynchronous network I/O.
    * 
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void replaceStyleSheet (in AString aURL); */
  void ReplaceStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.ReplaceStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** Add the given Style Sheet to the editor's document,
    * on top of any that are already there.
    * This is always synchronous.
    *
    * @param aURL  The style sheet to be  applied.
    */
  /* void addStyleSheet (in AString aURL); */
  void AddStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.AddStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** load and apply the style sheet, specified by aURL, to the
    * editor's document, replacing the last style sheet added (if any).
    * This is always synchronous.
    * 
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void replaceOverrideStyleSheet (in AString aURL); */
  void ReplaceOverrideStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.ReplaceOverrideStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** load and apply an Override style sheet, specified by aURL, to
    * the editor's document, on top of any that are already there.
    * IMPORTANT: This is assumed to be synchronous:
    *            URL is a local file with no @import used
    * This action is not undoable.
    * It is not intended for use by "user", only editor developers
    *   to change display behavior for editing (like showing special cursors)
    *   that will not be affected by loading other "document" style sheets
    *   loaded using addStyleSheet or replaceStyleSheet.
    *
    * @param aURL         The style sheet to be loaded and applied.
    */
  /* void addOverrideStyleSheet (in AString aURL); */
  void AddOverrideStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.AddOverrideStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** Remove the given Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed
    */
  /* void removeStyleSheet (in AString aURL); */
  void RemoveStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.RemoveStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** Remove the given Override Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed.
    */
  /* void removeOverrideStyleSheet (in AString aURL); */
  void RemoveOverrideStyleSheet(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.RemoveOverrideStyleSheet(cast(nsAString*)_aURL);
    CheckException(__result);
  }

  /** Enable or disable the given Style Sheet from the editor's document
    * This is always synchronous
    *
    * @param aURL  The style sheet to be removed
    */
  /* void enableStyleSheet (in AString aURL, in PRBool aEnable); */
  void EnableStyleSheet(wchar[] aURL, PRBool aEnable){
    scope auto _aURL = new AString(aURL);
    nsresult __result = inner.EnableStyleSheet(cast(nsAString*)_aURL, aEnable);
    CheckException(__result);
  }

  /** Get the nsICSSStyleSheet associated with the given URL.
    *
    * @param aURL         The style sheet's URL
    * @return             the style sheet
    */
  /* [noscript] nsICSSStyleSheet getStyleSheetForURL (in AString aURL); */
  nsICSSStyleSheet * GetStyleSheetForURL(wchar[] aURL){
    scope auto _aURL = new AString(aURL);
nsICSSStyleSheet * _retval;
    nsresult __result = inner.GetStyleSheetForURL(cast(nsAString*)_aURL, &_retval);
    CheckException(__result);
    return _retval;
  }

  /** Get the URL associated with the given nsICSSStyleSheet.
    *
    * @param aStyleSheet  The style sheet
    * @return             the style sheet's URL
    */
  /* [noscript] AString getURLForStyleSheet (in nsICSSStyleSheet aStyleSheet); */
  wchar[] GetURLForStyleSheet(nsICSSStyleSheet * aStyleSheet){
    scope auto _retval = new AString;
    nsresult __result = inner.GetURLForStyleSheet(aStyleSheet, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIEditorStyleSheets inner;

}

