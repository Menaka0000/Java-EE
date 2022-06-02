package dao;

import dao.custom.impl.CustomerDAOImpl;
import dao.custom.impl.ItemDAOImpl;
import dao.custom.impl.OrderDAOImpl;
import dao.custom.impl.OrderDetailDAOImpl;

public class DAOFactory {
    private static DAOFactory daoFactory;

    public static DAOFactory getDAOFactory(){
        if (daoFactory==null){daoFactory=new DAOFactory();}
        return daoFactory;
    }

    public SuperDAO getDAO(DAOTypes types){
        switch (types) {
            case CUSTOMER:return new CustomerDAOImpl();
            case ITEM:return new ItemDAOImpl();
            case ORDER:return new OrderDAOImpl();
            case ORDER_DETAIL:return new OrderDetailDAOImpl();
            /*case QUERY:return new QueryDAOImpl();*/
            default:return null;
        }
    }
    public  enum DAOTypes{
        CUSTOMER,ITEM,ORDER,ORDER_DETAIL,QUERY
    }
}
