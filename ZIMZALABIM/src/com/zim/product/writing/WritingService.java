 /**
 * @Class Name : imageController.java
 * @Description : 
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2019. 7. 15.           최초생성
 *
 * @author Zimzalabim
 * @since 2019. 7. 15. 
 * @version 1.0
 * @see
 *
 *  Copyright (C) by HR. KIM All right reserved.
 */
package com.zim.product.writing;

import java.util.List;

import org.apache.log4j.Logger;

import com.zim.cmn.DTO;
import com.zim.join.JoinDao;
import com.zim.join.JoinVO;
import com.zim.member.MemberDao;
import com.zim.member.MemberVO;
import com.zim.product.ProductDao;
import com.zim.product.ProductVO;
import com.zim.product.image.ImageVO;

/**
 * @author sist
 *
 */
public class WritingService {
	private final Logger LOG = Logger.getLogger(WritingService.class);
	private ProductDao productDao;
	private MemberDao memberDao;
	private JoinDao joinDao;
	
	public WritingService(){
		productDao = new ProductDao();
	}
	
	
	
	//상품삭제 시 포인트 개별 환불
	public int do_point_refund_delete(DTO dto, String price) {
		//프로덕트 넘버가 같으면, 아이디 찾아서 ,참여cnt*가격 해서, 포인트 환불
		ProductVO proVO = (ProductVO) dto;
		List<JoinVO> joinList = joinDao.do_refund_delete_retrieve(proVO); //프로덕트넘버 받아왔는데 아이디는 어떻게 찾아야하지??
		LOG.debug("라이팅컨트롤러proVO:"+proVO);
		LOG.debug("라이팅컨트롤러joinList:"+joinList);
		
		int flag = 0;
		
		for(JoinVO vo : joinList){
			JoinVO joinVO = new JoinVO();
			joinVO.setJoin_id(vo.getJoin_id());
			MemberVO member = memberDao.do_selectOne(joinVO);
			int memberPoint = Integer.parseInt(member.getPoint());//기존 보유 포인트
			int proPrice = Integer.parseInt(price);//상품금액
			int joinCnt = Integer.parseInt(vo.getJoin_cnt()); //참여수량
			memberPoint = proPrice*joinCnt;
			member.setPoint(Integer.toString(memberPoint));
			flag = memberDao.do_point_update(member);
		}
		return flag;
	}
	
	
	
	public int do_delete(DTO dto){
		return productDao.do_delete(dto);
	}

	public int do_update(DTO dto){
		return productDao.do_update(dto);
	}
	
	public int do_insert(DTO dto){
		return productDao.do_insert(dto);
	}
	
	public DTO do_selectOne(DTO dto) {
		return productDao.do_selectOne(dto);
	}
	
	
	
	public ProductVO do_select_productNo(DTO dto){
		return productDao.do_select_productNo(dto);
	}
	
	public ImageVO do_select_imageNo(DTO dto){
		return productDao.do_select_imageNo(dto);
	}
	
	public List<ProductVO> do_category_select(DTO dto) {
		return productDao.do_category_select(dto);
	}
	
	
	
	
	
}
