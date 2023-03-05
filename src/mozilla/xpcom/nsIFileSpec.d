/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileSpec.idl
 */

module mozilla.xpcom.nsIFileSpec;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileURL; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIFileSpec */
const char[] NS_IFILESPEC_IID_STR = "37ef2e71-edef-46c7-acd9-f0b6e0b15083";

const nsIID NS_IFILESPEC_IID= 
  {0x37ef2e71, 0xedef, 0x46c7, 
    [ 0xac, 0xd9, 0xf0, 0xb6, 0xe0, 0xb1, 0x50, 0x83 ]};

extern(Windows)
interface nsIFileSpec : nsISupports {
  static const char[] IID_STR = NS_IFILESPEC_IID_STR;
  static const nsIID IID = NS_IFILESPEC_IID;

  /* void fromFileSpec ([const] in nsIFileSpec original); */
  nsresult FromFileSpec(nsIFileSpec original);

  /* attribute string URLString; */
  nsresult GetURLString(char * *aURLString);
  nsresult SetURLString(char * aURLString);

  /* attribute string unixStyleFilePath; */
  nsresult GetUnixStyleFilePath(char * *aUnixStyleFilePath);
  nsresult SetUnixStyleFilePath(char * aUnixStyleFilePath);

  /* attribute string persistentDescriptorString; */
  nsresult GetPersistentDescriptorString(char * *aPersistentDescriptorString);
  nsresult SetPersistentDescriptorString(char * aPersistentDescriptorString);

  /* attribute string nativePath; */
  nsresult GetNativePath(char * *aNativePath);
  nsresult SetNativePath(char * aNativePath);

  /* readonly attribute string NSPRPath; */
  nsresult GetNSPRPath(char * *aNSPRPath);

  /* void error (); */
  nsresult Error();

  /* boolean isValid (); */
  nsresult IsValid(PRBool *_retval);

  /* boolean failed (); */
  nsresult Failed(PRBool *_retval);

  /* attribute string leafName; */
  nsresult GetLeafName(char * *aLeafName);
  nsresult SetLeafName(char * aLeafName);

  /* readonly attribute nsIFileSpec parent; */
  nsresult GetParent(nsIFileSpec  *aParent);

  /* readonly attribute nsIInputStream inputStream; */
  nsresult GetInputStream(nsIInputStream  *aInputStream);

  /* readonly attribute nsIOutputStream outputStream; */
  nsresult GetOutputStream(nsIOutputStream  *aOutputStream);

  /* boolean isChildOf (in nsIFileSpec possibleParent); */
  nsresult IsChildOf(nsIFileSpec possibleParent, PRBool *_retval);

  /* [noscript] readonly attribute nsFileSpec fileSpec; */
  nsresult GetFileSpec(nsFileSpec *aFileSpec);

  /* [noscript] void setFromFileSpec ([const] in nsFileSpecRef spec); */
  nsresult SetFromFileSpec(nsFileSpec * spec);

  /* attribute string fileContents; */
  nsresult GetFileContents(char * *aFileContents);
  nsresult SetFileContents(char * aFileContents);

  /* void makeUnique (); */
  nsresult MakeUnique();

  /* void makeUniqueWithSuggestedName (in string suggestedName); */
  nsresult MakeUniqueWithSuggestedName(char *suggestedName);

  /* void makeUniqueDir (); */
  nsresult MakeUniqueDir();

  /* void makeUniqueDirWithSuggestedName (in string suggestedName); */
  nsresult MakeUniqueDirWithSuggestedName(char *suggestedName);

  /* readonly attribute unsigned long modDate; */
  nsresult GetModDate(PRUint32 *aModDate);

  /* boolean modDateChanged (in unsigned long oldStamp); */
  nsresult ModDateChanged(PRUint32 oldStamp, PRBool *_retval);

  /* boolean isDirectory (); */
  nsresult IsDirectory(PRBool *_retval);

  /* boolean isFile (); */
  nsresult IsFile(PRBool *_retval);

  /* boolean exists (); */
  nsresult Exists(PRBool *_retval);

  /* boolean isHidden (); */
  nsresult IsHidden(PRBool *_retval);

