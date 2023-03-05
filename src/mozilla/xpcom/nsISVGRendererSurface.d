/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISVGRendererSurface.idl
 */

module mozilla.xpcom.nsISVGRendererSurface;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsISVGRendererSurface */
const char[] NS_ISVGRENDERERSURFACE_IID_STR = "0b3c88dc-2e37-4c20-902f-34f470adf711";

const nsIID NS_ISVGRENDERERSURFACE_IID= 
  {0x0b3c88dc, 0x2e37, 0x4c20, 
    [ 0x90, 0x2f, 0x34, 0xf4, 0x70, 0xad, 0xf7, 0x11 ]};

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
extern(Windows)
interface nsISVGRendererSurface : nsISupports {
  static const char[] IID_STR = NS_ISVGRENDERERSURFACE_IID_STR;
  static const nsIID IID = NS_ISVGRENDERERSURFACE_IID;

  /* readonly attribute unsigned long width; */
  nsresult GetWidth(PRUint32 *aWidth);

  /* readonly attribute unsigned long height; */
  nsresult GetHeight(PRUint32 *aHeight);

  /* void getData ([array, size_is (length)] out PRUint8 bits, out unsigned long length, out long stride); */
  nsresult GetData(PRUint8 **bits, PRUint32 *length, PRInt32 *stride);

  /* void lock (); */
  nsresult Lock();

  /* void unlock (); */
  nsresult Unlock();

}

