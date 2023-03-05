/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFrameLoader.idl
 */

module mozilla.dxpcom.nsIFrameLoaderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFrameLoader;


public import mozilla.dxpcom.nsIFrameLoaderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDocShell;

public import mozilla.dxpcom.nsIDocShellD;


/* starting wrapper class:    nsIFrameLoader */
class nsIFrameLoaderD : public nsISupportsD {

  static const nsIID IID = NS_IFRAMELOADER_IID;


  alias nsIFrameLoader InnerType;

  this(nsIFrameLoader intr){
    super(intr);
    this.inner = intr;
  }

  nsIFrameLoader opCast() {
    return inner;
  }

  void opAssign(nsIFrameLoader value) {
    inner = value;
  }

  /**
   * Get the docshell from the frame loader.
   */
  /* readonly attribute nsIDocShell docShell; */
  nsIDocShellD  DocShell(){
    nsIDocShell value;
    nsresult __result = inner.GetDocShell(&value);
    CheckException(__result);
    return new nsIDocShellD(value);
  }

  /**
   * Start loading the frame. This method figures out what to load
   * from the owner content in the frame loader.
   */
  /* void loadFrame (); */
  void LoadFrame(){
    nsresult __result = inner.LoadFrame();
    CheckException(__result);
  }

  /**
   * Destroy the frame loader and everything inside it. This will
   * clear the weak owner content reference.
   */
  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /**
   * Find out whether the loader's frame is at too great a depth in
   * the frame tree.  This can be used to decide what operations may
   * or may not be allowed on the loader's docshell.
   */
  /* readonly attribute boolean depthTooGreat; */
  PRBool DepthTooGreat(){
    PRBool value;
    nsresult __result = inner.GetDepthTooGreat(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIFrameLoader inner;

}


/* starting wrapper class:    nsIFrameLoaderOwner */
class nsIFrameLoaderOwnerD : public nsISupportsD {

  static const nsIID IID = NS_IFRAMELOADEROWNER_IID;


  alias nsIFrameLoaderOwner InnerType;

  this(nsIFrameLoaderOwner intr){
    super(intr);
    this.inner = intr;
  }

  nsIFrameLoaderOwner opCast() {
    return inner;
  }

  void opAssign(nsIFrameLoaderOwner value) {
    inner = value;
  }

  /* readonly attribute nsIFrameLoader frameLoader; */
  nsIFrameLoaderD  FrameLoader(){
    nsIFrameLoader value;
    nsresult __result = inner.GetFrameLoader(&value);
    CheckException(__result);
    return new nsIFrameLoaderD(value);
  }

private:
  nsIFrameLoaderOwner inner;

}