  /* boolean equals (in nsIFileSpec spec); */
  nsresult Equals(nsIFileSpec spec, PRBool *_retval);

  /* readonly attribute unsigned long fileSize; */
  nsresult GetFileSize(PRUint32 *aFileSize);

  /* readonly attribute long long diskSpaceAvailable; */
  nsresult GetDiskSpaceAvailable(PRInt64 *aDiskSpaceAvailable);

  /* void appendRelativeUnixPath (in string relativePath); */
  nsresult AppendRelativeUnixPath(char *relativePath);

  /* void createDir (); */
  nsresult CreateDir();

  /* void touch (); */
  nsresult Touch();

  /* boolean isSymlink (); */
  nsresult IsSymlink(PRBool *_retval);

  /* void resolveSymlink (); */
  nsresult ResolveSymlink();

  /* void delete (in boolean recursive); */
  nsresult Delete(PRBool recursive);

  /* void truncate (in long aNewLength); */
  nsresult Truncate(PRInt32 aNewLength);

  /* void rename ([const] in string newLeafName); */
  nsresult Rename(char *newLeafName);

  /* void copyToDir ([const] in nsIFileSpec newParentDir); */
  nsresult CopyToDir(nsIFileSpec newParentDir);

  /* void moveToDir ([const] in nsIFileSpec newParentDir); */
  nsresult MoveToDir(nsIFileSpec newParentDir);

  /* void execute ([const] in string args); */
  nsresult Execute(char *args);

  /* void openStreamForReading (); */
  nsresult OpenStreamForReading();

  /* void openStreamForWriting (); */
  nsresult OpenStreamForWriting();

  /* void openStreamForReadingAndWriting (); */
  nsresult OpenStreamForReadingAndWriting();

  /* void closeStream (); */
  nsresult CloseStream();

  /* boolean isStreamOpen (); */
  nsresult IsStreamOpen(PRBool *_retval);

  /* boolean eof (); */
  nsresult Eof(PRBool *_retval);

  /* long read (inout string buffer, in long requestedCount); */
  nsresult Read(char **buffer, PRInt32 requestedCount, PRInt32 *_retval);

  /* void readLine (inout string line, in long bufferSize, out boolean wasTruncated); */
  nsresult ReadLine(char **line, PRInt32 bufferSize, PRBool *wasTruncated);

  /** Check eof() before each call.
     * CAUTION: false result only indicates line was truncated
     * to fit buffer, or an error occurred (OTHER THAN eof).
     */
  /* long write (in string data, in long requestedCount); */
  nsresult Write(char *data, PRInt32 requestedCount, PRInt32 *_retval);

  /* void flush (); */
  nsresult Flush();

  /* void seek (in long offset); */
  nsresult Seek(PRInt32 offset);

  /* long tell (); */
  nsresult Tell(PRInt32 *_retval);

  /* void endLine (); */
  nsresult EndLine();

  /* attribute AString unicodePath; */
  nsresult GetUnicodePath(nsAString * aUnicodePath);
  nsresult SetUnicodePath(nsAString * aUnicodePath);

}


/* starting interface:    nsIDirectoryIterator */
const char[] NS_IDIRECTORYITERATOR_IID_STR = "d8c0a083-0868-11d3-915f-d9d889d48e3c";

const nsIID NS_IDIRECTORYITERATOR_IID= 
  {0xd8c0a083, 0x0868, 0x11d3, 
    [ 0x91, 0x5f, 0xd9, 0xd8, 0x89, 0xd4, 0x8e, 0x3c ]};

extern(Windows)
interface nsIDirectoryIterator : nsISupports {
  static const char[] IID_STR = NS_IDIRECTORYITERATOR_IID_STR;
  static const nsIID IID = NS_IDIRECTORYITERATOR_IID;

  /* void init (in nsIFileSpec parent, in boolean resolveSymlink); */
  nsresult Init(nsIFileSpec parent, PRBool resolveSymlink);

  /* boolean exists (); */
  nsresult Exists(PRBool *_retval);

  /* void next (); */
  nsresult Next();

  /* readonly attribute nsIFileSpec currentSpec; */
  nsresult GetCurrentSpec(nsIFileSpec  *aCurrentSpec);

}

