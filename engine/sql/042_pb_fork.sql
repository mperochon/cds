-- +migrate Up
ALTER TABLE pipeline_build ADD COLUMN vcs_remote_url TEXT DEFAULT '';
ALTER TABLE pipeline_build ADD COLUMN vcs_remote TEXT DEFAULT '';

-- +migrate Down
ALTER TABLE pipeline_build DROP COLUMN vcs_remote_url;
ALTER TABLE pipeline_build DROP COLUMN vcs_remote;
