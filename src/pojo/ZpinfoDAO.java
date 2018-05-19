package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Zpinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Zpinfo
 */

public class ZpinfoDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(ZpinfoDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Zpinfo transientInstance) {
        log.debug("saving Zpinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Zpinfo persistentInstance) {
        log.debug("deleting Zpinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Zpinfo findById(java.lang.Integer id) {
        log.debug("getting Zpinfo instance with id: " + id);
        try {
            Zpinfo instance = (Zpinfo) getHibernateTemplate().get(
                    "pojo.Zpinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Zpinfo instance) {
        log.debug("finding Zpinfo instance by example");
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
        log.debug("finding Zpinfo instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Zpinfo as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Zpinfo instances");
        try {
            String queryString = "from Zpinfo";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Zpinfo merge(Zpinfo detachedInstance) {
        log.debug("merging Zpinfo instance");
        try {
            Zpinfo result = (Zpinfo) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Zpinfo instance) {
        log.debug("attaching dirty Zpinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Zpinfo instance) {
        log.debug("attaching clean Zpinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static ZpinfoDAO getFromApplicationContext(ApplicationContext ctx) {
        return (ZpinfoDAO) ctx.getBean("ZpinfoDAO");
    }
}