;;; OpenDCL Event

;;;窗口初始化
;;;OnInitialize事件在窗体显示在屏幕上之前被立即调用。此事件处理程序可以在表单及其控件被显示之前初始化它们
(defun c:Interface/MainFrame#OnInitialize (/ contentList incomDirecList)
  (dcl-Control-SetText Interface/MainFrame/TextBox1 "请单击")
  (dcl-Control-SetText Interface/MainFrame/TextBox2 "\"获取信息\"按钮")
  (dcl-Control-SetText Interface/MainFrame/TextBox3 "获")
  (dcl-Control-SetText Interface/MainFrame/TextBox4 "取")
  (dcl-Control-SetText Interface/MainFrame/TextBox5 "宗地")
  (dcl-Control-SetText Interface/MainFrame/TextBox6 "信息")
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


;;;当用户关闭最后一次打开的AutoCAD绘图时触发此事件。如果任何非模态对话框的控件依赖于当前绘图文件的状态或内容，
;;;则应该在此时清除它们。一旦绘图关闭，没有AutoLISP代码可以执行，
;;;因为没有文档上下文为它执行;此事件处理程序将是打开新文档之前执行代码的最后一次机会。
(defun c:Interface/MainFrame#OnEnteringNoDocState (/)
  (if (dcl-Form-IsActive Interface/MainFrame)
    (if (dcl-Form-IsEnabled Interface/MainFrame)
      (dcl-Form-Close Interface/MainFrame)
    )
  )
)

;;;当用户切换到另一个打开的AutoCAD绘图时触发此事件。注意，打开一个新绘图将不会触发任何事件。
;;;必须安装使用非模态对话框的应用程序，以便将其代码加载到每个新创建的绘图文档中，
;;;并且应用程序的初始化代码必须检查必须管理的已经活动的对话框。
(defun c:Interface/MainFrame#OnDocActivated (/)
  (dcl-MessageBox "请确保程序已加入\"启动组\"," "警告")
  (Interface/MainFrame#OnInitialize)
)

;;;此事件在对话框关闭之前立即触发。UpperLeftX, UpperLeftY是对话框左上角的坐标。
(defun c:Interface/MainFrame#OnClose (UpperLeftX UpperLeftY /)
  (dcl-MessageBox "(￣▽￣)键入命令:reload,可以重新加载窗体!" "提示")
)

;;;四至录入按钮
;;;当用户单击控件上的鼠标左键时触发此事件。
(defun c:Interface/MainFrame/TextButton1#OnClicked (/)
  (dcl-sendstring "writeDir ")
)

;;;获取信息按钮
;;;当用户单击控件上的鼠标左键时触发此事件。
(defun c:Interface/MainFrame/TextButton2#OnClicked (/)
  (dcl-sendstring "getParcelInfo ")
)


;;;宗地代码 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox1#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox1))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox1#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox1))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (WCMATCH content "######JC#####") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSouthXdata 2 content vlaName)
	(DCL-MESSAGEBOX (strcat "更新宗地代码为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;权利人 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox2#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox2))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox2#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox2))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSouthXdata 3 content vlaName)
	(DCL-MESSAGEBOX (strcat "更新权利人为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;东至 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox3#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox3))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox3#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox3))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "BEIZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "更新北至为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;南至 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox4#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox4))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox4#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox4))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "DONGZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "更新东至为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;西至 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox5#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox5))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox5#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox5))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "NANZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "更新南至为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;北至 文本框 事件
;;;
;;;当鼠标移动到控件上时触发此事件。此事件的事件处理程序应该快速返回，因为在鼠标移动时将多次调用该事件。
;;;标志描述了[Shift]和[Ctrl]键以及鼠标按钮的状态。X和Y指定发生事件的控制客户端坐标。
(defun c:Interface/MainFrame/TextBox6#OnMouseMove (Flags X Y /)
  (dcl-Control-SetText Interface/MainFrame/Prompt (dcl-Control-GetText Interface/MainFrame/TextBox6))
)
;;;当控件具有输入焦点时，用户按下[Enter]键时触发此事件
(defun c:Interface/MainFrame/TextBox6#OnReturnPressed (/)
  (setq content (dcl-Control-GetText Interface/MainFrame/TextBox6))
  (setq handStr (dcl-Control-GetText Interface/MainFrame/TextBox7))
  (if (and (/= content nil) (/= content "") (/= handStr "None"))
    (progn
      (setq vlaName (vlax-ename->vla-object (handent handStr)))
      (if (Aisp-WeiteSingleXdata "XIZHI" content vlaName)
	(DCL-MESSAGEBOX (strcat "更新西至为:" content) "提示")
      )
    )
    (progn
      (DCL-MESSAGEBOX "o(*￣▽￣*)o请不要随意填写内容!" "警告")
    )
  )
)

;;;列表框 事件
;;;当用户双击控件上的鼠标左键时触发此事件。
(defun c:Interface/MainFrame/ListBox1#OnDblClicked (/ flag acadapplic hand minExt maxExt)
  (setq flag (dcl-ListBox-GetCurSel Interface/MainFrame/ListBox1))
  (if (/= flag -1)
    (progn
;;;获取ACAD对象
      (setq acadapplic (vlax-get-acad-object))
;;;获取用户选择项目包含的图元句柄
      (setq hand
	     (dcl-ListBox-GetItemText Interface/MainFrame/ListBox1 flag)
      )
;;;获得对象边界对角点
      (vla-GetBoundingBox
	(vlax-ename->vla-object (handent hand))
	'minExt
	'maxExt
      )
;;;跳转到该对象
      (vla-ZoomWindow acadapplic minExt maxExt)
      (vlax-release-object acadapplic)
    )
  )
  (princ)
)
