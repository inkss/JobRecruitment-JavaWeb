package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Mixinfo entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Mixinfo
 */

public class MixinfoDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(MixinfoDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Mixinfo transientInstance) {
        log.debug("saving Mixinfo instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Mixinfo persistentInstance) {
        log.debug("deleting Mixinfo instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Mixinfo findById(java.lang.Integer id) {
        log.debug("getting Mixinfo instance with id: " + id);
        try {
            Mixinfo instance = (Mixinfo) getHibernateTemplate().get(
                    "pojo.Mixinfo", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Mixinfo instance) {
        log.debug("finding Mixinfo instance by example");
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
        log.debug("finding Mixinfo instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Mixinfo as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Mixinfo instances");
        try {
            String queryString = "from Mixinfo";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Mixinfo merge(Mixinfo detachedInstance) {
        log.debug("merging Mixinfo instance");
        try {
            Mixinfo result = (Mixinfo) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Mixinfo instance) {
        log.debug("attaching dirty Mixinfo instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Mixinfo instance) {
        log.debug("attaching clean Mixinfo instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static MixinfoDAO getFromApplicationContext(ApplicationContext ctx) {
        return (MixinfoDAO) ctx.getBean("MixinfoDAO");
    }
}