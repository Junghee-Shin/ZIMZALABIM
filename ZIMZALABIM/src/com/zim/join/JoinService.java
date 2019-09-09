package com.zim.join;

import java.util.List;

import org.apache.log4j.Logger;
import com.zim.cmn.DTO;
import com.zim.cmn.SearchVO2;
import com.zim.member.MemberVO;


public class JoinService {
	//private   JoinVO JoinVO = null;

	private final Logger LOG=Logger.getLogger(JoinDao.class);
	
	private JoinDao joinDao;
	
	public JoinService(){
		joinDao=new JoinDao();
	}
	
	public int do_insert(DTO dto){
		JoinVO vo = (JoinVO) dto; //회원ID, 선택된 상품
		JoinVO oldVO = joinDao.do_joinlist_selectOne(vo);//해당유저가 해당 상품을 산적이 있으면 담을 기존정보 vo 
		int oldCnt = 0;
		int newCnt = 0;
		
		//셀렉트해서 해당 정보가 있으면
		if(oldVO!=null){
			oldCnt = Integer.parseInt(oldVO.getJoin_cnt());//기존 상품 구매cnt
			newCnt = Integer.parseInt(vo.getJoin_cnt());//새로 상품 구매 cnt
			newCnt = oldCnt+newCnt; //새로운 상품 구매 cnt =  기존cnt+새cnt
			vo.setJoin_cnt(Integer.toString(newCnt));//새 포인트를 담아서
		}
		//원래의 카운트 + 새 카운트 = 새카운트
		
		return joinDao.do_insert(vo);
	}
	public int do_update(DTO dto){
		
		return joinDao.do_update(dto);
	}
	public int do_update2(DTO dto){
		
		return joinDao.do_update2(dto);
	}
	public int do_delete(DTO dto){
		
		return joinDao.do_delete(dto);
	}
	public JoinVO do_selectOne(DTO dto){
		
		return joinDao.do_selectOne(dto);
	}	
	public List<JoinVO>do_retrieve(DTO dto){
		
		return joinDao.do_retrieve(dto );
		
	}
	public List<JoinVO>do_retrieve2(DTO dto){
		return joinDao.do_retrieve2(dto );
	}
	

}

