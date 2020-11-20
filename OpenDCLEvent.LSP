;;; OpenDCL Event

;;;���ڳ�ʼ��
;;;OnInitialize�¼��ڴ�����ʾ����Ļ��֮ǰ���������á����¼�������������ڱ�������ؼ�����ʾ֮ǰ��ʼ������
(defun c:Interface/MainFrame#OnInitialize (/ contentList incomDirecList)
  (dcl-Control-SetText Interface/MainFrame/TextBox1 "�뵥��")
  (dcl-Control-SetText Interface/MainFrame/TextBox2 "\"��ȡ��Ϣ\"��ť")
  (dcl-Control-SetText Interface/MainFrame/TextBox3 "��")
  (dcl-Control-SetText Interface/MainFrame/TextBox4 "ȡ")
  (dcl-Control-SetText Interface/MainFrame/TextBox5 "�ڵ�")
  (dcl-Control-SetText Interface/MainFrame/TextBox6 "��Ϣ")
  (dcl-Control-SetText Interface/MainFrame/TextBox7 "None")
  (setq contentList (Aisp-OutputDirectionInfo))
  (if (/= contentList nil)
    (progn
      (dcl-Control-SetCaption Interface/MainFrame/Unfinished (cdr (assoc "incomDirecNum" contentList)))
      (dcl-Control-SetCaption Interface/MainFrame/Total (cdr (assoc "DirectionNum" contentList)))
      (dcl-ListBox-Clear Interface/MainFrame/ListBox1)
      (setq incomDirecList (cdr (assoc "incomDirecList" contentList)))
      (if (/= incomDirecList nil)
	(dcl-Control-SetList Interface/MainFrame/ListBox1  incomDirecList)
      )
    )
  )
)


;;;���û��ر����һ�δ򿪵�AutoCAD��ͼʱ�������¼�������κη�ģ̬�Ի���Ŀؼ������ڵ�ǰ��ͼ�ļ���״̬�����ݣ�
;;;��Ӧ���ڴ�ʱ������ǡ�һ����ͼ�رգ�û��AutoLISP�������ִ�У�
;;;��Ϊû���ĵ�������Ϊ��ִ��;���¼����������Ǵ����ĵ�֮ǰִ�д�������һ�λ��ᡣ
(defun c:Interface/MainFrame#OnEnteringNoDocState (/)
  (if (dcl-Form-IsActive Interface/MainFrame)
    (if (dcl-Form-IsEnabled Interface/MainFrame)
      (dcl-Form-Close Interface/MainFrame)
    )
  )
)

;;;���û��л�����һ���򿪵�AutoCAD��ͼʱ�������¼���ע�⣬��һ���»�ͼ�����ᴥ���κ��¼���
;;;���밲װʹ�÷�ģ̬�Ի����Ӧ�ó����Ա㽫�������ص�ÿ���´����Ļ�ͼ�ĵ��У�
;;;����Ӧ�ó���ĳ�ʼ��������������������Ѿ���ĶԻ���
(defun c:Interface/MainFrame#OnDocActivated (/)
  (dcl-MessageBox "��ȷ�������Ѽ���\"������\"," "����")
  (Interface/MainFrame#OnInitialize)
)

;;;���¼��ڶԻ���ر�֮ǰ����������UpperLeftX, UpperLeftY�ǶԻ������Ͻǵ����ꡣ
(defun c:Interface/MainFrame#OnClose (UpperLeftX UpperLeftY /)
  (dcl-MessageBox "(������)��������:reload,�������¼��ش���!" "��ʾ")
)

;;;����¼�밴ť
;;;���û������ؼ��ϵ�������ʱ�������¼���
(defun c:Interface/MainFrame/TextButton1#OnClicked (/)
  (dcl-sendstring "writeDir ")
)

;;;��ȡ��Ϣ��ť
;;;���û������ؼ��ϵ�������ʱ�������¼���
(defun c:Interface/MainFrame/TextButton2#OnClicked (/)
  (dcl-sendstring "getParcelInfo ")
)


;;;�ڵش��� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox1#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox1))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox1#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox1))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (WCMATCH content "######JC#####") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSouthXdata 2 content vlaName)
	(DCL-MESSAGEBOX (strcat "�����ڵش���Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;Ȩ���� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox2#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox2))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox2#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox2))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSouthXdata 3 content vlaName)
	(DCL-MESSAGEBOX (strcat "����Ȩ����Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;���� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox3#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox3))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox3#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox3))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "BEIZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "���±���Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;���� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox4#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox4))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox4#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox4))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "DONGZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "���¶���Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;���� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox5#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox5))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox5#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox5))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "NANZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "��������Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;���� �ı��� �¼�
;;;
;;;������ƶ����ؼ���ʱ�������¼������¼����¼���������Ӧ�ÿ��ٷ��أ���Ϊ������ƶ�ʱ����ε��ø��¼���
;;;��־������[Shift]��[Ctrl]���Լ���갴ť��״̬��X��Yָ�������¼��Ŀ��ƿͻ������ꡣ
(defun c:Interface/MainFrame/TextBox6#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox6))
)
;;;���ؼ��������뽹��ʱ���û�����[Enter]��ʱ�������¼�
(defun c:Interface/MainFrame/TextBox6#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox6))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "XIZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "��������Ϊ:" content) "��ʾ")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*������*)o�벻Ҫ������д����!" "����")
    )
  )
)

;;;�б��� �¼�
;;;���û�˫���ؼ��ϵ�������ʱ�������¼���
(defun c:Interface/MainFrame/ListBox1#OnDblClicked (/ flag acadapplic hand minExt maxExt)
  (setq flag (dcl-ListBox-GetCurSel Interface/MainFrame/ListBox1))
  (if (/= flag -1)
    (progn
;;;��ȡACAD����
      (setq acadapplic (vlax-get-acad-object))
;;;��ȡ�û�ѡ����Ŀ������ͼԪ���
      (setq hand
	     (dcl-ListBox-GetItemText Interface/MainFrame/ListBox1 flag)
      )
;;;��ö���߽�Խǵ�
      (vla-GetBoundingBox
	(vlax-ename->vla-object (handent hand))
	'minExt
	'maxExt
      )
;;;��ת���ö���
      (vla-ZoomWindow acadapplic minExt maxExt)
      (vlax-release-object acadapplic)
    )
  )
  (princ)
)