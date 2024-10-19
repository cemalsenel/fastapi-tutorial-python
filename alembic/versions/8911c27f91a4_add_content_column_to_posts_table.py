"""add content column to posts table

Revision ID: 8911c27f91a4
Revises: 4ccc1492a140
Create Date: 2024-10-19 09:44:08.291122

"""
from typing import Sequence, Union

from alembic import op
import sqlalchemy as sa


# revision identifiers, used by Alembic.
revision: str = '8911c27f91a4'
down_revision: Union[str, None] = '4ccc1492a140'
branch_labels: Union[str, Sequence[str], None] = None
depends_on: Union[str, Sequence[str], None] = None


def upgrade() -> None:
    op.add_column("posts", sa.Column('content', sa.String(), nullable=False))
    pass


def downgrade() -> None:
    op.drop_column("posts", 'content')
    pass
