package Loaders.Factory;

import Datas.CGrille9x9;

public class GridLoader {
	private GridLoaderFactory strategy;
	
	public GridLoader(GridLoaderFactory strategy) {
		this.strategy = strategy;
	}
	
	public CGrille9x9 getGrid() {
		return strategy.getGrid();
	}
	
	public void setStrategy(GridLoaderFactory strategy) {
		this.strategy = strategy;
	}
}