package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Hbnews entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Hbnews
 */

public class HbnewsDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(HbnewsDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Hbnews transientInstance) {
        log.debug("saving Hbnews instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Hbnews persistentInstance) {
        log.debug("deleting Hbnews instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Hbnews findById(java.lang.Integer id) {
        log.debug("getting Hbnews instance with id: " + id);
        try {
            Hbnews instance = (Hbnews) getHibernateTemplate().get(
                    "pojo.Hbnews", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Hbnews instance) {
        log.debug("finding Hbnews instance by example");
        try {
            List results = getHibernateTemplate().findByExample(instance);
            log.debug("find by example successful, result size: "
                    + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }

    public List findByProperty(String propertyName, Object value) {
        log.debug("finding Hbnews instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Hbnews as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Hbnews instances");
        try {
            String queryString = "from Hbnews";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Hbnews merge(Hbnews detachedInstance) {
        log.debug("merging Hbnews instance");
        try {
            Hbnews result = (Hbnews) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Hbnews instance) {
        log.debug("attaching dirty Hbnews instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Hbnews instance) {
        log.debug("attaching clean Hbnews instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static HbnewsDAO getFromApplicationContext(ApplicationContext ctx) {
        return (HbnewsDAO) ctx.getBean("HbnewsDAO");
    }
}