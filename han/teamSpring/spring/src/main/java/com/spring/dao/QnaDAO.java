package com.spring.dao;

    import java.util.Date;
import java.util.List;
    import com.spring.dto.Qna;

public interface QnaDAO {
	public List<Qna> getQnaList();
	public Qna getQna(int no);
	public void insQna(Qna qna);
	public void upQna(Qna qna);
	public void delQna(int no);
	public int getPlevel(int parno);
	public List<Qna> getAnswers(int parno);
	public void delAnswers(int parno);
	public void vcntCount(int no);
}
//private int no;
//private int plevel;
//private int parno;
//private String title;
//private String content;
//private Date resdate; 
//private int visited;
//private String aid;
