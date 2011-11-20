if exists('b:current_syntax')
    finish
endif

let b:current_syntax = 'history'

" ��������� ��������� �������
syntax match Keyword /\[\(\(\d\d:\d\d \)\?\d\d.\d\d.\d\d\d\d\)\?\]/

" ��������� ������ (!)
syntax match Error /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=!.*$/

" ��������� ������� ������ � ������� (=)
syntax match Solved /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<==.*$/

" ��������� todo (?)
syntax match Todo /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=?.*$/

" ��������� ������������ (#)
syntax match Comment /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=#.*$/

" ��������� ���������� (+)
syntax match Addition /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=+.*$/

" ��������� �������� (-)
syntax match Deletion /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=-.*$/

" ��������� ��������� (~)
syntax match Changes /\(\(\]\s\(\s\s\)\?\)\|\(\s\{18\}\)\)\@<=\~.*$/

" ����������� ���� �����
highlight Solved ctermbg=green ctermfg=blue guibg=darkblue guifg=lightred
            \ gui=NONE
highlight Addition ctermfg=darkgreen guifg=darkgreen gui=NONE
highlight Deletion ctermfg=darkred guifg=darkred gui=NONE
highlight Changes ctermfg=magenta guifg=magenta gui=NONE
