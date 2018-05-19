package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Zxjl
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Zxjl
 */

public class ZxjlDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(ZxjlDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Zxjl transientInstance) {
        log.debug("saving Zxjl instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Zxjl persistentInstance) {
        log.debug("deleting Zxjl instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Zxjl findById(java.lang.Integer id) {
        log.debug("getting Zxjl instance with id: " + id);
        try {
            Zxjl instance = (Zxjl) getHibernateTemplate().get("pojo.Zxjl", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Zxjl instance) {
        log.debug("finding Zxjl instance by example");
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
        log.debug("finding Zxjl instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Zxjl as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Zxjl instances");
        try {
            String queryString = "from Zxjl";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Zxjl merge(Zxjl detachedInstance) {
        log.debug("merging Zxjl instance");
        try {
            Zxjl result = (Zxjl) getHibernateTemplate().merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Zxjl instance) {
        log.debug("attaching dirty Zxjl instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Zxjl instance) {
        log.debug("attaching clean Zxjl instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static ZxjlDAO getFromApplicationContext(ApplicationContext ctx) {
        return (ZxjlDAO) ctx.getBean("ZxjlDAO");
    }
}