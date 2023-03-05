/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileSpec.idl
 */

module mozilla.dxpcom.nsIFileSpecD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileSpec;


public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileURL;

public import mozilla.dxpcom.nsIFileURLD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIFileSpec */
class nsIFileSpecD : public nsISupportsD {

  static const nsIID IID = NS_IFILESPEC_IID;


  alias nsIFileSpec InnerType;

  this(nsIFileSpec intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileSpec opCast() {
    return inner;
  }

  void opAssign(nsIFileSpec value) {
    inner = value;
  }

  /* void fromFileSpec ([const] in nsIFileSpec original); */
  void FromFileSpec(nsIFileSpecD original){
    nsresult __result = inner.FromFileSpec(original ? cast(nsIFileSpec)original : null);
    CheckException(__result);
  }

  /* attribute string URLString; */
  char* URLString(){
    char* value;
    nsresult __result = inner.GetURLString(&value);
    CheckException(__result);
    return value;
  }
  void URLString(char* aURLString){
    nsresult __result = inner.SetURLString(aURLString);
    CheckException(__result);
  }

  /* attribute string unixStyleFilePath; */
  char* UnixStyleFilePath(){
    char* value;
    nsresult __result = inner.GetUnixStyleFilePath(&value);
    CheckException(__result);
    return value;
  }
  void UnixStyleFilePath(char* aUnixStyleFilePath){
    nsresult __result = inner.SetUnixStyleFilePath(aUnixStyleFilePath);
    CheckException(__result);
  }

  /* attribute string persistentDescriptorString; */
  char* PersistentDescriptorString(){
    char* value;
    nsresult __result = inner.GetPersistentDescriptorString(&value);
    CheckException(__result);
    return value;
  }
  void PersistentDescriptorString(char* aPersistentDescriptorString){
    nsresult __result = inner.SetPersistentDescriptorString(aPersistentDescriptorString);
    CheckException(__result);
  }

  /* attribute string nativePath; */
  char* NativePath(){
    char* value;
    nsresult __result = inner.GetNativePath(&value);
    CheckException(__result);
    return value;
  }
  void NativePath(char* aNativePath){
    nsresult __result = inner.SetNativePath(aNativePath);
    CheckException(__result);
  }

  /* readonly attribute string NSPRPath; */
  char* NSPRPath(){
    char* value;
    nsresult __result = inner.GetNSPRPath(&value);
    CheckException(__result);
    return value;
  }

  /* void error (); */
  void Error(){
    nsresult __result = inner.Error();
    CheckException(__result);
  }

  /* boolean isValid (); */
  PRBool IsValid(){
    PRBool _retval;
    nsresult __result = inner.IsValid(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean failed (); */
  PRBool Failed(){
    PRBool _retval;
    nsresult __result = inner.Failed(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute string leafName; */
  char* LeafName(){
    char* value;
    nsresult __result = inner.GetLeafName(&value);
    CheckException(__result);
    return value;
  }
  void LeafName(char* aLeafName){
    nsresult __result = inner.SetLeafName(aLeafName);
    CheckException(__result);
  }

  /* readonly attribute nsIFileSpec parent; */
  nsIFileSpecD  Parent(){
    nsIFileSpec value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }

  /* readonly attribute nsIInputStream inputStream; */
  nsIInputStreamD  InputStream(){
    nsIInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }

  /* readonly attribute nsIOutputStream outputStream; */
  nsIOutputStreamD  OutputStream(){
    nsIOutputStream value;
    nsresult __result = inner.GetOutputStream(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }

  /* boolean isChildOf (in nsIFileSpec possibleParent); */
  PRBool IsChildOf(nsIFileSpecD possibleParent){
    PRBool _retval;
    nsresult __result = inner.IsChildOf(possibleParent ? cast(nsIFileSpec)possibleParent : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] readonly attribute nsFileSpec fileSpec; */
  nsFileSpec FileSpec(){
    nsFileSpec value;
    nsresult __result = inner.GetFileSpec(&value);
    CheckException(__result);
    return value;
  }

  /* [noscript] void setFromFileSpec ([const] in nsFileSpecRef spec); */
  void SetFromFileSpec(nsFileSpec * spec){
    nsresult __result = inner.SetFromFileSpec(spec);
    CheckException(__result);
  }

  /* attribute string fileContents; */
  char* FileContents(){
    char* value;
    nsresult __result = inner.GetFileContents(&value);
    CheckException(__result);
    return value;
  }
  void FileContents(char* aFileContents){
    nsresult __result = inner.SetFileContents(aFileContents);
    CheckException(__result);
  }

  /* void makeUnique (); */
  void MakeUnique(){
    nsresult __result = inner.MakeUnique();
    CheckException(__result);
  }

  /* void makeUniqueWithSuggestedName (in string suggestedName); */
  void MakeUniqueWithSuggestedName(char*suggestedName){
    nsresult __result = inner.MakeUniqueWithSuggestedName(suggestedName);
    CheckException(__result);
  }

  /* void makeUniqueDir (); */
  void MakeUniqueDir(){
    nsresult __result = inner.MakeUniqueDir();
    CheckException(__result);
  }

  /* void makeUniqueDirWithSuggestedName (in string suggestedName); */
  void MakeUniqueDirWithSuggestedName(char*suggestedName){
    nsresult __result = inner.MakeUniqueDirWithSuggestedName(suggestedName);
    CheckException(__result);
  }

  /* readonly attribute unsigned long modDate; */
  PRUint32 ModDate(){
    PRUint32 value;
    nsresult __result = inner.GetModDate(&value);
    CheckException(__result);
    return value;
  }

  /* boolean modDateChanged (in unsigned long oldStamp); */
  PRBool ModDateChanged(PRUint32 oldStamp){
    PRBool _retval;
    nsresult __result = inner.ModDateChanged(oldStamp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isDirectory (); */
  PRBool IsDirectory(){
    PRBool _retval;
    nsresult __result = inner.IsDirectory(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isFile (); */
  PRBool IsFile(){
    PRBool _retval;
    nsresult __result = inner.IsFile(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean exists (); */
  PRBool Exists(){
    PRBool _retval;
    nsresult __result = inner.Exists(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean isHidden (); */
  PRBool IsHidden(){
    PRBool _retval;
    nsresult __result = inner.IsHidden(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean equals (in nsIFileSpec spec); */
  PRBool Equals(nsIFileSpecD spec){
    PRBool _retval;
    nsresult __result = inner.Equals(spec ? cast(nsIFileSpec)spec : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute unsigned long fileSize; */
  PRUint32 FileSize(){
    PRUint32 value;
    nsresult __result = inner.GetFileSize(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long long diskSpaceAvailable; */
  PRInt64 DiskSpaceAvailable(){
    PRInt64 value;
    nsresult __result = inner.GetDiskSpaceAvailable(&value);
    CheckException(__result);
    return value;
  }

  /* void appendRelativeUnixPath (in string relativePath); */
  void AppendRelativeUnixPath(char*relativePath){
    nsresult __result = inner.AppendRelativeUnixPath(relativePath);
    CheckException(__result);
  }

  /* void createDir (); */
  void CreateDir(){
    nsresult __result = inner.CreateDir();
    CheckException(__result);
  }

  /* void touch (); */
  void Touch(){
    nsresult __result = inner.Touch();
    CheckException(__result);
  }

  /* boolean isSymlink (); */
  PRBool IsSymlink(){
    PRBool _retval;
    nsresult __result = inner.IsSymlink(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void resolveSymlink (); */
  void ResolveSymlink(){
    nsresult __result = inner.ResolveSymlink();
    CheckException(__result);
  }

  /* void delete (in boolean recursive); */
  void Delete(PRBool recursive){
    nsresult __result = inner.Delete(recursive);
    CheckException(__result);
  }

  /* void truncate (in long aNewLength); */
  void Truncate(PRInt32 aNewLength){
    nsresult __result = inner.Truncate(aNewLength);
    CheckException(__result);
  }

  /* void rename ([const] in string newLeafName); */
  void Rename(char*newLeafName){
    nsresult __result = inner.Rename(newLeafName);
    CheckException(__result);
  }

  /* void copyToDir ([const] in nsIFileSpec newParentDir); */
  void CopyToDir(nsIFileSpecD newParentDir){
    nsresult __result = inner.CopyToDir(newParentDir ? cast(nsIFileSpec)newParentDir : null);
    CheckException(__result);
  }

  /* void moveToDir ([const] in nsIFileSpec newParentDir); */
  void MoveToDir(nsIFileSpecD newParentDir){
    nsresult __result = inner.MoveToDir(newParentDir ? cast(nsIFileSpec)newParentDir : null);
    CheckException(__result);
  }

  /* void execute ([const] in string args); */
  void Execute(char*args){
    nsresult __result = inner.Execute(args);
    CheckException(__result);
  }

  /* void openStreamForReading (); */
  void OpenStreamForReading(){
    nsresult __result = inner.OpenStreamForReading();
    CheckException(__result);
  }

  /* void openStreamForWriting (); */
  void OpenStreamForWriting(){
    nsresult __result = inner.OpenStreamForWriting();
    CheckException(__result);
  }

  /* void openStreamForReadingAndWriting (); */
  void OpenStreamForReadingAndWriting(){
    nsresult __result = inner.OpenStreamForReadingAndWriting();
    CheckException(__result);
  }

  /* void closeStream (); */
  void CloseStream(){
    nsresult __result = inner.CloseStream();
    CheckException(__result);
  }

  /* boolean isStreamOpen (); */
  PRBool IsStreamOpen(){
    PRBool _retval;
    nsresult __result = inner.IsStreamOpen(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean eof (); */
  PRBool Eof(){
    PRBool _retval;
    nsresult __result = inner.Eof(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long read (inout string buffer, in long requestedCount); */
  PRInt32 Read(out char*buffer, PRInt32 requestedCount){
    PRInt32 _retval;
    nsresult __result = inner.Read(&buffer, requestedCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void readLine (inout string line, in long bufferSize, out boolean wasTruncated); */
  void ReadLine(out char*line, PRInt32 bufferSize, out PRBool wasTruncated){
    nsresult __result = inner.ReadLine(&line, bufferSize, &wasTruncated);
    CheckException(__result);
  }

  /** Check eof() before each call.
     * CAUTION: false result only indicates line was truncated
     * to fit buffer, or an error occurred (OTHER THAN eof).
     */
  /* long write (in string data, in long requestedCount); */
  PRInt32 Write(char*data, PRInt32 requestedCount){
    PRInt32 _retval;
    nsresult __result = inner.Write(data, requestedCount, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

  /* void seek (in long offset); */
  void Seek(PRInt32 offset){
    nsresult __result = inner.Seek(offset);
    CheckException(__result);
  }

  /* long tell (); */
  PRInt32 Tell(){
    PRInt32 _retval;
    nsresult __result = inner.Tell(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void endLine (); */
  void EndLine(){
    nsresult __result = inner.EndLine();
    CheckException(__result);
  }

  /* attribute AString unicodePath; */
  wchar[] UnicodePath(){
    scope auto value = new AString();
    nsresult __result = inner.GetUnicodePath(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void UnicodePath(wchar[] aUnicodePath){
    scope auto value = new AString(aUnicodePath);
    nsresult __result = inner.SetUnicodePath(cast(nsAString*)value);
    CheckException(__result);
  }

private:
  nsIFileSpec inner;

}


/* starting wrapper class:    nsIDirectoryIterator */
class nsIDirectoryIteratorD : public nsISupportsD {

  static const nsIID IID = NS_IDIRECTORYITERATOR_IID;


  alias nsIDirectoryIterator InnerType;

  this(nsIDirectoryIterator intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirectoryIterator opCast() {
    return inner;
  }

  void opAssign(nsIDirectoryIterator value) {
    inner = value;
  }

  /* void init (in nsIFileSpec parent, in boolean resolveSymlink); */
  void Init(nsIFileSpecD parent, PRBool resolveSymlink){
    nsresult __result = inner.Init(parent ? cast(nsIFileSpec)parent : null, resolveSymlink);
    CheckException(__result);
  }

  /* boolean exists (); */
  PRBool Exists(){
    PRBool _retval;
    nsresult __result = inner.Exists(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void next (); */
  void Next(){
    nsresult __result = inner.Next();
    CheckException(__result);
  }

  /* readonly attribute nsIFileSpec currentSpec; */
  nsIFileSpecD  CurrentSpec(){
    nsIFileSpec value;
    nsresult __result = inner.GetCurrentSpec(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }

private:
  nsIDirectoryIterator inner;

}

