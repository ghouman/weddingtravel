package com.wt.bean.table;

/**
 * 地区表对应 island_package
 * @author sl
 *
 */
public class IslandPackageBean {
	
    private Integer id;
    private Integer areaId;//地区id
    private Integer islandId;//岛屿id
    private String title;//套餐名称
    
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getAreaId() {
		return areaId;
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
	public Integer getIslandId() {
		return islandId;
	}
	public void setIslandId(Integer islandId) {
		this.islandId = islandId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
}