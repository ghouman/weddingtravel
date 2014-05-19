package com.wt.bean.table;

/**
 * 岛屿表对应 island
 * @author sl
 *
 */
public class IslandBean {
	
    private Integer id;
    private Integer areaId;//地区id
    private String name;//岛屿名称
    private String country;

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAreaId() {
		return areaId;
	}
	public void setAreaId(Integer areaId) {
		this.areaId = areaId;
	}
}