 ;;; main program

;;;cass编码转换文字匹配表
(setq SOUTHCODETABLE
       '(("213901-1" "林地")
	 ("213100-1" "林地")
	 ("211200-1" "旱地")
	 ("167500" "道路")
	 ("167220" "道路")
	 ("167210" "道路")
	 ("167400" "道路")
	 ("167320" "道路")
	 ("167310" "道路")
	 ("167130" "道路")
	 ("167120" "道路")
	 ("167110" "道路")
	 ("161800" "道路")
	 ("161811" "道路")
	 ("161810" "道路")
	 ("161502" "道路")
	 ("161501" "道路")
	 ("161701" "道路")
	 ("168700" "道路")
	 ("169014" "道路")
	 ("169004" "道路")
	 ("169013" "道路")
	 ("169003" "道路")
	 ("169012" "道路")
	 ("169002" "道路")
	 ("169001" "道路")
	 ("168500" "道路")
	 ("168400" "道路")
	 ("168600" "道路")
	 ("168300" "道路")
	 ("168200" "道路")
	 ("168103" "道路")
	 ("168102" "道路")
	 ("168111" "道路")
	 ("168101" "道路")
	 ("167800" "道路")
	 ("167710" "道路")
	 ("167700" "道路")
	 ("167620" "道路")
	 ("167610" "道路")
	 ("167810" "道路")
	 ("165602" "道路")
	 ("165611" "道路")
	 ("165601" "道路")
	 ("165603" "道路")
	 ("165606" "道路")
	 ("165605" "道路")
	 ("165402" "道路")
	 ("165401" "道路")
	 ("165302" "道路")
	 ("165301" "道路")
	 ("165811" "道路")
	 ("165510" "道路")
	 ("165500" "道路")
	 ("165202" "道路")
	 ("165201" "道路")
	 ("165210" "道路")
	 ("166810" "道路")
	 ("166502" "道路")
	 ("166501" "道路")
	 ("166610" "道路")
	 ("166600" "道路")
	 ("166700" "道路")
	 ("166402" "道路")
	 ("166401" "道路")
	 ("158202" "道路")
	 ("158100" "道路")
	 ("166900" "道路")
	 ("166800" "道路")
	 ("166310" "道路")
	 ("166300" "道路")
	 ("166230" "道路")
	 ("166221" "道路")
	 ("166220" "道路")
	 ("166241" "道路")
	 ("166240" "道路")
	 ("166210" "道路")
	 ("165642" "道路")
	 ("165641" "道路")
	 ("165640" "道路")
	 ("165632" "道路")
	 ("165631" "道路")
	 ("165621" "道路")
	 ("165620" "道路")
	 ("155100" "道路")
	 ("165604" "道路")
	 ("165610" "道路")
	 ("164300" "道路")
	 ("164202" "道路")
	 ("164211" "道路")
	 ("164201" "道路")
	 ("164110" "道路")
	 ("164100" "道路")
	 ("164500" "道路")
	 ("164400" "道路")
	 ("164830" "道路")
	 ("164820" "道路")
	 ("164810" "道路")
	 ("164620" "道路")
	 ("164610" "道路")
	 ("164600" "道路")
	 ("164710" "道路")
	 ("164700" "道路")
	 ("161602" "道路")
	 ("161601" "道路")
	 ("161600" "道路")
	 ("161923" "道路")
	 ("161922" "道路")
	 ("161921" "道路")
	 ("161912" "道路")
	 ("161910" "道路")
	 ("163600" "道路")
	 ("163320" "道路")
	 ("163310" "道路")
	 ("163300" "道路")
	 ("163530" "道路")
	 ("163241" "道路")
	 ("163240" "道路")
	 ("163520" "道路")
	 ("163232" "道路")
	 ("163231" "道路")
	 ("163230" "道路")
	 ("163510" "道路")
	 ("163222" "道路")
	 ("163221" "道路")
	 ("163220" "道路")
	 ("163400" "道路")
	 ("163120" "道路")
	 ("163110" "道路")
	 ("163100" "道路")
	 ("162810" "道路")
	 ("162800" "道路")
	 ("162710" "道路")
	 ("162700" "道路")
	 ("162600" "道路")
	 ("162500" "道路")
	 ("162402" "道路")
	 ("162401" "道路")
	 ("162201" "道路")
	 ("162202" "道路")
	 ("162200" "道路")
	 ("162300" "道路")
	 ("162120" "道路")
	 ("162112" "道路")
	 ("162111" "道路")
	 ("162110" "道路")
	 ("161309" "道路")
	 ("161301" "道路")
	 ("161409" "道路")
	 ("161401" "道路")
	 ("161204" "道路")
	 ("161203" "道路")
	 ("161209" "道路")
	 ("161201" "道路")
	 ("161109" "道路")
	 ("161101" "道路")
	 ("206301" "石块地")
	 ("206300" "石块地")
	 ("206210" "沙泥地")
	 ("206201" "沙砾地石块")
	 ("206200" "沙砾滩")
	 ("206601" "龟裂地")
	 ("206600" "龟裂地")
	 ("206503" "小草丘地")
	 ("206502" "不依比例小草丘地")
	 ("206501" "依比例小草丘地")
	 ("206402" "盐碱地")
	 ("206401" "盐碱地")
	 ("206400" "盐碱地")
	 ("215411" "花圃")
	 ("215410" "花圃(实线)")
	 ("215401" "花圃")
	 ("215400" "花圃")
	 ("215301" "荒草地")
	 ("215300" "荒草地")
	 ("215201" "半荒草地")
	 ("215200" "半荒草地")
	 ("214401" "人工绿地")
	 ("214400" "人工绿地")
	 ("214301" "人工牧草地")
	 ("214300" "人工牧草地")
	 ("214202" "改良草地")
	 ("214201" "改良草地")
	 ("214200" "改良草地")
	 ("214101" "天然草地")
	 ("214100" "天然草地")
	 ("215101" "高草地")
	 ("215100" "高草地")
	 ("213813" "林地")
	 ("213814" "林地")
	 ("213812" "林地")
	 ("213811" "林地")
	 ("213803" "林地")
	 ("213804" "林地")
	 ("213802" "林地")
	 ("213801" "林地")
	 ("213204" "林地")
	 ("213702" "林地")
	 ("213701" "林地")
	 ("216200" "防火带")
	 ("213602" "迹地")
	 ("213601" "迹地")
	 ("213600" "迹地")
	 ("213301" "林地")
	 ("213300" "林地")
	 ("213903" "竹林")
	 ("213902" "竹林")
	 ("213900" "竹林")
	 ("213901" "林地")
	 ("213203" "林地")
	 ("213202" "林地")
	 ("213211" "林地")
	 ("213201" "林地")
	 ("213501" "林地")
	 ("213500" "林地")
	 ("213101" "林地")
	 ("213100" "林地")
	 ("212501" "经济作物地")
	 ("212500" "经济作物地")
	 ("212601" "其他经济林")
	 ("212600" "其他经济林")
	 ("212401" "橡胶园")
	 ("212400" "橡胶园")
	 ("212301" "茶园")
	 ("212300" "茶园")
	 ("212201" "林地")
	 ("212200" "林地")
	 ("212101" "林地")
	 ("212100" "林地")
	 ("206900" "台田")
	 ("211301" "水生经济作物地")
	 ("211300" "水生经济作物地")
	 ("211401" "旱地")
	 ("211400" "旱地")
	 ("211201" "旱地")
	 ("211200" "旱地")
	 ("211122" "双线田埂")
	 ("211121" "双线田埂")
	 ("211110" "单线田埂")
	 ("211900" "水浇地")
	 ("211101" "水田")
	 ("211100" "水田")
	 ("216100" "水泥坝")
	 ("142201" "蒙古包范围")
	 ("142200" "蒙古包")
	 ("142122" "地下窑洞")
	 ("142121" "依比例地下窑洞")
	 ("142113" "房式窑洞")
	 ("142112" "地上窑洞不依比例")
	 ("142111" "依比例地上窑洞")
	 ("141800" "飘楼")
	 ("141700" "廊房")
	 ("141600" "架空房")
	 ("141510" "无墙的棚房")
	 ("141500" "棚房")
	 ("141400" "破房")
	 ("141300" "建筑房")
	 ("141200" "简易房")
	 ("141103" "1:2000房")
	 ("141104" "突出房")
	 ("141161" "混房")
	 ("141151" "木房")
	 ("141141" "钢房")
	 ("141131" "铁房")
	 ("141121" "砖房")
	 ("141111" "砼房")
	 ("141101" "一般房")
	 ("300000" "宅基地")
	 ("204201" "坎子")
	 ("204202" "坎子")
	)
)

