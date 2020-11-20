;;;四至录入功能的反应器

;;;2个反应器
;;;对象反应器:  "DirectionReactor" 当前图形数据库的所有宗地对象
;;;编辑器反应器: "CassRecator" 响应cass软件绘制界址线的命令


;;;创建编辑器反应器
(if (= CassCommandReactor nil)
  (setq CassCommandReactor (VLR-Editor-Reactor "CassRecator" '((:VLR-commandEnded . Aisp-vlr-cassCommandReactor))))
)




;;;获取当前图形数据库信息
;;;sample:(list
;;;  		(list "DirectionNum" num)
;;;  		(list "incomDirecNum" num)
;;;  		(list "incomDirecList" (list object .....))
;;;		(list "DirecList" (list object....))
;;;	  )
(setq DirecInfoList (Aisp-OutputDirectionInfo))
;;;当前图形数据库的所有宗地vla对象,为对象反应器的拥有者
(setq DirectionOwnerList (cdr (assoc "DirecList" DirecInfoList)))


;;;创建对象反应器
(if (/= DirectionOwnerList nil)
  (setq DirectionObjectReactor (vlr-object-reactor DirectionOwnerList "DirectionReactor" '((:vlr-modifiedXData . Aisp-vlr-updateInterFace))))
)


;;;函数名称: Aisp-vlr-updateInterFace
;;;参数: ReactorObject (调用回调函数的 VLR 对象) OwnerObject (应用事件的 VLA 对象的所有者。) PaemList (与特定事件相关联的其他数据元素。)
;;;返回值: 无
;;;功能: 当界址线对象扩展数据被修改时,依据四至信息完整性,删除面板列表框内的数据
(defun Aisp-vlr-updateInterFace (OwnerObject ReactorObject PaemList / strHand)
  ;;;判断界址线四至信息是否完整
  (if (Aisp-CheckDirectionInfo OwnerObject)
	(progn
	  (if (dcl-Form-IsActive Interface/MainFrame)
	    (progn
	      (setq strHand (vlax-get-property OwnerObject 'Handle))
	      ;;;删除界面上列表的项目(已经改正为正确的宗地信息)
	      (if (dcl-ListBox-DeleteItem
		    Interface/MainFrame/ListBox1
		    (dcl-ListBox-FindStringExact
		      Interface/MainFrame/ListBox1
		      strHand
		      0
		    )
		  )
		(progn
		  ;;;设置窗体的不完整宗地信息数量
		  (dcl-Control-SetCaption Interface/MainFrame/Unfinished (itoa (- (atoi (dcl-Control-GetCaption Interface/MainFrame/Unfinished)) 1)))
		)
	      )
	    )
	  )
	)
  )
)



;;;函数名称: Aisp-vlr-cassCommandReactor
;;;参数: ReactorObject (调用回调函数的 VLR 对象)  PaemList (与特定事件相关联的其他数据元素,此处为"包含命令的字符串")
;;;返回值: 无
;;;功能: 当用户通过CASS命令,创建新的界址线对象后,响应此事件
(defun Aisp-vlr-cassCommandReactor (ReactorObject PaemList / commandStr contentList incomDirecList)
  (setq commandStr (car PaemList))
  (if (or (= commandStr "JZLINE") (= commandStr "PLTOJZLINE"))
    (progn
      (if (dcl-Form-IsActive Interface/MainFrame)
	(progn
	  (setq contentList (Aisp-OutputDirectionInfo))
	  (if (/= contentList nil)
	    (progn
;;;更新对象反应器的拥有者
	      (setq DirectionObjectReactor
		     (vlr-object-reactor
		       (cdr (assoc "DirecList"
				   contentList
			    )
		       )
		       "DirectionReactor"
		       '((:vlr-modifiedXData
			  .
			  Aisp-vlr-updateInterFace
			 )
			)
		     )
	      )

	      (dcl-Control-SetCaption
		Interface/MainFrame/Unfinished
		(cdr (assoc "incomDirecNum" contentList))
	      )
	      (dcl-Control-SetCaption
		Interface/MainFrame/Total
		(cdr (assoc "DirectionNum" contentList))
	      )
	      (dcl-ListBox-Clear Interface/MainFrame/ListBox1)
	      (setq incomDirecList
		     (cdr (assoc "incomDirecList" contentList))
	      )
	      (if (/= incomDirecList nil)
		(dcl-Control-SetList
		  Interface/MainFrame/ListBox1
		  incomDirecList
		)
	      )
	    )
	  )
	)
      )
    )
  )
)







