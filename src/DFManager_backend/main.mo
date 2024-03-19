actor FileManager {
  var files : [Text] = [];

  // Function to upload a file
  public func uploadFile(fileName : Text) : async () {
    files := files # [fileName];
  };

  // Function to list files
  public query func listFiles() : async [Text] {
    return files;
  };

  // Function to download a file
  public query func downloadFile(fileName : Text) : async ?Text {
    var foundFile : ?Text = null;
    for (file in files) {
      if (file == fileName) {
        foundFile = file;
        break;
      }
    }
    return foundFile;
  };
};
