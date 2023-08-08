package gg.lolco.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import gg.lolco.model.dao.StoreDao;
import gg.lolco.model.vo.CardPack;
import gg.lolco.model.vo.EmoPack;
import gg.lolco.model.vo.Member;
import gg.lolco.model.vo.PointItem;

@Service
public class StoreServiceImpl implements StoreService {
	private StoreDao dao;
	private SqlSession session;
	
	public StoreServiceImpl(StoreDao dao,SqlSession session) {
		this.dao=dao;
		this.session=session;
	}
	
	@Override
	public List<PointItem> selectItemMain(int no) {
		return dao.selectItemMain(session, no);
	}
	@Override
	public List<PointItem> selectItemDetail(Map<String,Object> param) {
		return dao.selectItemDetail(session, param);
	}
	
	@Override
	public List<EmoPack> itemPurchaseEmoticon(String name) {
		return dao.itemPurchaseEmoticon(session,name);
	}
	@Override
	public List<CardPack> itemPurchaseCard(String name) {
		return dao.itemPurchaseCard(session,name);
	}
	
	@Override
	public String nickCkeck(String name) {
		return dao.nickCkeck(session,name);
	}
	
	@Override
	public void nickChange(Map<String, Object> param) {
		dao.nickChange(session,param);
	}

}
