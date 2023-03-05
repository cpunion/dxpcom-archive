/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIContainerObserver.idl
 */

module mozilla.xpcom.imgIContainerObserver;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.gfxtypes;

public import mozilla.xpcom.imgIContainer; /* forward declaration */

public import mozilla.xpcom.gfxIImageFrame; /* forward declaration */


/* starting interface:    imgIContainerObserver */
const char[] IMGICONTAINEROBSERVER_IID_STR = "53102f15-0f53-4939-957e-aea353ad2700";

const nsIID IMGICONTAINEROBSERVER_IID= 
  {0x53102f15, 0x0f53, 0x4939, 
    [ 0x95, 0x7e, 0xae, 0xa3, 0x53, 0xad, 0x27, 0x00 ]};

/**
 * imgIContainerObserver interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.1
 */
extern(Windows)
interface imgIContainerObserver : nsISupports {
  static const char[] IID_STR = IMGICONTAINEROBSERVER_IID_STR;
  static const nsIID IID = IMGICONTAINEROBSERVER_IID;

  /* [noscript] void frameChanged (in imgIContainer aContainer, in gfxIImageFrame aFrame, in nsIntRect aDirtyRect); */
  nsresult FrameChanged(imgIContainer aContainer, gfxIImageFrame aFrame, nsIntRect * aDirtyRect);

}

