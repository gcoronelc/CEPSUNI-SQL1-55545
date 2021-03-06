
CREATE FUNCTION dbo.isValidEmailFormat
(
    @Email varchar(150)
)
RETURNS bit
AS
BEGIN
    DECLARE @pattern varchar(4000)
    SET @pattern = '[a-zA-Z0-9_\-]+@([a-zA-Z0-9_\-]+\.)+(com|org|edu|nz|au)'
    DECLARE @Result bit

    DECLARE @objRegexExp INT
    EXEC sp_OACreate 'VBScript.RegExp', @objRegexExp OUT

    EXEC sp_OASetProperty @objRegexExp, 'Pattern', @pattern
    EXEC sp_OASetProperty @objRegexExp, 'IgnoreCase', 1
    EXEC sp_OASetProperty @objRegexExp, 'MultiLine', 0
    EXEC sp_OASetProperty @objRegexExp, 'Global', false
    EXEC sp_OASetProperty @objRegexExp, 'CultureInvariant', true

    EXEC sp_OAMethod @objRegexExp, 'Test', @Result OUT, @Email

    EXEC sp_OADestroy @objRegexExp

    RETURN @Result
END;
GO


select dbo.isValidEmailFormat('egcc.uni@gmail.com');
go


