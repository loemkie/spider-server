package com.lmk.spider;

import java.util.List;

import com.jfinal.plugin.activerecord.Page;
import com.lmk.common.model.VultrSubmitData;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogService
 * 所有 sql 与业务逻辑写在 Service 中，不要放在 Model 中，更不
 * 要放在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class VultrSubmitDataService {
	
	/**
	 * 所有的 dao 对象也放在 Service 中
	 */
	private static final VultrSubmitData dao = new VultrSubmitData().dao();
	
	public Page<VultrSubmitData> paginate(int pageNumber, int pageSize) {
		return dao.paginate(pageNumber, pageSize, "select *", "from vultr_submit_data order by update_date asc");
	}
	/**
	 * 只能查询当天
	 * @param vultrSubmitData
	 * @return
	 */
	public List<VultrSubmitData> findList(VultrSubmitData vultrSubmitData){
//		return dao.find("select * from vultr_submit_data where TO_DAYS(NOW( ) ) - TO_DAYS( update_date) >= 0 order by update_date desc");
		return dao.find("select * from vultr_submit_data where DATE_SUB(CURDATE(), INTERVAL 15 DAY) <= update_date order by update_date desc");
	}
	/**
	 * 只能查询当天和昨天的数据
	 * @param vultrSubmitData
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<VultrSubmitData> findSaleList(VultrSubmitData vultrSubmitData){
//		return dao.find("select * from vultr_submit_data where TO_DAYS(NOW( ) ) - TO_DAYS( update_date) = 0 order by spec,mobile,update_date desc");
		List  specList= dao.find("select a.*,1 count from vultr_submit_data a,(select TO_DAYS(max(update_date)) max_date from vultr_submit_data) b where TO_DAYS( update_date) =b.max_date and spec in('1','0')");
//		List  saleList= dao.find("select a.* from vultr_submit_data a,(select TO_DAYS(max(update_date)) max_date from vultr_submit_data) b where TO_DAYS( update_date) =b.max_date and spec not in('1','0') order by mobile,update_date desc");
		List  saleList= dao.find("select a.*,(SELECT cn from (select  mobile,count(1) cn from vultr_submit_data group by mobile) b where b.mobile=a.mobile) count from vultr_submit_data a,(select TO_DAYS(max(update_date)) max_date from vultr_submit_data) b where TO_DAYS( update_date) =b.max_date and spec not in('1','0') order by mobile,update_date desc");
		specList.addAll(saleList);
		return specList;
	}
	public VultrSubmitData findById(int id) {
		return dao.findById(id);
	}
	
	public void deleteById(int id) {
		dao.deleteById(id);
	}
}
