 ;;; main program

;;;cass����ת������ƥ���
(setq SOUTHCODETABLE
       '(("213901-1" "�ֵ�")
	 ("213100-1" "�ֵ�")
	 ("211200-1" "����")
	 ("167500" "��·")
	 ("167220" "��·")
	 ("167210" "��·")
	 ("167400" "��·")
	 ("167320" "��·")
	 ("167310" "��·")
	 ("167130" "��·")
	 ("167120" "��·")
	 ("167110" "��·")
	 ("161800" "��·")
	 ("161811" "��·")
	 ("161810" "��·")
	 ("161502" "��·")
	 ("161501" "��·")
	 ("161701" "��·")
	 ("168700" "��·")
	 ("169014" "��·")
	 ("169004" "��·")
	 ("169013" "��·")
	 ("169003" "��·")
	 ("169012" "��·")
	 ("169002" "��·")
	 ("169001" "��·")
	 ("168500" "��·")
	 ("168400" "��·")
	 ("168600" "��·")
	 ("168300" "��·")
	 ("168200" "��·")
	 ("168103" "��·")
	 ("168102" "��·")
	 ("168111" "��·")
	 ("168101" "��·")
	 ("167800" "��·")
	 ("167710" "��·")
	 ("167700" "��·")
	 ("167620" "��·")
	 ("167610" "��·")
	 ("167810" "��·")
	 ("165602" "��·")
	 ("165611" "��·")
	 ("165601" "��·")
	 ("165603" "��·")
	 ("165606" "��·")
	 ("165605" "��·")
	 ("165402" "��·")
	 ("165401" "��·")
	 ("165302" "��·")
	 ("165301" "��·")
	 ("165811" "��·")
	 ("165510" "��·")
	 ("165500" "��·")
	 ("165202" "��·")
	 ("165201" "��·")
	 ("165210" "��·")
	 ("166810" "��·")
	 ("166502" "��·")
	 ("166501" "��·")
	 ("166610" "��·")
	 ("166600" "��·")
	 ("166700" "��·")
	 ("166402" "��·")
	 ("166401" "��·")
	 ("158202" "��·")
	 ("158100" "��·")
	 ("166900" "��·")
	 ("166800" "��·")
	 ("166310" "��·")
	 ("166300" "��·")
	 ("166230" "��·")
	 ("166221" "��·")
	 ("166220" "��·")
	 ("166241" "��·")
	 ("166240" "��·")
	 ("166210" "��·")
	 ("165642" "��·")
	 ("165641" "��·")
	 ("165640" "��·")
	 ("165632" "��·")
	 ("165631" "��·")
	 ("165621" "��·")
	 ("165620" "��·")
	 ("155100" "��·")
	 ("165604" "��·")
	 ("165610" "��·")
	 ("164300" "��·")
	 ("164202" "��·")
	 ("164211" "��·")
	 ("164201" "��·")
	 ("164110" "��·")
	 ("164100" "��·")
	 ("164500" "��·")
	 ("164400" "��·")
	 ("164830" "��·")
	 ("164820" "��·")
	 ("164810" "��·")
	 ("164620" "��·")
	 ("164610" "��·")
	 ("164600" "��·")
	 ("164710" "��·")
	 ("164700" "��·")
	 ("161602" "��·")
	 ("161601" "��·")
	 ("161600" "��·")
	 ("161923" "��·")
	 ("161922" "��·")
	 ("161921" "��·")
	 ("161912" "��·")
	 ("161910" "��·")
	 ("163600" "��·")
	 ("163320" "��·")
	 ("163310" "��·")
	 ("163300" "��·")
	 ("163530" "��·")
	 ("163241" "��·")
	 ("163240" "��·")
	 ("163520" "��·")
	 ("163232" "��·")
	 ("163231" "��·")
	 ("163230" "��·")
	 ("163510" "��·")
	 ("163222" "��·")
	 ("163221" "��·")
	 ("163220" "��·")
	 ("163400" "��·")
	 ("163120" "��·")
	 ("163110" "��·")
	 ("163100" "��·")
	 ("162810" "��·")
	 ("162800" "��·")
	 ("162710" "��·")
	 ("162700" "��·")
	 ("162600" "��·")
	 ("162500" "��·")
	 ("162402" "��·")
	 ("162401" "��·")
	 ("162201" "��·")
	 ("162202" "��·")
	 ("162200" "��·")
	 ("162300" "��·")
	 ("162120" "��·")
	 ("162112" "��·")
	 ("162111" "��·")
	 ("162110" "��·")
	 ("161309" "��·")
	 ("161301" "��·")
	 ("161409" "��·")
	 ("161401" "��·")
	 ("161204" "��·")
	 ("161203" "��·")
	 ("161209" "��·")
	 ("161201" "��·")
	 ("161109" "��·")
	 ("161101" "��·")
	 ("206301" "ʯ���")
	 ("206300" "ʯ���")
	 ("206210" "ɳ���")
	 ("206201" "ɳ����ʯ��")
	 ("206200" "ɳ��̲")
	 ("206601" "���ѵ�")
	 ("206600" "���ѵ�")
	 ("206503" "С�����")
	 ("206502" "��������С�����")
	 ("206501" "������С�����")
	 ("206402" "�μ��")
	 ("206401" "�μ��")
	 ("206400" "�μ��")
	 ("215411" "����")
	 ("215410" "����(ʵ��)")
	 ("215401" "����")
	 ("215400" "����")
	 ("215301" "�Ĳݵ�")
	 ("215300" "�Ĳݵ�")
	 ("215201" "��Ĳݵ�")
	 ("215200" "��Ĳݵ�")
	 ("214401" "�˹��̵�")
	 ("214400" "�˹��̵�")
	 ("214301" "�˹����ݵ�")
	 ("214300" "�˹����ݵ�")
	 ("214202" "�����ݵ�")
	 ("214201" "�����ݵ�")
	 ("214200" "�����ݵ�")
	 ("214101" "��Ȼ�ݵ�")
	 ("214100" "��Ȼ�ݵ�")
	 ("215101" "�߲ݵ�")
	 ("215100" "�߲ݵ�")
	 ("213813" "�ֵ�")
	 ("213814" "�ֵ�")
	 ("213812" "�ֵ�")
	 ("213811" "�ֵ�")
	 ("213803" "�ֵ�")
	 ("213804" "�ֵ�")
	 ("213802" "�ֵ�")
	 ("213801" "�ֵ�")
	 ("213204" "�ֵ�")
	 ("213702" "�ֵ�")
	 ("213701" "�ֵ�")
	 ("216200" "�����")
	 ("213602" "����")
	 ("213601" "����")
	 ("213600" "����")
	 ("213301" "�ֵ�")
	 ("213300" "�ֵ�")
	 ("213903" "����")
	 ("213902" "����")
	 ("213900" "����")
	 ("213901" "�ֵ�")
	 ("213203" "�ֵ�")
	 ("213202" "�ֵ�")
	 ("213211" "�ֵ�")
	 ("213201" "�ֵ�")
	 ("213501" "�ֵ�")
	 ("213500" "�ֵ�")
	 ("213101" "�ֵ�")
	 ("213100" "�ֵ�")
	 ("212501" "���������")
	 ("212500" "���������")
	 ("212601" "����������")
	 ("212600" "����������")
	 ("212401" "��԰")
	 ("212400" "��԰")
	 ("212301" "��԰")
	 ("212300" "��԰")
	 ("212201" "�ֵ�")
	 ("212200" "�ֵ�")
	 ("212101" "�ֵ�")
	 ("212100" "�ֵ�")
	 ("206900" "̨��")
	 ("211301" "ˮ�����������")
	 ("211300" "ˮ�����������")
	 ("211401" "����")
	 ("211400" "����")
	 ("211201" "����")
	 ("211200" "����")
	 ("211122" "˫���﹡")
	 ("211121" "˫���﹡")
	 ("211110" "�����﹡")
	 ("211900" "ˮ����")
	 ("211101" "����")
	 ("211100" "����")
	 ("216100" "ˮ���")
	 ("142201" "�ɹŰ���Χ")
	 ("142200" "�ɹŰ�")
	 ("142122" "����Ҥ��")
	 ("142121" "����������Ҥ��")
	 ("142113" "��ʽҤ��")
	 ("142112" "����Ҥ����������")
	 ("142111" "����������Ҥ��")
	 ("141800" "Ʈ¥")
	 ("141700" "�ȷ�")
	 ("141600" "�ܿշ�")
	 ("141510" "��ǽ���﷿")
	 ("141500" "�﷿")
	 ("141400" "�ƻ���")
	 ("141300" "������")
	 ("141200" "���׷�")
	 ("141103" "1:2000��")
	 ("141104" "ͻ����")
	 ("141161" "�췿")
	 ("141151" "ľ��")
	 ("141141" "�ַ�")
	 ("141131" "����")
	 ("141121" "ש��")
	 ("141111" "�ŷ�")
	 ("141101" "һ�㷿")
	 ("300000" "լ����")
	 ("204201" "����")
	 ("204202" "����")
	)
)

