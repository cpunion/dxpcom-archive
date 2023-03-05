/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFontPackageHandler.idl
 */

module mozilla.xpcom.nsIFontPackageHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIFontPackageHandler */
const char[] NS_IFONTPACKAGEHANDLER_IID_STR = "6712fdd1-f978-11d4-a144-005004832142";

const nsIID NS_IFONTPACKAGEHANDLER_IID= 
  {0x6712fdd1, 0xf978, 0x11d4, 
    [ 0xa1, 0x44, 0x00, 0x50, 0x04, 0x83, 0x21, 0x42 ]};

extern(Windows)
interface nsIFontPackageHandler : nsISupports {
  static const char[] IID_STR = NS_IFONTPACKAGEHANDLER_IID_STR;
  static const nsIID IID = NS_IFONTPACKAGEHANDLER_IID;

  /**
    * Set the font package handler for Gecko
    * @param aFontPackID a font package ID.
    * The id have the following naming convenation 
    *  name_space:name
    * we currently define one name space
    *    lang - a font package for a particular language group
    * and udnder the lang name space, we use the language code to identify
    * the package, below are the defined packages
    *   ja - Japanese font package ("lang:ja")
    *   ko - Korean font package ("lang:ko")
    *   zh-TW - Traditional Chinese font package ("lang:zh-TW")
    *   zh-CN - Simplified Chinese font package ("lang:zh-CN")
    * In the future, we may want to add
    *    ar - Arabic font packges ("lang:ar")
    *    he - Hebrew font packages ("lang:he")
    *    th - Thai font package ("lang:th")
    * other name space are reserved for now.
    * After the installation, the font package handler should call
    * nsIFontPackageService::FontPackageHandled and pass back the aFontPackID
    * 
    * This interface sould be implemented by the embedding application
    * In the other hand the nsIFontPackageProxy is internal to Gecko
    */
  /* void NeedFontPackage (in string aFontPackID); */
  nsresult NeedFontPackage(char *aFontPackID);

}

