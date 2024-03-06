return {
  'CRAG666/code_runner.nvim',
  opts = {
    mode = 'float',
    startinsert = true,
    float = {
      border = 'rounded',
      blend = 15,
    },
    filetype = {
      cpp = 'cd $dir && g++ -std=c++20 $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt',
    },
  },
}
