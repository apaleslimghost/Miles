# miles

run functions for files and stream them wherever

`npm install miles`

## what is

miles is a function `(Filepath → Readable) → [Filepath] → ()`. it does what you might think.

## yeah but what else

ok so there's `miles.miles` which is `(Filepath → Writable) → (Filepath → Readable) → [Filepath] → ()`. it does what you might think. also `miles = miles.miles atomic-write-stream`.

## licence

MIT. &copy; MMXIV mb