(defun c:writeDir (/ direction_ls print_ls loop direContentLs parcelName flag2 printFlag ss)
  ;;;主程序
  (setq direction_ls '("BEIZHI" "DONGZHI" "NANZHI" "XIZHI"))
  (setq print_ls '("\n北至:" "\n东至:" "\n南至:" "\n西至:"))
  (setq loop T) ;;;循环停止标志
  (while loop
    (setq direContentLs nil) ;;;包含四个四至方向内容的列表,用于写入宗地
    (setq parcelName (VL-CATCH-ALL-APPLY 'vlax-ename->vla-object (list (car (VL-CATCH-ALL-APPLY 'entsel (list "\n请选择需要被录入信息的宗地:"))))))
    (if (not (VL-CATCH-ALL-ERROR-P parcelName))
      (progn
	(if (Aisp-Judge-Parcel parcelName)
;;;是否为合格的宗地实体
	  (progn
	    (setq flag2 0)
	    (setq printFlag 0)
	    (while (< flag2 4)
	      (prompt (nth printFlag print_ls))
;;;输出提示信息
	      (setq ss (ssget (list '(-4 . "<NOT")
				    
;;;条件"0"
				    '
				     (8 . "0")
				    '(-4 . "NOT>")
			      )
		       )
	      )
;;;选择集不为 nil 
	      (if (/= ss nil)
		(progn
;;;用户创建的选择集进行判断四至内容
		  (if (setq direContent (Aisp-ParsingContent ss))
		    (progn
;;;解析后的内容加入 direContentLs 
		      (setq direContentLs
			     (cons
			       (list
				 (nth printFlag direction_ls)
				 direContent
			       )
			       direContentLs
			     )
		      )
;;; 提示内容 转向下一个
		      (setq printFlag (1+ printFlag))
;;; 循环停止+1
		      (setq flag2 (1+ flag2))
		    )
		  )
		)
		(progn
		  (dcl-messagebox "未选择任何实体!" "错误")
		)
	      )
	    )
;;;判断需要写入的方向内容是否完整
	    (if	(= (length direContentLs) 4)
	      (progn
;;;	写入宗地的方向信息
		(if (Aisp-WriteDirectionCon parcelName direContentLs)
		  (progn
		    ;;;写入四至成功,改变宗地实体颜色为黄色
		    (vla-put-color parcelName acYellow)
		    ;;;将宗地信息写出到面板
		    (Aisp-Write-InterFace parcelName)
;;;		    (dcl-messagebox "成功!" "提示")
		  )
		)
	      )
	      (progn
		(dcl-messagebox "direContentLs 不完整!" "错误")
	      )
	    )
	  )
	  (progn
	    (dcl-messagebox "请选择需要被录入信息的宗地!" "错误")
	  )
	)
      )
      (progn
	(dcl-messagebox "无用的选择" "错误")
	(setq loop nil)
      )
    )
  )
  (princ)
)

