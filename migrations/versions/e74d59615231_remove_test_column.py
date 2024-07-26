"""Remove test column

Revision ID: e74d59615231
Revises: 316196275e53
Create Date: 2024-07-24 22:47:33.074831

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'e74d59615231'
down_revision = '316196275e53'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('show_table', schema=None) as batch_op:
        batch_op.drop_column('test_column')

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('show_table', schema=None) as batch_op:
        batch_op.add_column(sa.Column('test_column', sa.VARCHAR(length=10), autoincrement=False, nullable=True))

    # ### end Alembic commands ###