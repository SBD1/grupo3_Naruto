#!/usr/bin/env python
import yaml
import psycopg2
import psycopg2.extras
import logging

log = logging.getLogger(__name__)


def get_database_and_cursor():
    conn = None
    try:
        # read connection parameters
        params = get_connection_from_profile()
        # connect to the PostgreSQL server
        log.info('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(**params)
        # create a cursor
        cur = conn.cursor()
        # execute a statement
        log.info('PostgreSQL database version:')
        cur.execute('SELECT version()')
        # display the PostgreSQL database server version
        db_version = cur.fetchone()
        log.info(db_version)
        # close the communication with the PostgreSQL
        cur.close()
        log.info("Connected to PostgreSQL database!")
    except (Exception, psycopg2.DatabaseError) as error:
        log.exception("Failed to get database connection!\n", error)
        return None, 'fail'
    return [conn, conn.cursor(cursor_factory = psycopg2.extras.RealDictCursor)]


def get_connection_from_profile(config_file_name="default_profile.yaml"):
    """
    Sets up database connection from config file.
    Input:
    config_file_name: File containing PGHOST, PGUSER,
                      PGPASSWORD, PGDATABASE, PGPORT, which are the
                      credentials for the PostgreSQL database
    """
    with open(config_file_name, 'r') as f:
        vals = yaml.safe_load(f)
    if not ('PGHOST' in vals.keys() and
            'PGUSER' in vals.keys() and
            'PGPASSWORD' in vals.keys() and
            'PGDATABASE' in vals.keys() and
            'PGPORT' in vals.keys()):
        raise Exception('Bad config file: ' + config_file_name)
    return set_params(vals['PGDATABASE'], vals['PGUSER'],
                      vals['PGHOST'], vals['PGPORT'],
                      vals['PGPASSWORD'])


def set_params(db, user, host, port, password):
    """
    Set params in psycopg2 connection format.
    Input:
    db: database name
    user: Username
    host: Hostname of the database server
    port: Port number
    password: Password for the database
    """
    params = {}
    params['database'] = db
    params['user'] = user
    params['host'] = host
    params['port'] = port
    params['password'] = password
    return params