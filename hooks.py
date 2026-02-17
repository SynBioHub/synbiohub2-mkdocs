import os

def on_config(config, **kwargs):
    """
    Hook to inject environment variable for backend URL into mkdocs config.
    The SYNBIOHUB_BACKEND_URL environment variable can be used to override
    the default backend URL (localhost).
    """
    backend_url = os.environ.get('SYNBIOHUB_BACKEND_URL', 'http://localhost')
    
    # Add the backend URL to extra context for use in templates
    if 'extra' not in config:
        config['extra'] = {}
    
    config['extra']['backend_url'] = backend_url
    
    return config
