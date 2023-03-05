/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEntityConverter.idl
 */

module mozilla.xpcom.nsIEntityConverter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEntityConverter */
const char[] NS_IENTITYCONVERTER_IID_STR = "d14c7111-55e0-11d3-91d9-00105aa3f7dc";

const nsIID NS_IENTITYCONVERTER_IID= 
  {0xd14c7111, 0x55e0, 0x11d3, 
    [ 0x91, 0xd9, 0x00, 0x10, 0x5a, 0xa3, 0xf7, 0xdc ]};

extern(Windows)
interface nsIEntityConverter : nsISupports {
  static const char[] IID_STR = NS_IENTITYCONVERTER_IID_STR;
  static const nsIID IID = NS_IENTITYCONVERTER_IID;

  enum { entityNone = 0U };

  enum { html40Latin1 = 1U };

  enum { html40Symbols = 2U };

  enum { html40Special = 4U };

  enum { transliterate = 8U };

  enum { mathml20 = 16U };

  enum { html32 = 1U };

  enum { html40 = 7U };

  enum { entityW3C = 23U };

  /* string ConvertUTF32ToEntity (in unsigned long character, in unsigned long entityVersion); */
  nsresult ConvertUTF32ToEntity(PRUint32 character, PRUint32 entityVersion, char **_retval);

  /* string ConvertToEntity (in wchar character, in unsigned long entityVersion); */
  nsresult ConvertToEntity(PRUnichar character, PRUint32 entityVersion, char **_retval);

  /* wstring ConvertToEntities (in wstring inString, in unsigned long entityVersion); */
  nsresult ConvertToEntities(PRUnichar *inString, PRUint32 entityVersion, PRUnichar **_retval);

}

