package com.wt.dao;

import com.wt.model.Account;
import com.wt.model.Recommend;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Repository
public class RecommendDaoTest {
	
	@Resource
	private SqlSessionFactory sessionFactory;

	public SqlSessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SqlSessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}


    public List<Recommend> getRecommendById(int module_id) {
        List<Recommend> recommendList = new ArrayList<Recommend>();
        //SqlSession session = sessionFactory.openSession();
        //List<Recommend> recommendList = (List<Recommend>) session.selectList("recommend.getRecommendById");
        if(module_id==1){
            Recommend recommend1 = new Recommend();
                    recommend1.setImgUrl("images/index_side1.jpg");
                    recommend1.setContent("content");
                    recommend1.setTitle("title");
                    recommend1.setLinkUrl("http://www.baidu.com");
                    Recommend recommend2 = new Recommend();
                    recommend2.setImgUrl("images/index_side2.jpg");
                    recommend2.setContent("content");
                    recommend2.setTitle("title");
                    recommend2.setLinkUrl("list1.html");
                    Recommend recommend3 = new Recommend();
                    recommend3.setImgUrl("images/index_side3.jpg");
                    recommend3.setContent("content");
                    recommend3.setTitle("title");
                    recommend3.setLinkUrl("list2.jsp");
                    recommendList.add(recommend1);
                    recommendList.add(recommend2);
                    recommendList.add(recommend3);
        } else if(module_id==2){
            Recommend recommend1 = new Recommend();
                    recommend1.setImgUrl("images/index_side1.jpg");
                    recommend1.setContent("content");
                    recommend1.setTitle("title");
                    recommend1.setLinkUrl("http://www.baidu.com");
                    Recommend recommend2 = new Recommend();
                    recommend2.setImgUrl("images/index_side2.jpg");
                    recommend2.setContent("content");
                    recommend2.setTitle("title");
                    recommend2.setLinkUrl("list1.html");
                    Recommend recommend3 = new Recommend();
                    recommend3.setImgUrl("images/index_side3.jpg");
                    recommend3.setContent("content");
                    recommend3.setTitle("title");
                    recommend3.setLinkUrl("list2.jsp");
            Recommend recommend4 = new Recommend();
                                recommend4.setImgUrl("images/01.jpg");
                                recommend4.setContent("content");
                                recommend4.setTitle("title");
                                recommend4.setLinkUrl("list2.jsp");
            Recommend recommend5 = new Recommend();
                                recommend5.setImgUrl("images/02.jpg");
                                recommend5.setContent("content");
                                recommend5.setTitle("title");
                                recommend5.setLinkUrl("list2.jsp");
            Recommend recommend6 = new Recommend();
                                recommend6.setImgUrl("images/index_side3.jpg");
                                recommend6.setContent("content");
                                recommend6.setTitle("title");
                                recommend6.setLinkUrl("list2.jsp");
            Recommend recommend7 = new Recommend();
                                recommend7.setImgUrl("images/01.jpg");
                                recommend7.setContent("content");
                                recommend7.setTitle("title");
                                recommend7.setLinkUrl("list2.jsp");
                    recommendList.add(recommend1);
                    recommendList.add(recommend2);
                    recommendList.add(recommend3);
                    recommendList.add(recommend4);
                    recommendList.add(recommend5);
                    recommendList.add(recommend6);
                    recommendList.add(recommend7);
        } else if(module_id==3){
                    Recommend recommend1 = new Recommend();
                            recommend1.setImgUrl("images/popular/01.png");
                            recommend1.setContent("content");
                            recommend1.setTitle("title");
                            recommend1.setLinkUrl("http://www.baidu.com");
                            Recommend recommend2 = new Recommend();
                            recommend2.setImgUrl("images/popular/02.png");
                            recommend2.setContent("content");
                            recommend2.setTitle("title");
                            recommend2.setLinkUrl("list1.html");
                            Recommend recommend3 = new Recommend();
                            recommend3.setImgUrl("images/popular/03.png");
                            recommend3.setContent("content");
                            recommend3.setTitle("title");
                            recommend3.setLinkUrl("list2.jsp");
                    Recommend recommend4 = new Recommend();
                                        recommend4.setImgUrl("images/popular/04.png");
                                        recommend4.setContent("content");
                                        recommend4.setTitle("title");
                                        recommend4.setLinkUrl("list2.jsp");
                    Recommend recommend5 = new Recommend();
                                        recommend5.setImgUrl("images/popular/05.png");
                                        recommend5.setContent("content");
                                        recommend5.setTitle("title");
                                        recommend5.setLinkUrl("list2.jsp");
                            recommendList.add(recommend1);
                            recommendList.add(recommend2);
                            recommendList.add(recommend3);
                            recommendList.add(recommend4);
                            recommendList.add(recommend5);
                }

        return recommendList;
    }

    @SuppressWarnings("unchecked")
	public List<Account> getAllAccount(){
		SqlSession session = sessionFactory.openSession();
		List<Account> accountFromDb = (List<Account>) session.selectList("account.getAllAccount");
		return accountFromDb;
		
	}

}
