DELETE FROM account
WHERE user_id = 3
RETURNING username
