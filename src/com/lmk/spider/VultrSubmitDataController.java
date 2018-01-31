package com.lmk.spider;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.ext.kit.DateKit;
import com.lmk.common.model.VultrSubmitData;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class VultrSubmitDataController extends Controller {
	
	static VultrSubmitDataService service = new VultrSubmitDataService();
	
	public void index() {
		setAttr("blogPage", service.paginate(getParaToInt(0, 1), 10));
		render("blog.html");
	}
	
	public void add() {
	}
	
	/**
	 * save 与 update 的业务逻辑在实际应用中也应该放在 serivce 之中，
	 * 并要对数据进正确性进行验证，在此仅为了偷懒
	 */
	public void save() {
		VultrSubmitData vultrSubmitData = getModel(VultrSubmitData.class,"",true);
		vultrSubmitData.set("id", UUID.randomUUID().toString().replaceAll("-", ""));
		Date date = new Date();
		Calendar ca=Calendar.getInstance();
		ca.setTime(date);
		ca.add(Calendar.HOUR_OF_DAY, 8);
		vultrSubmitData.set("update_date",ca.getTime());
		vultrSubmitData.save();
		renderJson(vultrSubmitData);
	}
	
	public void list() {
		VultrSubmitData vultrSubmitData = new VultrSubmitData();
		List<VultrSubmitData> vultrSubmitDataList = service.findList(vultrSubmitData);
		String str = "";
		for (VultrSubmitData vultrSubmitData2 : vultrSubmitDataList) {
			str+=vultrSubmitData2.get("mobile")+"|"+vultrSubmitData2.get("spec")+"|"+DateKit.toStr(vultrSubmitData2.getDate("update_date"), DateKit.timeStampPattern)+
					"|"+vultrSubmitData2.get("card_id")+"|"+vultrSubmitData2.get("city")+"\n";
		}
		renderText(str);
	}
	
	public void sale() {
		VultrSubmitData vultrSubmitData = new VultrSubmitData();
		List<VultrSubmitData> vultrSubmitDataList = service.findSaleList(vultrSubmitData);
		String str = "";
		for (VultrSubmitData vultrSubmitData2 : vultrSubmitDataList) {
			str+=vultrSubmitData2.get("mobile")+"<br/>";
		}
		renderHtml(str);
	}
	public void edit() {
		setAttr("blog", service.findById(getParaToInt()));
	}
	
	/**
	 * save 与 update 的业务逻辑在实际应用中也应该放在 serivce 之中，
	 * 并要对数据进正确性进行验证，在此仅为了偷懒
	 */
	@Before(BlogValidator.class)
	public void update() {
		getBean(VultrSubmitData.class).update();
		redirect("/blog");
	}
	
	public void delete() {
		service.deleteById(getParaToInt());
		redirect("/blog");
	}
}


