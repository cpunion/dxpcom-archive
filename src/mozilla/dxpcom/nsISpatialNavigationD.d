/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISpatialNavigation.idl
 */

module mozilla.dxpcom.nsISpatialNavigationD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISpatialNavigation;


public import mozilla.dxpcom.nsISpatialNavigationD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsISpatialNavigation */
class nsISpatialNavigationD : public nsISupportsD {

  static const nsIID IID = NS_ISPATIALNAVIGATION_IID;


  alias nsISpatialNavigation InnerType;

  this(nsISpatialNavigation intr){
    super(intr);
    this.inner = intr;
  }

  nsISpatialNavigation opCast() {
    return inner;
  }

  void opAssign(nsISpatialNavigation value) {
    inner = value;
  }

  /* void init (in nsIDOMWindow aWindow); */
  void Init(nsIDOMWindowD aWindow){
    nsresult __result = inner.Init(aWindow ? cast(nsIDOMWindow)aWindow : null);
    CheckException(__result);
  }

  /* void shutdown (); */
  void Shutdown(){
    nsresult __result = inner.Shutdown();
    CheckException(__result);
  }

  /* void up (); */
  void Up(){
    nsresult __result = inner.Up();
    CheckException(__result);
  }

  /* void down (); */
  void Down(){
    nsresult __result = inner.Down();
    CheckException(__result);
  }

  /* void left (); */
  void Left(){
    nsresult __result = inner.Left();
    CheckException(__result);
  }

  /* void right (); */
  void Right(){
    nsresult __result = inner.Right();
    CheckException(__result);
  }

  /* readonly attribute nsIDOMWindow attachedWindow; */
  nsIDOMWindowD  AttachedWindow(){
    nsIDOMWindow value;
    nsresult __result = inner.GetAttachedWindow(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

private:
  nsISpatialNavigation inner;

}