(defun c:writeDir (/ direction_ls print_ls loop direContentLs parcelName flag2 printFlag ss)
  ;;;������
  (setq direction_ls '("BEIZHI" "DONGZHI" "NANZHI" "XIZHI"))
  (setq print_ls '("\n����:" "\n����:" "\n����:" "\n����:"))
  (setq loop T) ;;;ѭ��ֹͣ��־
  (while loop
    (setq direContentLs nil) ;;;�����ĸ������������ݵ��б�,����д���ڵ�
    (setq parcelName (VL-CATCH-ALL-APPLY 'vlax-ename->vla-object (list (car (VL-CATCH-ALL-APPLY 'entsel (list "\n��ѡ����Ҫ��¼����Ϣ���ڵ�:"))))))
    (if (not (VL-CATCH-ALL-ERROR-P parcelName))
      (progn
	(if (Aisp-Judge-Parcel parcelName)
;;;�Ƿ�Ϊ�ϸ���ڵ�ʵ��
	  (progn
	    (setq flag2 0)
	    (setq printFlag 0)
	    (while (< flag2 4)
	      (prompt (nth printFlag print_ls))
;;;�����ʾ��Ϣ
	      (setq ss (ssget (list '(-4 . "<NOT")
				    
;;;����"0"
				    '
				     (8 . "0")
				    '(-4 . "NOT>")
			      )
		       )
	      )
;;;ѡ�񼯲�Ϊ nil 
	      (if (/= ss nil)
		(progn
;;;�û�������ѡ�񼯽����ж���������
		  (if (setq direContent (Aisp-ParsingContent ss))
		    (progn
;;;����������ݼ��� direContentLs 
		      (setq direContentLs
			     (cons
			       (list
				 (nth printFlag direction_ls)
				 direContent
			       )
			       direContentLs
			     )
		      )
;;; ��ʾ���� ת����һ��
		      (setq printFlag (1+ printFlag))
;;; ѭ��ֹͣ+1
		      (setq flag2 (1+ flag2))
		    )
		  )
		)
		(progn
		  (dcl-messagebox "δѡ���κ�ʵ��!" "����")
		)
	      )
	    )
;;;�ж���Ҫд��ķ��������Ƿ�����
	    (if	(= (length direContentLs) 4)
	      (progn
;;;	д���ڵصķ�����Ϣ
		(if (Aisp-WriteDirectionCon parcelName direContentLs)
		  (progn
		    ;;;д�������ɹ�,�ı��ڵ�ʵ����ɫΪ��ɫ
		    (vla-put-color parcelName acYellow)
		    ;;;���ڵ���Ϣд�������
		    (Aisp-Write-InterFace parcelName)
;;;		    (dcl-messagebox "�ɹ�!" "��ʾ")
		  )
		)
	      )
	      (progn
		(dcl-messagebox "direContentLs ������!" "����")
	      )
	    )
	  )
	  (progn
	    (dcl-messagebox "��ѡ����Ҫ��¼����Ϣ���ڵ�!" "����")
	  )
	)
      )
      (progn
	(dcl-messagebox "���õ�ѡ��" "����")
	(setq loop nil)
      )
    )
  )
  (princ)
)

