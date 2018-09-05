package com.mint.project.aop;


import com.mint.project.dtos.GenreDto;
import com.mint.project.dtos.MovieDto;

public class MovieSet {

	private MovieDto mdto;
	private GenreDto gdto;
	
	public MovieSet(MovieDto mdto, GenreDto gdto) {
		super();
		this.mdto = mdto;
		this.gdto = gdto;
	}

	public MovieDto getMdto() {
		return mdto;
	}

	public void setMdto(MovieDto mdto) {
		this.mdto = mdto;
	}

	public GenreDto getGdto() {
		return gdto;
	}

	public void setGdto(GenreDto gdto) {
		this.gdto = gdto;
	}
	
	
	
//	private ArrayList<MovieDto> initmovie;
//	private ArrayList<GenreDto> initgenre;
//	
//	public MovieSet(ArrayList<MovieDto> initmovie, ArrayList<GenreDto> initgenre ) {
//		this.initmovie= initmovie;
//		this.initgenre= initgenre;
//	}
//	
//	public ArrayList<MovieDto> getInitmovie() {return initmovie; }
//	public ArrayList<GenreDto> getInitgenre() {return initgenre; }
	
}
