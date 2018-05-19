package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Sysuser entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Sysuser
 */

public class SysuserDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(SysuserDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Sysuser transientInstance) {
        log.debug("saving Sysuser instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Sysuser persistentInstance) {
        log.debug("deleting Sysuser instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Sysuser findById(java.lang.Integer id) {
        log.debug("getting Sysuser instance with id: " + id);
        try {
            Sysuser instance = (Sysuser) getHibernateTemplate().get(
                    "pojo.Sysuser", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Sysuser instance) {
        log.debug("finding Sysuser instance by example");
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
        log.debug("finding Sysuser instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Sysuser as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Sysuser instances");
        try {
            String queryString = "from Sysuser";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Sysuser merge(Sysuser detachedInstance) {
        log.debug("merging Sysuser instance");
        try {
            Sysuser result = (Sysuser) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Sysuser instance) {
        log.debug("attaching dirty Sysuser instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Sysuser instance) {
        log.debug("attaching clean Sysuser instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static SysuserDAO getFromApplicationContext(ApplicationContext ctx) {
        return (SysuserDAO) ctx.getBean("SysuserDAO");
    }
}