;;; ��ȡ�ڵ���Ϣ
(defun c:getParcelInfo (/ parcelName)
  (setq parcelName (VL-CATCH-ALL-APPLY 'vlax-ename->vla-object (list (car (VL-CATCH-ALL-APPLY 'entsel (list "\n��ѡ���ȡ��Ϣ���ڵ�:"))))))
  (if (and (not (VL-CATCH-ALL-ERROR-P parcelName)) (Aisp-Judge-Parcel parcelName))
    (Aisp-Write-InterFace parcelName)
    (dcl-messagebox "��Чѡ��!" "��ʾ")
  )
  (princ)
)


;;;��������: Aisp-Judge-Parcel
;;;����:  parcelName (��������)
;;;����ֵ: result ���ڵ�ʵ�� nil ���ڵ�ʵ��
;;;����:�ж��Ƿ�Ϊ�ڵ�ʵ��
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

;;;��������:Aisp-ParsingContent
;;;����: ss (�û�������ѡ��)
;;;����ֵ: result �ɹ���������,���ؽ������� nil ����ʧ��
;;;����:������������
(defun Aisp-ParsingContent (ss / result total vlaName xdata objectName southCode temp str notStr)
  (setq result nil)
  (setq total (sslength ss))
  (cond
    ;;; �û�ѡ��һ������
    (
     (= total 1)
     (setq vlaName (vlax-ename->vla-object (ssname ss 0)))
     ;;;��ȡ�������չ����
     (setq xdata (Aisp-get-Xdata "SOUTH" vlaName))
     (setq objectName (vlax-get-property vlaName 'ObjectName))
     (cond
	  (;;;���ֶ���ֱ��д����������
	   (= objectName "AcDbText")
	   (setq result (vlax-get-property vlaName 'TextString))
	  )
	  (
	   (and
	     (or (= objectName "AcDb2dPolyline") (= objectName "AcDbPolyline") (= objectName "AcDbBlockReference"))
	     (/= xdata nil)
	   )
	   ;;;ȡ��cass����
	   (setq southCode (nth 1 xdata))
	   (cond
	     (
	      (= southCode "300000")
	      (setq result (strcat (nth 3 xdata) "լ����"))
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

    ;;;�û�ѡ����������
    (
     (= total 2)
     (setq temp 0 str nil notStr nil)
      (repeat total
	(setq vlaName (vlax-ename->vla-object (ssname ss temp)))
	(setq temp (1+ temp))
	;;;��ȡ�������չ����
	(setq xdata (Aisp-get-Xdata "SOUTH" vlaName))
;;;��ȡ����� objectName
	(setq objectName (vlax-get-property vlaName 'ObjectName))
;;;���ݶ��� objectName ��ȡ����
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
	   ;;;ȡ��cass����
	   (setq southCode (nth 1 xdata))
	   (cond
	     (
	      (= southCode "300000")
	      (setq notStr (strcat (nth 3 xdata) "լ����"))
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
	    (and (WCMATCH str "*��ǽ*") (WCMATCH notStr "*լ����"))
	    (setq result (strcat "��" notStr "��ǽ"))
	   )
	   (
	    (and (WCMATCH str "*��ǽ*") (WCMATCH notStr "*լ����"))
	    (setq result (strcat "��" notStr "ǽ"))
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
    
    ;;;�û�ѡ�񳬹���������ʱ,ֱ���˳��ж�
    (
     T
     (setq result nil)
    )
  )
  result
)

;;;��������: Aisp-WriteDirectionCon
;;;����: vlaName (��д���������) direContentLs (��Ҫд��ķ���,�б���ʽ: (list ("BEIZHI" content) ("DONGZHI" content) ......))
;;;����ֵ: T д��ɹ� nil д��ʧ��
;;;����: ���ڵ�д������
(defun Aisp-WriteDirectionCon (vlaName direContentLs / dataType data result fill dataFill setXdata)
  ;;; ������չ��������
  (setq dataType (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbInteger '(0 . 1))))
  (setq fill (VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list dataType '(1001 1000))))
  ;;; ������չ����ֵ
  (setq data (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbVariant '(0 . 1))))

  ;;; ���ݷ������ݱ��������,д���ڵ�ʵ��
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

;;;��������: Aisp-get-Xdata
;;;����: vlaName (��������) 
;;;����ֵ: result south��չ���� nil ����չ����
;;;����: ��ȡ�����ָ������չ����
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

;;;��������: Aisp-Write-InterFace
;;;����: vlaName (�ڵض�������) 
;;;����ֵ: �޷���ֵ
;;;����: ���ڵ���Ϣд������Ϣ���
(defun Aisp-Write-InterFace (vlaName / parcelInfo flag1 flag2 flag3 flag4 flag5 parcelNum obligee north east south west)
  (if (dcl-Form-IsActive Interface/MainFrame)
    (if (dcl-Form-IsEnabled Interface/MainFrame)
    (progn
      (setq parcelInfo (Aisp-get-Xdata "" vlaName))
      (if (setq flag1 (VL-POSITION "300000" parcelInfo))
	(progn
	  ;;;��д�ڵش���
	  (setq parcelNum (nth (+ flag1 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox1 parcelNum)
	  ;;;��дȨ����
	  (setq obligee (nth (+ flag1 2) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox2 obligee)
	)
      )
      ;;;��д����
      (if (setq flag2 (VL-POSITION "BEIZHI" parcelInfo))
	(progn
	  (setq north (nth (+ flag2 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox3 north)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox3 "(��δ��д����)")
	)
      )
      ;;;��д����
      (if (setq flag3 (VL-POSITION "DONGZHI" parcelInfo))
	(progn
	  (setq east (nth (+ flag3 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox4 east)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox4 "(��δ��д����)")
	)
      )
      ;;;��д����
      (if (setq flag4 (VL-POSITION "NANZHI" parcelInfo))
	(progn
	  (setq south (nth (+ flag4 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox5 south)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox5 "(��δ��д����)")
	)
      )
      ;;;��д����
      (if (setq flag5 (VL-POSITION "XIZHI" parcelInfo))
	(progn
	  (setq west (nth (+ flag5 1) parcelInfo))
	  (dcl-Control-SetText Interface/MainFrame/TextBox6 west)
	)
	(progn
	  (dcl-Control-SetText Interface/MainFrame/TextBox6 "(��δ��д����)")
	)
      )
      ;;;��дͼԪ���
      (dcl-Control-SetText Interface/MainFrame/TextBox7 (vlax-get-property vlaName 'Handle))
    )
  )
  )
)


;;;��������: Aisp-WeiteSingleXdata
;;;����: dire (����) content (����) vlaName (��������)
;;;����ֵ: T д��ɹ� nil д��ʧ��
;;;����: ���ڵ�д�뵥����������
(defun Aisp-WeiteSingleXdata (dire content vlaName / dataType fill data dataFill setXdata)
  ;;; ������չ��������
  (setq dataType (VL-CATCH-ALL-APPLY 'vlax-make-safearray (list vlax-vbInteger '(0 . 1))))
  (setq fill (VL-CATCH-ALL-APPLY 'vlax-safearray-fill (list dataType '(1001 1000))))
  ;;; ������չ����ֵ
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

;;;��������: Aisp-WeiteSouthXdata
;;;����: serialNumber (��Ҫ�滻�������б������) content (����) vlaName (��������)
;;;����ֵ: T д��ɹ� nil д��ʧ��
;;;����: �滻�����ڵص�SOUTH��Ϣ
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

;;;��������: Aisp-CheckDirectionInfo
;;;����: vlaName (��������)
;;;����ֵ: T ��Ϣ���� nil ��Ϣ������
;;;����: ����ڵص�������Ϣ�Ƿ�����
(defun Aisp-CheckDirectionInfo (vlaName / result directionList direction xtype xdata info)
  (setq result T)
  (setq directionList '("BEIZHI" "DONGZHI" "NANZHI" "XIZHI"))
  (foreach direction directionList
    (setq xtype nil xdata nil)
    (vla-GetXData vlaName direction 'xtype 'xdata)
    (if (and (/= xtype nil) (/= xdata nil))
      ;;;�޷���ȡ��ָ���ķ������չ����,�ж���Ϣ������
      (progn
	;;;ȡ����д�ķ�����Ϣ
	(setq info (cadr (MAPCAR 'vlax-variant-value
				 (vlax-safearray->list xdata)
			 )
		   )
	)
	(if (or (= info "") (= info " "))
	  ;;;��ȡ������ϢΪ "" ���� " ",�ж���ϢΪ������
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

;;;��������: Aisp-OutputDirectionInfo
;;;����: �޲���
;;;����ֵ:
;;;resultList
;;;sample:(list
;;;  		(list "DirectionNum" num)
;;;  		(list "incomDirecNum" num)
;;;  		(list "incomDirecList" (list object .....))
;;;		(list "DirecList" (list object....))
;;;	  )
;;;����: ��ȡ��ǰͼ�����ݿ�Ľ�ַ������,������������ַ������,������������ַ�ߵ�ͼԪ���,�����ڵص�vla����
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
	    ;;;��ʱ������
	    counter 0
	    ;;;��ַ������
	    DirectionNum 0
	    ;;;������������ַ������
	    incomDirecNum 0
	    ;;;������������ַ�߶����
	    incomDirecList nil
	    ;;;�����ڵض���� (AutoLisp ͼԪ)
	    DirecList nil
      )
      (repeat (sslength ss)
	(setq vlaName (vlax-ename->vla-object (ssname ss counter)))
	(setq counter (1+ counter))
	;;;�ж��Ƿ�Ϊ�ڵ�ʵ��
	(if (Aisp-Judge-Parcel vlaName)
	  (progn
	    (setq DirectionNum (1+ DirectionNum))
	    (setq DirecList (cons vlaName DirecList))
	    (if (not (Aisp-CheckDirectionInfo vlaName))
	      (progn
		(setq incomDirecNum (1+ incomDirecNum))
		;;;ȡ�����������������ͼԪ���
		(setq hand (vla-get-Handle vlaName))
		(setq incomDirecList (cons hand incomDirecList))
  	      )
	    )
	  )
	)
      )
      ;;;���������
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

