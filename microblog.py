import sqlalchemy as sa
import sqlalchemy.orm as so
from app import create_app, db, cli
from app.models import User, Post

app = create_app()

if __name__ == "__main__":
    app.run()

@app.shell_context_processor
def make_shell_context():
    return {'sa': sa, 'so': so, 'db': db, 'User': User, 'Post': Post}