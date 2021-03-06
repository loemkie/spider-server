package com.lmk.common.model;

import com.jfinal.plugin.activerecord.ActiveRecordPlugin;

/**
 * Generated by JFinal, do not modify this file.
 * <pre>
 * Example:
 * public void configPlugin(Plugins me) {
 *     ActiveRecordPlugin arp = new ActiveRecordPlugin(...);
 *     _MappingKit.mapping(arp);
 *     me.add(arp);
 * }
 * </pre>
 */
public class _MappingKit {
	
	public static void mapping(ActiveRecordPlugin arp) {
//		arp.addMapping("blog", "id", Blog.class);
		arp.addMapping("vultr_submit_data", VultrSubmitData.class);
		arp.addMapping("card_id_assign", CardIdAssign.class);
		arp.addMapping("office", Office.class);
		arp.addMapping("id_card_info", IdCardInfo.class);
	}
}

