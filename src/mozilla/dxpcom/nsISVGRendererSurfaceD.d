/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererSurface.idl
 */

module mozilla.dxpcom.nsISVGRendererSurfaceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISVGRendererSurface;


public import mozilla.dxpcom.nsISVGRendererSurfaceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISVGRendererSurface */
/**
 * \addtogroup rendering_backend_interfaces Rendering Backend Interfaces
 * @{
 */
/**
 * One of a number of interfaces (all starting with nsISVGRenderer*)
 * to be implemented by an SVG rendering engine. See nsISVGRenderer
 * for more details.
 *
 * This interface abstracts a rendering engine-native surface object.
 */
class nsISVGRendererSurfaceD : public nsISupportsD {

  static const nsIID IID = NS_ISVGRENDERERSURFACE_IID;


  alias nsISVGRendererSurface InnerType;

  this(nsISVGRendererSurface intr){
    super(intr);
    this.inner = intr;
  }

  nsISVGRendererSurface opCast() {
    return inner;
  }

  void opAssign(nsISVGRendererSurface value) {
    inner = value;
  }

  /* readonly attribute unsigned long width; */
  PRUint32 Width(){
    PRUint32 value;
    nsresult __result = inner.GetWidth(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long height; */
  PRUint32 Height(){
    PRUint32 value;
    nsresult __result = inner.GetHeight(&value);
    CheckException(__result);
    return value;
  }

  /* void getData ([array, size_is (length)] out PRUint8 bits, out unsigned long length, out long stride); */
  void GetData(out PRUint8 *bits, out PRUint32 length, out PRInt32 stride){
    nsresult __result = inner.GetData(&bits, &length, &stride);
    CheckException(__result);
  }

  /* void lock (); */
  void Lock(){
    nsresult __result = inner.Lock();
    CheckException(__result);
  }

  /* void unlock (); */
  void Unlock(){
    nsresult __result = inner.Unlock();
    CheckException(__result);
  }

private:
  nsISVGRendererSurface inner;

}

