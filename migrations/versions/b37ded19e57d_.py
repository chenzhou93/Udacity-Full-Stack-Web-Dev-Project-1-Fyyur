"""empty message

Revision ID: b37ded19e57d
Revises: 3736c311b078
Create Date: 2024-06-12 19:01:57.251897

"""
from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision = 'b37ded19e57d'
down_revision = '3736c311b078'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('Venue', schema=None) as batch_op:
        batch_op.add_column(sa.Column('website', sa.String(length=500), nullable=True))
        batch_op.drop_column('website_link')

    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    with op.batch_alter_table('Venue', schema=None) as batch_op:
        batch_op.add_column(sa.Column('website_link', sa.VARCHAR(length=500), autoincrement=False, nullable=True))
        batch_op.drop_column('website')

    # ### end Alembic commands ###
