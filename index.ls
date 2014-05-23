require! \atomic-write-stream

miles = (output, spec, files)-->
  for file in files
    spec file .pipe output file

module.exports = miles atomic-write-stream
module.exports.miles = miles
