fs = require \fs

module.exports = (spec, files)-->
  for file in files
    spec.task file .pipe fs.create-write-stream file
