package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Yqlj
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Yqlj
 */

public class YqljDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(YqljDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Yqlj transientInstance) {
        log.debug("saving Yqlj instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Yqlj persistentInstance) {
        log.debug("deleting Yqlj instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Yqlj findById(java.lang.Integer id) {
        log.debug("getting Yqlj instance with id: " + id);
        try {
            Yqlj instance = (Yqlj) getHibernateTemplate().get("pojo.Yqlj", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Yqlj instance) {
        log.debug("finding Yqlj instance by example");
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
        log.debug("finding Yqlj instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Yqlj as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Yqlj instances");
        try {
            String queryString = "from Yqlj";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Yqlj merge(Yqlj detachedInstance) {
        log.debug("merging Yqlj instance");
        try {
            Yqlj result = (Yqlj) getHibernateTemplate().merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Yqlj instance) {
        log.debug("attaching dirty Yqlj instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Yqlj instance) {
        log.debug("attaching clean Yqlj instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static YqljDAO getFromApplicationContext(ApplicationContext ctx) {
        return (YqljDAO) ctx.getBean("YqljDAO");
    }
}