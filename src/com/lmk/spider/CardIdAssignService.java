package com.lmk.spider;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.lmk.common.model.CardIdAssign;
import com.lmk.common.model.IdCardInfo;
import com.lmk.common.model.Office;

/**
 * 已卖出的号码提交的配置服务
 * @author loemkie
 *
 */
public class CardIdAssignService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	private static final CardIdAssign dao = new CardIdAssign().dao();
	private static final Office officeDao = new Office().dao();
	private static final IdCardInfo idCardInfo = new IdCardInfo().dao();
	
	public Page<CardIdAssign> paginate(int pageNumber, int pageSize) {
		return dao.paginate(pageNumber, pageSize, "select *", "from card_id_assign order by update_date asc");
	}
	
	public List<CardIdAssign> findList(CardIdAssign cardIdAssign){
		return dao.find("select * from card_id_assign order by update_date desc");
	}
	/**
	 * 当天指定提交的号码
	 * @param CardIdAssign
	 * @return
	 */
	public List<CardIdAssign> findAssignList(CardIdAssign cardIdAssign){
//		return dao.find("select a.*,(select card_id from vultr_submit_data v where v.mobile=a.mobile order by v.update_date desc limit 1) as v_card_id,(select update_date from vultr_submit_data v where v.mobile=a.mobile order by v.update_date desc limit 1) as v_update_date from card_id_assign a where is_submit='0' order by update_date");
		return dao.find("select a.*,(select card_id from vultr_submit_data v where v.mobile=a.mobile and (TO_DAYS(a.update_date)-TO_DAYS(v.update_date))<=1 order by v.update_date desc limit 1) as v_card_id,(select update_date from vultr_submit_data v where v.mobile=a.mobile and (TO_DAYS(a.update_date)-TO_DAYS(v.update_date))<=1 order by v.update_date desc limit 1) as v_update_date from card_id_assign a where is_submit='0' order by update_date");
	}
	/**
	 * 根据营业厅名称查询营业厅ID
	 * @param office
	 * @return
	 */
	public Office findOffice(String office_name){
		String sql = "select office_id,office_name from office where office_name='"+office_name+"'";
		return  officeDao.findFirst(sql);
	}
	
	public IdCardInfo findIdCardInfo(String card_id){
		String sql = "select card_id from id_card_info where card_id='"+card_id+"'";
		return  idCardInfo.findFirst(sql);
	}
	
	public CardIdAssign findById(String id) {
		return dao.findById(id);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}
}
