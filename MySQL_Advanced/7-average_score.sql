-- Write a SQL script that creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student.

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN p_user_id INT
)
BEGIN
    DECLARE v_avg FLOAT;

    -- Compute the average score for this user
    SELECT AVG(score)
      INTO v_avg
      FROM corrections
     WHERE user_id = p_user_id;

    -- Update the users table
    UPDATE users
       SET average_score = v_avg
     WHERE id = p_user_id;
END;
//
DELIMITER ;
