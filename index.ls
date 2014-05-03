fs = require \fs

miles = (output, spec, files)-->
  for file in files
    spec.task file .pipe output file

module.exports = miles fs.create-write-stream
module.exports.miles = miles