package com.sy.vo;

public class IngredientVO {

	private int ingredientNo;
	private String ingredient;
	
	public IngredientVO() {}
	public IngredientVO(int ingredientNo, String ingredient) {
		this.ingredientNo = ingredientNo;
		this.ingredient = ingredient;
	}
	public int getIngredientNo() {
		return ingredientNo;
	}
	public void setIngredientNo(int ingredientNo) {
		this.ingredientNo = ingredientNo;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	
	
}
