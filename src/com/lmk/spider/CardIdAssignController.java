package com.lmk.spider;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.jfinal.aop.Before;
import com.jfinal.core.Controller;
import com.jfinal.ext.kit.DateKit;
import com.jfinal.plugin.activerecord.Db;
import com.lmk.common.model.CardIdAssign;
import com.lmk.common.model.IdCardInfo;
import com.lmk.common.model.Office;

/**
 * 本 demo 仅表达最为粗浅的 jfinal 用法，更为有价值的实用的企业级用法
 * 详见 JFinal 俱乐部: http://jfinal.com/club
 * 
 * BlogController
 * 所有 sql 与业务逻辑写在 Model 或 Service 中，不要写在 Controller 中，养成好习惯，有利于大型项目的开发与维护
 */
public class CardIdAssignController extends Controller {
	
	static CardIdAssignService service = new CardIdAssignService();
	
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
		CardIdAssign cardIdAssign = getModel(CardIdAssign.class,"",true);
		cardIdAssign.set("id", UUID.randomUUID().toString().replaceAll("-", ""));
		cardIdAssign.set("update_date",new Date());
		cardIdAssign.set("is_submit", "0");
		
		Office office  = service.findOffice(cardIdAssign.getStr("office_name"));
		if(office!=null){
			cardIdAssign.set("office_id", office.get("office_id"));
			cardIdAssign.save();
			//同时保存一份数据id_card_info
			IdCardInfo cardInfo = service.findIdCardInfo(cardIdAssign.getStr("card_id"));
			if(cardInfo == null){
				IdCardInfo idCardInfo = getModel(IdCardInfo.class,"",true);
				idCardInfo.set("update_date",new Date());
				idCardInfo.save();
			}
			redirect("/cia/add");
//			renderJson(cardIdAssign);
		}else{
			renderText("营业厅名称不存在!");
		}
	}
	
	public void list() {
		CardIdAssign cardIdAssign = new CardIdAssign();
		List<CardIdAssign> cardIdAssignList = service.findList(cardIdAssign);
		String str = "";
		for (CardIdAssign cardIdAssign2 : cardIdAssignList) {
			str+=cardIdAssign2.get("mobile")+"|"+cardIdAssign2.get("user_name")+"|"+cardIdAssign2.get("card_id")+"|"+cardIdAssign2.get("office_name")+"|"+DateKit.toStr(cardIdAssign2.getDate("update_date"), DateKit.timeStampPattern)+"\n";
		}
		renderText(str);
	}
	
	public void assign() {
		CardIdAssign cardIdAssign = new CardIdAssign();
		List<CardIdAssign> cardIdAssignList = service.findAssignList(cardIdAssign);
		String str = "";
		for (CardIdAssign cardIdAssign2 : cardIdAssignList) {
			str+="<a href=\"update?id="+cardIdAssign2.getStr("id")+"\">置底"+"</a>|"+cardIdAssign2.get("mobile")+"|"+cardIdAssign2.get("user_name")+"|"+cardIdAssign2.get("card_id")+"|"+cardIdAssign2.get("office_name")+"|"+DateKit.toStr(cardIdAssign2.getDate("update_date"), DateKit.timeStampPattern)+"<br/>";
		}
		renderHtml(str);
	}
	/**
	 * 启动标志为0
	 */
	public void start() {
		Db.update("update spider_control set start_ind='0'");
		renderHtml("start_ind:0:等待");
	}
	/**
	 * 启动标志为3,每天监控会自动启动 会更新这个标志为0，如需停止，每天都需要改为3
	 */
	public void stop() {
		Db.update("update spider_control set start_ind='3'");
		renderHtml("start_ind:3:停止");
	}
	public void startSpider() {
		Db.update("update spider_control set start_ind='1'");
		renderHtml("start_ind:1:启动");
	}
	/**
	 * save 与 update 的业务逻辑在实际应用中也应该放在 serivce 之中，
	 * 并要对数据进正确性进行验证，在此仅为了偷懒
	 */
	public void update() {
		String id = getPara("id");
		CardIdAssign cardIdAssign = service.findById(id);
		cardIdAssign.set("update_date",new Date());
		cardIdAssign.update();
		redirect("/cia/assign");
	}
	
	public void delete() {
		service.deleteById(getParaToInt());
		redirect("/blog");
	}
}


