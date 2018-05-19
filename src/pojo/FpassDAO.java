package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for Fpass
 * entities. Transaction control of the save(), update() and delete() operations
 * can directly support Spring container-managed transactions or they can be
 * augmented to handle user-managed Spring transactions. Each of these methods
 * provides additional information for how to configure it for the desired type
 * of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Fpass
 */

public class FpassDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(FpassDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Fpass transientInstance) {
        log.debug("saving Fpass instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Fpass persistentInstance) {
        log.debug("deleting Fpass instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Fpass findById(java.lang.Integer id) {
        log.debug("getting Fpass instance with id: " + id);
        try {
            Fpass instance = (Fpass) getHibernateTemplate().get("pojo.Fpass",
                    id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Fpass instance) {
        log.debug("finding Fpass instance by example");
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
        log.debug("finding Fpass instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Fpass as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Fpass instances");
        try {
            String queryString = "from Fpass";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Fpass merge(Fpass detachedInstance) {
        log.debug("merging Fpass instance");
        try {
            Fpass result = (Fpass) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Fpass instance) {
        log.debug("attaching dirty Fpass instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Fpass instance) {
        log.debug("attaching clean Fpass instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static FpassDAO getFromApplicationContext(ApplicationContext ctx) {
        return (FpassDAO) ctx.getBean("FpassDAO");
    }
}