;;;����¼�빦�ܵķ�Ӧ��

;;;2����Ӧ��
;;;����Ӧ��:  "DirectionReactor" ��ǰͼ�����ݿ�������ڵض���
;;;�༭����Ӧ��: "CassRecator" ��Ӧcass������ƽ�ַ�ߵ�����


;;;�����༭����Ӧ��
(if (= CassCommandReactor nil)
  (setq CassCommandReactor (VLR-Editor-Reactor "CassRecator" '((:VLR-commandEnded . Aisp-vlr-cassCommandReactor))))
)




;;;��ȡ��ǰͼ�����ݿ���Ϣ
;;;sample:(list
;;;  		(list "DirectionNum" num)
;;;  		(list "incomDirecNum" num)
;;;  		(list "incomDirecList" (list object .....))
;;;		(list "DirecList" (list object....))
;;;	  )
(setq DirecInfoList (Aisp-OutputDirectionInfo))
;;;��ǰͼ�����ݿ�������ڵ�vla����,Ϊ����Ӧ����ӵ����
(setq DirectionOwnerList (cdr (assoc "DirecList" DirecInfoList)))


;;;��������Ӧ��
(if (/= DirectionOwnerList nil)
  (setq DirectionObjectReactor (vlr-object-reactor DirectionOwnerList "DirectionReactor" '((:vlr-modifiedXData . Aisp-vlr-updateInterFace))))
)


;;;��������: Aisp-vlr-updateInterFace
;;;����: ReactorObject (���ûص������� VLR ����) OwnerObject (Ӧ���¼��� VLA ����������ߡ�) PaemList (���ض��¼����������������Ԫ�ء�)
;;;����ֵ: ��
;;;����: ����ַ�߶�����չ���ݱ��޸�ʱ,����������Ϣ������,ɾ������б���ڵ�����
(defun Aisp-vlr-updateInterFace (OwnerObject ReactorObject PaemList / strHand)
  ;;;�жϽ�ַ��������Ϣ�Ƿ�����
  (if (Aisp-CheckDirectionInfo OwnerObject)
	(progn
	  (if (dcl-Form-IsActive Interface/MainFrame)
	    (progn
	      (setq strHand (vlax-get-property OwnerObject 'Handle))
	      ;;;ɾ���������б����Ŀ(�Ѿ�����Ϊ��ȷ���ڵ���Ϣ)
	      (if (dcl-ListBox-DeleteItem
		    Interface/MainFrame/ListBox1
		    (dcl-ListBox-FindStringExact
		      Interface/MainFrame/ListBox1
		      strHand
		      0
		    )
		  )
		(progn
		  ;;;���ô���Ĳ������ڵ���Ϣ����
		  (dcl-Control-SetCaption Interface/MainFrame/Unfinished (itoa (- (atoi (dcl-Control-GetCaption Interface/MainFrame/Unfinished)) 1)))
		)
	      )
	    )
	  )
	)
  )
)



;;;��������: Aisp-vlr-cassCommandReactor
;;;����: ReactorObject (���ûص������� VLR ����)  PaemList (���ض��¼����������������Ԫ��,�˴�Ϊ"����������ַ���")
;;;����ֵ: ��
;;;����: ���û�ͨ��CASS����,�����µĽ�ַ�߶����,��Ӧ���¼�
(defun Aisp-vlr-cassCommandReactor (ReactorObject PaemList / commandStr contentList incomDirecList)
  (setq commandStr (car PaemList))
  (if (or (= commandStr "JZLINE") (= commandStr "PLTOJZLINE"))
    (progn
      (if (dcl-Form-IsActive Interface/MainFrame)
	(progn
	  (setq contentList (Aisp-OutputDirectionInfo))
	  (if (/= contentList nil)
	    (progn
;;;���¶���Ӧ����ӵ����
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







