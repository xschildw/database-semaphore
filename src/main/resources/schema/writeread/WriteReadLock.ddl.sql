CREATE TABLE IF NOT EXISTS `WRITE_READ_LOCK` (
    `LOCK_KEY` varchar(256)CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
    `TOKEN` varchar(256)CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
    `EXPIRES_ON` TIMESTAMP NOT NULL,
    PRIMARY KEY (`TOKEN`),
    CONSTRAINT `SEM_WRITE_READ_M_FK` FOREIGN KEY (`LOCK_KEY`)
        REFERENCES `WRITE_READ_MASTER` (`LOCK_KEY`)
        ON DELETE CASCADE
);