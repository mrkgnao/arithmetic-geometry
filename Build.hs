{-# LANGUAGE TypeOperators #-}
#!/usr/bin/stack
-- TODO stack script options here

import Development.Shake
import Development.Shake.Command
import Development.Shake.FilePath
import Development.Shake.Util

cmd_ :: (String -> Action ()) :-> Action ()
cmd_ = cmd

opts =
  shakeOptions
  {shakeVerbosity = Loud, shakeProgress = progressDisplay 0.1 putStrLn}

main :: IO ()
main = shakeArgs opts rules

rules :: Rules ()
rules = do
  want ["main.pdf"]

  "clean" ~> do
    putLoud "Cleaning temporary files"

  "main.pdf" %> \out -> do
    -- cs <- getDirectoryFiles "" ["//*.c"]
    -- let os = ["_build" </> c -<.> "o" | c <- cs]
    -- need os
    -- cmd "gcc -o" [out] os
    putNormal "First pdflatex pass"
    tex <- getDirectoryFiles "" ["*.tex"]
    need tex
    cmd_ "pdflatex -synctex=1 -interaction=batchmode main.tex"
    cmd_ "pdflatex -synctex=1 -interaction=batchmode main.tex"

  -- "_build//*.o" %> \out -> do
  --   let c = dropDirectory1 (out -<.> "c")
  --   let m = out -<.> "m"
  --   () <- cmd "gcc -c" [c] "-o" [out] "-MMD -MF" [m]
  --   needMakefileDependencies m
