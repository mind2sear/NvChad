-------------------按键映射---------------------
local map = require("core.utils").map

-- Q退出
map('n', 'Q', ':q<CR>')

-- 快速移动光标，上下
map ('n','J','5j')
map ('n','K','5k')

-- 快速分屏
map('n', 'sl', ':set splitright<CR>:vsplit<CR>')
map('n', 'sh', ':set nosplitright<CR>:vsplit<CR>')
map('n', 'sj', ':set splitright<CR>:split<CR>')
map('n', 'sk', ':set nosplitright<CR>:split<CR>')

-- 在分屏间移动
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- 改变窗口大小
map('n', '<up>', ':res +5<CR>')
map('n', '<down>', ':res -5<CR>')
map('n', '<left>', ':vertical resize-5<CR>')
map('n', '<right>', ':vertical resize+5<CR>')

-- 历史修改记录
map('n', '<A-u>', ':UndotreeToggle<CR>')

-- 文件树
map('n', '<A-t>', ':NvimTreeToggle<CR>')

-- 格式化
map('n', '<leader>fm', ':Autoformat<CR>')

-- 保存时用suda写入
map('n', '<A-s>', ':SudaWrite<CR>')

-- Y复制到系统剪切板
map('v', 'Y', [["+y]])

-- 一键编译/运行/编译运行
map('n', '<F8>', ':w<CR> | :AsyncTask file-build<CR>')
map('n', '<F9>', ':w<CR> | :AsyncTask file-run<CR>')
map('n', '<F10>', ':w<CR> | :AsyncTask file-build<CR> | :AsyncTask file-run<CR>')

-- 开启/关闭函数列表
map('n', '<A-f>', ':Vista<CR>')

-- 创建表格
map('n', '<leader>tm', ':TableModeToggle<CR>')

-- markdown预览
map('n', '<A-r>', ':MarkdownPreviewToggle<CR>')

-- Y复制当前位置到结尾
map('n', 'Y', 'y$')

-- 在V模式下复制到系统剪贴板
map('v', 'Y', '"+y')

-- 普通模式下快速缩进
map('n', '<', '<<')
map('n', '>', '>>')

-- 删除成对符号如(),[],<>及其中间的内容
map('n', 'dy', 'd%')

-- 查找连续4个空格转为tab
map ('n', '<leader>tt', ':%s/    /\t/g')
map ('v', '<leader>tt', ':s/    /\t/g')

-- 向前向后快跳5个词
map('n','W', '5w')
map('n','B', '5b')

-- 查找并替换,全局
map('n', '<leader>s', ':%s//g<left><left>')

--delete blank line
map("n", '<leader>ds', ':g/^s*$/d<CR>')
-------------------按键映射---------------------

-------------------杂项配置---------------------
-- 设置屏幕中间竖条
vim.o.colorcolumn = "100"

-- 禁用多光标警告
vim.g.VM_show_warnings = 0

-- 设置asynctasks窗口排版
vim.g.asynctasks_term_pos = 'bottom'
vim.g.asynctasks_term_rows = 15

-- vim-table-mode更改为markdown语法
vim.g.table_mode_corner='|'

-- 自动切换输入法配置
vim.o.ttimeoutlen=0
-------------------杂项配置---------------------
vim.wo.cursorline = true
vim.wo.signcolumn = "yes"
vim.o.autoread = true
vim.bo.autoread = true
vim.o.whichwrap = 'b,s,<,>,[,],h,l'
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
vim.o.list = true
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
