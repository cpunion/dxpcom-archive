/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM inIDOMView.idl
 */

module mozilla.dxpcom.inIDOMViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.inIDOMView;


public import mozilla.dxpcom.inIDOMViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    inIDOMView */
class inIDOMViewD : public nsISupportsD {

  static const nsIID IID = INIDOMVIEW_IID;


  alias inIDOMView InnerType;

  this(inIDOMView intr){
    super(intr);
    this.inner = intr;
  }

  inIDOMView opCast() {
    return inner;
  }

  void opAssign(inIDOMView value) {
    inner = value;
  }

  /* attribute nsIDOMNode rootNode; */
  nsIDOMNodeD  RootNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetRootNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }
  void RootNode(nsIDOMNodeD  aRootNode){
    nsIDOMNode value;
    nsresult __result = inner.SetRootNode(value);
    CheckException(__result);
  }

  /* attribute boolean showAnonymousContent; */
  PRBool ShowAnonymousContent(){
    PRBool value;
    nsresult __result = inner.GetShowAnonymousContent(&value);
    CheckException(__result);
    return value;
  }
  void ShowAnonymousContent(PRBool aShowAnonymousContent){
    nsresult __result = inner.SetShowAnonymousContent(aShowAnonymousContent);
    CheckException(__result);
  }

  /* attribute boolean showSubDocuments; */
  PRBool ShowSubDocuments(){
    PRBool value;
    nsresult __result = inner.GetShowSubDocuments(&value);
    CheckException(__result);
    return value;
  }
  void ShowSubDocuments(PRBool aShowSubDocuments){
    nsresult __result = inner.SetShowSubDocuments(aShowSubDocuments);
    CheckException(__result);
  }

  /* attribute boolean showWhitespaceNodes; */
  PRBool ShowWhitespaceNodes(){
    PRBool value;
    nsresult __result = inner.GetShowWhitespaceNodes(&value);
    CheckException(__result);
    return value;
  }
  void ShowWhitespaceNodes(PRBool aShowWhitespaceNodes){
    nsresult __result = inner.SetShowWhitespaceNodes(aShowWhitespaceNodes);
    CheckException(__result);
  }

  /* attribute unsigned long whatToShow; */
  PRUint32 WhatToShow(){
    PRUint32 value;
    nsresult __result = inner.GetWhatToShow(&value);
    CheckException(__result);
    return value;
  }
  void WhatToShow(PRUint32 aWhatToShow){
    nsresult __result = inner.SetWhatToShow(aWhatToShow);
    CheckException(__result);
  }

  /* nsIDOMNode getNodeFromRowIndex (in long rowIndex); */
  nsIDOMNodeD  GetNodeFromRowIndex(PRInt32 rowIndex){
    nsIDOMNode _retval;
    nsresult __result = inner.GetNodeFromRowIndex(rowIndex, &_retval);
    CheckException(__result);
    return new nsIDOMNodeD(_retval);
  }

  /* long getRowIndexFromNode (in nsIDOMNode node); */
  PRInt32 GetRowIndexFromNode(nsIDOMNodeD node){
    PRInt32 _retval;
    nsresult __result = inner.GetRowIndexFromNode(node ? cast(nsIDOMNode)node : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void rebuild (); */
  void Rebuild(){
    nsresult __result = inner.Rebuild();
    CheckException(__result);
  }

private:
  inIDOMView inner;

}

