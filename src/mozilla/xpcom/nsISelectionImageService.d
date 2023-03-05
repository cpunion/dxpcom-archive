/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionImageService.idl
 */

module mozilla.xpcom.nsISelectionImageService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.imgIContainer;

/* starting interface:    nsISelectionImageService */
const char[] NS_ISELECTIONIMAGESERVICE_IID_STR = "f6f68e3c-f078-4235-bf71-53d180c37d26";

const nsIID NS_ISELECTIONIMAGESERVICE_IID= 
  {0xf6f68e3c, 0xf078, 0x4235, 
    [ 0xbf, 0x71, 0x53, 0xd1, 0x80, 0xc3, 0x7d, 0x26 ]};

extern(Windows)
interface nsISelectionImageService : nsISupports {
  static const char[] IID_STR = NS_ISELECTIONIMAGESERVICE_IID_STR;
  static const nsIID IID = NS_ISELECTIONIMAGESERVICE_IID;

  /**
	* the current image is marked as invalid
	*/
  /* void reset (); */
  nsresult Reset();

  /**
	* retrieve the image for alpha blending
	*/
  /* void getImage (in short selectionValue, out imgIContainer container); */
  nsresult GetImage(PRInt16 selectionValue, imgIContainer * *container);

}

