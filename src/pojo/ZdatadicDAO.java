package pojo;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

/**
 * A data access object (DAO) providing persistence and search support for
 * Zdatadic entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 *
 * @author MyEclipse Persistence Tools
 * @see pojo.Zdatadic
 */

public class ZdatadicDAO extends HibernateDaoSupport {
    private static final Log log = LogFactory.getLog(ZdatadicDAO.class);

    protected void initDao() {
        // do nothing
    }

    public void save(Zdatadic transientInstance) {
        log.debug("saving Zdatadic instance");
        try {
            getHibernateTemplate().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }

    public void delete(Zdatadic persistentInstance) {
        log.debug("deleting Zdatadic instance");
        try {
            getHibernateTemplate().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }

    public Zdatadic findById(java.lang.Integer id) {
        log.debug("getting Zdatadic instance with id: " + id);
        try {
            Zdatadic instance = (Zdatadic) getHibernateTemplate().get(
                    "pojo.Zdatadic", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }

    public List findByExample(Zdatadic instance) {
        log.debug("finding Zdatadic instance by example");
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
        log.debug("finding Zdatadic instance with property: " + propertyName
                + ", value: " + value);
        try {
            String queryString = "from Zdatadic as model where model."
                    + propertyName + "= ?";
            return getHibernateTemplate().find(queryString, value);
        } catch (RuntimeException re) {
            log.error("find by property name failed", re);
            throw re;
        }
    }

    public List findAll() {
        log.debug("finding all Zdatadic instances");
        try {
            String queryString = "from Zdatadic";
            return getHibernateTemplate().find(queryString);
        } catch (RuntimeException re) {
            log.error("find all failed", re);
            throw re;
        }
    }

    public Zdatadic merge(Zdatadic detachedInstance) {
        log.debug("merging Zdatadic instance");
        try {
            Zdatadic result = (Zdatadic) getHibernateTemplate().merge(
                    detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(Zdatadic instance) {
        log.debug("attaching dirty Zdatadic instance");
        try {
            getHibernateTemplate().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public void attachClean(Zdatadic instance) {
        log.debug("attaching clean Zdatadic instance");
        try {
            getHibernateTemplate().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }

    public static ZdatadicDAO getFromApplicationContext(ApplicationContext ctx) {
        return (ZdatadicDAO) ctx.getBean("ZdatadicDAO");
    }
}