;;; 获取宗地信息
(defun c:getParcelInfo (/ parcelName)
  (setq parcelName (VL-CATCH-ALL-APPLY 'vlax-ename->vla-object (list (car (VL-CATCH-ALL-APPLY 'entsel (list "\n请选择读取信息的宗地:"))))))
  (if (and (not (VL-CATCH-ALL-ERROR-P parcelName)) (Aisp-Judge-Parcel parcelName))
    (Aisp-Write-InterFace parcelName)
    (dcl-messagebox "无效选择!" "提示")
  )
  (princ)
)


;;;函数名称: Aisp-Judge-Parcel
;;;参数:  parcelName (对象名称)
;;;返回值: result 是宗地实体 nil 非宗地实体
;;;功能:判断是否为宗地实体
(defun Aisp-Judge-Parcel (parcelName / xdata)
  (setq xdata (Aisp-get-Xdata "SOUTH" parcelName))
  (if (and (/= xdata nil)
	   (= (nth 1 xdata)
	      "300000"
	   )
      )
    (setq result T)
    (setq result nil)
  )
  result
)

;;;函数名称:Aisp-ParsingContent
;;;参数: ss (用户创建的选择集)
;;;返回值: result 成功解析内容,返回解析内容 nil 解析失败
;;;功能:解析四至内容
(defun Aisp-ParsingContent (ss / result total vlaName xdata objectName southCode temp str notStr)
  (setq result nil)
  (setq total (sslength ss))
  (cond
    ;;; 用户选择一个对象
    (
     (= total 1)
     (setq vlaName (vlax-ename->vla-object (ssname ss 0)))
     ;;;获取对象的扩展数据
     (setq xdata (Aisp-get-Xdata "SOUTH" vlaName))
     (setq objectName (vlax-get-property vlaName 'ObjectName))
     (cond
	  (;;;文字对象直接写入文字内容
	   (= objectName "AcDbText")
	   (setq result (vlax-get-property vlaName 'TextString))
	  )
	  (
	   (and
	     (or (= objectName "AcDb2dPolyline") (= objectName "AcDbPolyline") (= objectName "AcDbBlockReference"))
	     (/= xdata nil)
	   )
	   ;;;取得cass编码
	   (setq southCode (nth 1 xdata))
	   (cond
	     (
	      (= southCode "300000")
	      (setq result (strcat (nth 3 xdata) "宅基地"))
	     )
	     (
	      T
	      (setq result (cadr (assoc southCode SOUTHCODETABLE)))
	     )
	   )
	  )
	  (
	   T
	   (setq result nil)
	  )
     )
    )

    ;;;用户选择两个对象
    (
     (= total 2)
     (setq temp 0 str nil notStr nil)
      (repeat total
	(setq vlaName (vlax-ename->vla-object (ssname ss temp)))
	(setq temp (1+ temp))
	;;;获取对象的扩展数据
	(setq xdata (Aisp-get-Xdata "SOUTH" vlaName))
;;;获取对象的 objectName
	(setq objectName (vlax-get-property vlaName 'ObjectName))
;;;根据对象 objectName 获取内容
	(cond
	  (
	   (= objectName "AcDbText")
	   (setq str (vlax-get-property vlaName 'TextString))
	  )
	  (
	   (and
	     (or (= objectName "AcDb2dPolyline") (= objectName "AcDbPolyline") (= objectName "AcDbBlockReference"))
	     (/= xdata nil)
	   )
	   ;;;取得cass编码
	   (setq southCode (nth 1 xdata))
	   (cond
	     (
	      (= southCode "300000")
	      (setq notStr (strcat (nth 3 xdata) "宅基地"))
	     )
	     (
	      T
	      (setq notStr (cadr (assoc southCode SOUTHCODETABLE)))
	     )
	   )
	  )
	)
      )
     (if (and str notStr)
       (progn
	 (cond
	   (
	    (and (WCMATCH str "*共墙*") (WCMATCH notStr "*宅基地"))
	    (setq result (strcat "与" notStr "共墙"))
	   )
	   (
	    (and (WCMATCH str "*借墙*") (WCMATCH notStr "*宅基地"))
	    (setq result (strcat "借" notStr "墙"))
	   )
	   (
	    T
	    (setq result (strcat  notStr str))
	   )
	 )
       )
       (progn
	 (setq result nil)
       )
     )
    )
    
    ;;;用户选择超过两个对象时,直接退出判断
    (
     T
     (setq result nil)
    )
  )
  result
)

;;;函数名称: Aisp-WriteDirectionCon
;;;参数: vlaName (被写入对象名称) direContentLs (需要写入的方向,列表格式: (list ("BEIZHI" content) ("DONGZHI" content) ......))
;;;返回值: T 写入成功 nil 写入失败
;;;功能: 向宗地写入内容
(defun Aisp-WriteDirectionCon (vlaName direContentLs / dataType data result fill dataFill setXdata)
  ;;; 创建扩展数据类型
  (setq dataType (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbInteger '(0 . 1))))
  (setq fill (VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list dataType '(1001 1000))))
  ;;; 创建扩展数据值
  (setq data (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbVariant '(0 . 1))))

  ;;; 根据方向内容表填充数组,写入宗地实体
  (foreach direContent direContentLs
    (setq dataFill(VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list data direContent)))
    (setq setXdata(VL-CATCH-ALL-APPLY 'vla-SetXData (list vlaName dataType data)))
  )

  (if (or
	(VL-CATCH-ALL-ERROR-P dataType)
	(VL-CATCH-ALL-ERROR-P fill)
	(VL-CATCH-ALL-ERROR-P data)
	(VL-CATCH-ALL-ERROR-P dataFill)
	(VL-CATCH-ALL-ERROR-P setXdata)
      )
    (progn
      (setq result nil)
    )
    (progn
      (setq result T)
    )
  )
  result
)

;;;函数名称: Aisp-get-Xdata
;;;参数: vlaName (对象名称) 
;;;返回值: result south扩展数据 nil 无扩展数据
;;;功能: 获取对象的指定的扩展数据
(defun Aisp-get-Xdata (str vlaName / xtypeOut xdataOut result)
  (vla-GetXData vlaName str 'xtypeOut 'xdataOut)
  (if (/= xdataOut nil)
    (progn
      (setq result (mapcar 'vlax-variant-value (vlax-safearray->list xdataOut)))
    )
    (progn
      (setq result nil)
    )
  )
  result
)

;;;函数名称: Aisp-Write-InterFace
;;;参数: vlaName (宗地对象名称) 
;;;返回值: 无返回值
;;;功能: 将宗地信息写出至信息面板
(defun Aisp-Write-InterFace (vlaName / parcelInfo flag1 flag2 flag3 flag4 flag5 parcelNum obligee north east south west)
  (if (dcl-Form-IsActive Interface/MainFrame)
    (if (dcl-Form-IsEnabled Interface/MainFrame)
    (progn
      (setq parcelInfo (Aisp-get-Xdata "" vlaName))
      (if (setq flag1 (VL-POSITION "300000" parcelInfo))
	(progn
	  ;;;填写宗地代码
	  (setq parcelNum (nth (+ flag1 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox1 parcelNum)
	  ;;;填写权利人
	  (setq obligee (nth (+ flag1 2) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox2 obligee)
	)
      )
      ;;;填写北至
      (if (setq flag2 (VL-POSITION "BEIZHI" parcelInfo))
	(progn
	  (setq north (nth (+ flag2 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox3 north)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox3 "(尚未填写内容)")
	)
      )
      ;;;填写东至
      (if (setq flag3 (VL-POSITION "DONGZHI" parcelInfo))
	(progn
	  (setq east (nth (+ flag3 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox4 east)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox4 "(尚未填写内容)")
	)
      )
      ;;;填写南至
      (if (setq flag4 (VL-POSITION "NANZHI" parcelInfo))
	(progn
	  (setq south (nth (+ flag4 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox5 south)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox5 "(尚未填写内容)")
	)
      )
      ;;;填写西至
      (if (setq flag5 (VL-POSITION "XIZHI" parcelInfo))
	(progn
	  (setq west (nth (+ flag5 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox6 west)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox6 "(尚未填写内容)")
	)
      )
      ;;;填写图元句柄
      (dcl-Control-SetText Interface/MainFrame/TextBox7 (vlax-get-property vlaName 'Handle))
    )
  )
  )
)


;;;函数名称: Aisp-WeiteSingleXdata
;;;参数: dire (方向) content (内容) vlaName (对象名称)
;;;返回值: T 写入成功 nil 写入失败
;;;功能: 向宗地写入单个方向内容
(defun Aisp-WeiteSingleXdata (dire content vlaName / dataType fill data dataFill setXdata)
  ;;; 创建扩展数据类型
  (setq dataType (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbInteger '(0 . 1))))
  (setq fill (VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list dataType '(1001 1000))))
  ;;; 创建扩展数据值
  (setq data (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbVariant '(0 . 1))))
  (setq dataFill(VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list data (list dire content))))
  (setq setXdata(VL-CATCH-ALL-APPLY 'vla-SetXData (list vlaName dataType data)))
  (if (or
	(VL-CATCH-ALL-ERROR-P dataType)
	(VL-CATCH-ALL-ERROR-P fill)
	(VL-CATCH-ALL-ERROR-P data)
	(VL-CATCH-ALL-ERROR-P dataFill)
	(VL-CATCH-ALL-ERROR-P setXdata)
      )
    (progn
      (setq result nil)
    )
    (progn
      (setq result T)
    )
  )
  result
)

;;;函数名称: Aisp-WeiteSouthXdata
;;;参数: serialNumber (需要替换内容在列表的序号) content (内容) vlaName (对象名称)
;;;返回值: T 写入成功 nil 写入失败
;;;功能: 替换现有宗地的SOUTH信息
(defun Aisp-WeiteSouthXdata (serialNumber content vlaName / setXdata)
  (vla-GetXData vlaName "SOUTH" 'xtype 'xdata)
  (cond
    (
     (= serialNumber 2)
     (vlax-safearray-put-element xdata 2 content)
    )
    (
     (= serialNumber 3)
     (vlax-safearray-put-element xdata 3 content)
    )
  )
  (setq setXdata (VL-CATCH-ALL-APPLY 'vla-SetXData (list vlaName xtype xdata)))
  (if (VL-CATCH-ALL-ERROR-P setXdata)
    (progn
      (setq result nil)
    )
    (progn
      (setq result T)
    )
  )
  result
)

;;;函数名称: Aisp-CheckDirectionInfo
;;;参数: vlaName (对象名称)
;;;返回值: T 信息完整 nil 信息不完整
;;;功能: 检查宗地的四至信息是否完整
(defun Aisp-CheckDirectionInfo (vlaName / result directionList direction xtype xdata info)
  (setq result T)
  (setq directionList '("BEIZHI" "DONGZHI" "NANZHI" "XIZHI"))
  (foreach direction directionList
    (setq xtype nil xdata nil)
    (vla-GetXData vlaName direction 'xtype 'xdata)
    (if (and (/= xtype nil) (/= xdata nil))
      ;;;无法获取的指定的方向的扩展数据,判定信息不完整
      (progn
	;;;取得填写的方向信息
	(setq info (cadr (MAPCAR 'vlax-variant-value
				 (vlax-safearray->list xdata)
			 )
		   )
	)
	(if (or (= info "") (= info " "))
	  ;;;获取到的信息为 "" 或者 " ",判定信息为不完整
	  (setq result nil)
	)
      )
      (progn
	(setq result nil)
      )
    )
  )
  result
)

;;;函数名称: Aisp-OutputDirectionInfo
;;;参数: 无参数
;;;返回值:
;;;resultList
;;;sample:(list
;;;  		(list "DirectionNum" num)
;;;  		(list "incomDirecNum" num)
;;;  		(list "incomDirecList" (list object .....))
;;;		(list "DirecList" (list object....))
;;;	  )
;;;功能: 获取当前图形数据库的界址线总数,四至不完整界址线数量,四至不完整界址线的图元句柄,所有宗地的vla对象
(defun Aisp-OutputDirectionInfo (/ resultList ss vlaName counter DirectionNum incomDirecNum incomDirecList)
  (setq resultList nil)
  (setq	ss (ssget "X"
		  (list
		    '(8 . "JZD") '(-4 . "<OR") '(0 . "LWPOLYLINE") '(0 . "POLYLINE")
		    '(-4 . "OR>"))
	   )
  )
  (if (/= ss nil)
    (progn
      (setq
	    ;;;临时计数器
	    counter 0
	    ;;;界址线总数
	    DirectionNum 0
	    ;;;四至不完整界址线总数
	    incomDirecNum 0
	    ;;;四至不完整界址线对象表
	    incomDirecList nil
	    ;;;所有宗地对象表 (AutoLisp 图元)
	    DirecList nil
      )
      (repeat (sslength ss)
	(setq vlaName (vlax-ename->vla-object (ssname ss counter)))
	(setq counter (1+ counter))
	;;;判断是否为宗地实体
	(if (Aisp-Judge-Parcel vlaName)
	  (progn
	    (setq DirectionNum (1+ DirectionNum))
	    (setq DirecList (cons vlaName DirecList))
	    (if (not (Aisp-CheckDirectionInfo vlaName))
	      (progn
		(setq incomDirecNum (1+ incomDirecNum))
		;;;取得四至不完整对象的图元句柄
		(setq hand (vla-get-Handle vlaName))
		(setq incomDirecList (cons hand incomDirecList))
  	      )
	    )
	  )
	)
      )
      ;;;创建结果表
      (setq resultList
	     (list
	       (vl-list* "DirectionNum" (itoa DirectionNum))
	       (vl-list* "incomDirecNum" (itoa incomDirecNum))
	       (vl-list* "incomDirecList" incomDirecList)
	       (vl-list* "DirecList" DirecList)
	     )
      )
    )
  )
  resultList
)


