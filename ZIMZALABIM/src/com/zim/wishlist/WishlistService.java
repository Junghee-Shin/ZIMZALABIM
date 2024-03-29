
package com.zim.wishlist;

import org.apache.log4j.Logger;


import com.zim.cmn.DTO;
import java.util.List;


/**
 * @author sist
 *
 */
public class WishlistService {

	private final Logger LOG=Logger.getLogger(WishlistService.class);
	
	private WishlistDao WishlistDao;
	
	public WishlistService(){
		WishlistDao = new WishlistDao();
	}
	
	public int do_delete(DTO dto){
		return WishlistDao.do_delete(dto);
	}
	
	public int do_insert(DTO dto){
		return WishlistDao.do_insert(dto);
	}
	
	public WishlistVO do_selectOne(DTO dto){
		return WishlistDao.do_selectOne(dto);
		
	}
	public int do_update(DTO dto){
		return WishlistDao.do_delete(dto);
	}
	public List<WishlistVO> do_retrieve(DTO dto) {
		return WishlistDao.do_retrieve(dto);
	}
	
}
