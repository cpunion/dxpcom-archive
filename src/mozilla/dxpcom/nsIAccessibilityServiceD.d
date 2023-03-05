/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAccessibilityService.idl
 */

module mozilla.dxpcom.nsIAccessibilityServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAccessibilityService;


public import mozilla.dxpcom.nsIAccessibilityServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAccessibleRetrieval;
public import mozilla.dxpcom.nsIAccessibleRetrievalD;


/* starting wrapper class:    nsIAccessibilityService */
class nsIAccessibilityServiceD : public nsIAccessibleRetrievalD {

  static const nsIID IID = NS_IACCESSIBILITYSERVICE_IID;


  alias nsIAccessibilityService InnerType;

  this(nsIAccessibilityService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAccessibilityService opCast() {
    return inner;
  }

  void opAssign(nsIAccessibilityService value) {
    inner = value;
  }

  /* nsIAccessible createOuterDocAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateOuterDocAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateOuterDocAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createRootAccessible (in nsIPresShell aShell, in nsIDocument aDocument); */
  nsIAccessibleD  CreateRootAccessible(nsIPresShellD aShell, nsIDocumentD aDocument){
    nsIAccessible _retval;
    nsresult __result = inner.CreateRootAccessible(aShell ? cast(nsIPresShell)aShell : null, aDocument ? cast(nsIDocument)aDocument : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTML4ButtonAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTML4ButtonAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTML4ButtonAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULAlertAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULAlertAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULAlertAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLAreaAccessible (in nsIWeakReference aPresShell, in nsIDOMNode aDOMNode, in nsIAccessible aAccParent); */
  nsIAccessibleD  CreateHTMLAreaAccessible(nsIWeakReferenceD aPresShell, nsIDOMNodeD aDOMNode, nsIAccessibleD aAccParent){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLAreaAccessible(aPresShell ? cast(nsIWeakReference)aPresShell : null, aDOMNode ? cast(nsIDOMNode)aDOMNode : null, aAccParent ? cast(nsIAccessible)aAccParent : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLBlockAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLBlockAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLBlockAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLButtonAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLButtonAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLButtonAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLButtonAccessibleXBL (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateHTMLButtonAccessibleXBL(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLButtonAccessibleXBL(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLAccessibleByMarkup (in nsISupports aFrame, in nsIWeakReference aWeakShell, in nsIDOMNode aDOMNode, in AString aRole); */
  nsIAccessibleD  CreateHTMLAccessibleByMarkup(nsISupportsD aFrame, nsIWeakReferenceD aWeakShell, nsIDOMNodeD aDOMNode, wchar[] aRole){
    scope auto _aRole = new AString(aRole);
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLAccessibleByMarkup(aFrame ? cast(nsISupports)aFrame : null, aWeakShell ? cast(nsIWeakReference)aWeakShell : null, aDOMNode ? cast(nsIDOMNode)aDOMNode : null, cast(nsAString*)_aRole, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLLIAccessible (in nsISupports aFrame, in nsISupports aBulletFrame, in AString aBulletText); */
  nsIAccessibleD  CreateHTMLLIAccessible(nsISupportsD aFrame, nsISupportsD aBulletFrame, wchar[] aBulletText){
    scope auto _aBulletText = new AString(aBulletText);
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLLIAccessible(aFrame ? cast(nsISupports)aFrame : null, aBulletFrame ? cast(nsISupports)aBulletFrame : null, cast(nsAString*)_aBulletText, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLCheckboxAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLCheckboxAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLCheckboxAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLCheckboxAccessibleXBL (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateHTMLCheckboxAccessibleXBL(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLCheckboxAccessibleXBL(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLComboboxAccessible (in nsIDOMNode aNode, in nsISupports aPresShell); */
  nsIAccessibleD  CreateHTMLComboboxAccessible(nsIDOMNodeD aNode, nsISupportsD aPresShell){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLComboboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, aPresShell ? cast(nsISupports)aPresShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLGenericAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLGenericAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLGenericAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLGroupboxAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLGroupboxAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLGroupboxAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLHRAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLHRAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLHRAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLImageAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLImageAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLImageAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLLabelAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLLabelAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLLabelAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLListboxAccessible (in nsIDOMNode aNode, in nsISupports aPresShell); */
  nsIAccessibleD  CreateHTMLListboxAccessible(nsIDOMNodeD aNode, nsISupportsD aPresShell){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLListboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, aPresShell ? cast(nsISupports)aPresShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLObjectFrameAccessible (in nsObjectFrame aFrame); */
  nsIAccessibleD  CreateHTMLObjectFrameAccessible(nsObjectFrameD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLObjectFrameAccessible(aFrame ? cast(nsObjectFrame)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLRadioButtonAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLRadioButtonAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLRadioButtonAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLRadioButtonAccessibleXBL (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateHTMLRadioButtonAccessibleXBL(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLRadioButtonAccessibleXBL(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLSelectOptionAccessible (in nsIDOMNode aNode, in nsIAccessible aAccParent, in nsISupports aPresShell); */
  nsIAccessibleD  CreateHTMLSelectOptionAccessible(nsIDOMNodeD aNode, nsIAccessibleD aAccParent, nsISupportsD aPresShell){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLSelectOptionAccessible(aNode ? cast(nsIDOMNode)aNode : null, aAccParent ? cast(nsIAccessible)aAccParent : null, aPresShell ? cast(nsISupports)aPresShell : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTableAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLTableAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTableAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTableCellAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLTableCellAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTableCellAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTableCaptionAccessible (in nsIDOMNode aDOMNode); */
  nsIAccessibleD  CreateHTMLTableCaptionAccessible(nsIDOMNodeD aDOMNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTableCaptionAccessible(aDOMNode ? cast(nsIDOMNode)aDOMNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTableHeadAccessible (in nsIDOMNode aDOMNode); */
  nsIAccessibleD  CreateHTMLTableHeadAccessible(nsIDOMNodeD aDOMNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTableHeadAccessible(aDOMNode ? cast(nsIDOMNode)aDOMNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTextAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLTextAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTextAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createHTMLTextFieldAccessible (in nsISupports aFrame); */
  nsIAccessibleD  CreateHTMLTextFieldAccessible(nsISupportsD aFrame){
    nsIAccessible _retval;
    nsresult __result = inner.CreateHTMLTextFieldAccessible(aFrame ? cast(nsISupports)aFrame : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULButtonAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULButtonAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULButtonAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULCheckboxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULCheckboxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULCheckboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULColorPickerAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULColorPickerAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULColorPickerAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULColorPickerTileAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULColorPickerTileAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULColorPickerTileAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULComboboxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULComboboxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULComboboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULDropmarkerAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULDropmarkerAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULDropmarkerAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULGroupboxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULGroupboxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULGroupboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULImageAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULImageAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULImageAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULLinkAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULLinkAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULLinkAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULListboxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULListboxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULListboxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULListitemAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULListitemAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULListitemAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULMenubarAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULMenubarAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULMenubarAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULMenuitemAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULMenuitemAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULMenuitemAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULMenupopupAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULMenupopupAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULMenupopupAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULMenuSeparatorAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULMenuSeparatorAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULMenuSeparatorAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULProgressMeterAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULProgressMeterAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULProgressMeterAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULStatusBarAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULStatusBarAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULStatusBarAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULRadioButtonAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULRadioButtonAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULRadioButtonAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULRadioGroupAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULRadioGroupAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULRadioGroupAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULSelectOptionAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULSelectOptionAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULSelectOptionAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULSelectListAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULSelectListAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULSelectListAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTabAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTabAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTabAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTabBoxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTabBoxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTabBoxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTabPanelsAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTabPanelsAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTabPanelsAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTabsAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTabsAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTabsAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTextAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTextAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTextAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTextBoxAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTextBoxAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTextBoxAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTreeAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTreeAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTreeAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTreeColumnsAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTreeColumnsAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTreeColumnsAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTreeColumnitemAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTreeColumnitemAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTreeColumnitemAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULToolbarAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULToolbarAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULToolbarAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULToolbarSeparatorAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULToolbarSeparatorAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULToolbarSeparatorAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* nsIAccessible createXULTooltipAccessible (in nsIDOMNode aNode); */
  nsIAccessibleD  CreateXULTooltipAccessible(nsIDOMNodeD aNode){
    nsIAccessible _retval;
    nsresult __result = inner.CreateXULTooltipAccessible(aNode ? cast(nsIDOMNode)aNode : null, &_retval);
    CheckException(__result);
    return new nsIAccessibleD(_retval);
  }

  /* [noscript] nsIAccessible getAccessible (in nsIDOMNode aNode, in nsIPresShell aPresShell, in nsIWeakReference aWeakShell, inout nsIFrame frameHint, out boolean aIsHidden); */
  nsIAccessibleD  GetAccessible(nsIDOMNodeD aNode, nsIPresShellD aPresShell, nsIWeakReferenceD aWeakShell, out nsIFrameD frameHint, out PRBool aIsHidden){
    nsIFrame _frameHint;
    nsIAccessible _retval;
    nsresult __result = inner.GetAccessible(aNode ? cast(nsIDOMNode)aNode : null, aPresShell ? cast(nsIPresShell)aPresShell : null, aWeakShell ? cast(nsIWeakReference)aWeakShell : null, &_frameHint, &aIsHidden, &_retval);
    CheckException(__result);
    frameHint = _frameHint ? new nsIFrameD(_frameHint) : null;
    return new nsIAccessibleD(_retval);
  }

  /**
   * Invalidate the accessibility cache associated with aPresShell, for accessibles
   * that were generated for aContainerContent and it's subtree.
   * The container content node for the change is passed in, rather than the
   * changed presentation for the content node itself.
   * @param aPresShell         The presShell where changes occured
   * @param aChangeContent     The affected DOM content
   * @param aEvent             The event from nsIAccessibleEvent that
   *                           caused the change:
   *                           Must be one of:
   *                           EVENT_REORDER (change),
   *                           EVENT_SHOW (make visible or create) or 
   *                           EVENT_HIDE (destroy or hide)
   */
  /* [noscript] void invalidateSubtreeFor (in nsIPresShell aPresShell, in nsIContent aChangedContent, in PRUint32 aEvent); */
  void InvalidateSubtreeFor(nsIPresShellD aPresShell, nsIContentD aChangedContent, PRUint32 aEvent){
    nsresult __result = inner.InvalidateSubtreeFor(aPresShell ? cast(nsIPresShell)aPresShell : null, aChangedContent ? cast(nsIContent)aChangedContent : null, aEvent);
    CheckException(__result);
  }

private:
  nsIAccessibilityService inner;

}

