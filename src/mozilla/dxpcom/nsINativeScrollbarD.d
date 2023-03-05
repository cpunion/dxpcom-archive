/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINativeScrollbar.idl
 */

module mozilla.dxpcom.nsINativeScrollbarD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINativeScrollbar;


public import mozilla.dxpcom.nsINativeScrollbarD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINativeScrollbar */
class nsINativeScrollbarD : public nsISupportsD {

  static const nsIID IID = NS_INATIVESCROLLBAR_IID;


  alias nsINativeScrollbar InnerType;

  this(nsINativeScrollbar intr){
    super(intr);
    this.inner = intr;
  }

  nsINativeScrollbar opCast() {
    return inner;
  }

  void opAssign(nsINativeScrollbar value) {
    inner = value;
  }

  /* void setContent (in nsIContent content, in nsISupports scrollbar, in nsIScrollbarMediator mediator); */
  void SetContent(nsIContentD content, nsISupportsD scrollbar, nsIScrollbarMediatorD mediator){
    nsresult __result = inner.SetContent(content ? cast(nsIContent)content : null, scrollbar ? cast(nsISupports)scrollbar : null, mediator ? cast(nsIScrollbarMediator)mediator : null);
    CheckException(__result);
  }

  /* readonly attribute long narrowSize; */
  PRInt32 NarrowSize(){
    PRInt32 value;
    nsresult __result = inner.GetNarrowSize(&value);
    CheckException(__result);
    return value;
  }

  /* attribute unsigned long position; */
  PRUint32 Position(){
    PRUint32 value;
    nsresult __result = inner.GetPosition(&value);
    CheckException(__result);
    return value;
  }
  void Position(PRUint32 aPosition){
    nsresult __result = inner.SetPosition(aPosition);
    CheckException(__result);
  }

  /* attribute unsigned long maxRange; */
  PRUint32 MaxRange(){
    PRUint32 value;
    nsresult __result = inner.GetMaxRange(&value);
    CheckException(__result);
    return value;
  }
  void MaxRange(PRUint32 aMaxRange){
    nsresult __result = inner.SetMaxRange(aMaxRange);
    CheckException(__result);
  }

  /* attribute unsigned long lineIncrement; */
  PRUint32 LineIncrement(){
    PRUint32 value;
    nsresult __result = inner.GetLineIncrement(&value);
    CheckException(__result);
    return value;
  }
  void LineIncrement(PRUint32 aLineIncrement){
    nsresult __result = inner.SetLineIncrement(aLineIncrement);
    CheckException(__result);
  }

  /* attribute unsigned long viewSize; */
  PRUint32 ViewSize(){
    PRUint32 value;
    nsresult __result = inner.GetViewSize(&value);
    CheckException(__result);
    return value;
  }
  void ViewSize(PRUint32 aViewSize){
    nsresult __result = inner.SetViewSize(aViewSize);
    CheckException(__result);
  }

private:
  nsINativeScrollbar inner;

}

