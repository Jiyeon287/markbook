package com.markbook.domain;

public class mk_booktestVO {
	private int novel;
	private int economy;
	private int essay;
	private int travel;
	private int it;
	private int history;
	
	public int getNovel() {
		return novel;
	}
	public void setNovel(int novel) {
		this.novel = novel;
	}
	public int getEconomy() {
		return economy;
	}
	public void setEconomy(int economy) {
		this.economy = economy;
	}
	public int getEssay() {
		return essay;
	}
	public void setEssay(int essay) {
		this.essay = essay;
	}
	public int getTravel() {
		return travel;
	}
	public void setTravel(int travel) {
		this.travel = travel;
	}
	public int getIt() {
		return it;
	}
	public void setIt(int it) {
		this.it = it;
	}
	public int getHistory() {
		return history;
	}
	public void setHistory(int history) {
		this.history = history;
	}
	@Override
	public String toString() {
		return "mk_booktestVO [novel=" + novel + ", economy=" + economy + ", essay=" + essay + ", travel=" + travel
				+ ", it=" + it + ", history=" + history + "]";
	}
	
	

}
